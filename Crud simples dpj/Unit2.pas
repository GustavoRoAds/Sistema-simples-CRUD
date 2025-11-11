unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfNovo = class(TForm)
    edtNome: TEdit;
    edtIdade: TEdit;
    edtEmail: TEdit;
    btnSalvar: TButton;
    oQry: TFDQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNovo: TfNovo;

implementation

{$R *.dfm}

uses Unit1;

procedure TfNovo.btnSalvarClick(Sender: TObject);
begin
  if edtNome.Text = '' then
  begin
    ShowMessage('O Nome é obrigatorio!');
    exit;
  end;

  Form1.oCon.Connected := true;

  oQry.Close;
  oQry.SQL.Clear;
  oQry.SQL.Add(' INSERT INTO clientes (nome, idade, email) ');
  oQry.SQL.Add(' VALUES (:nome, :idade, :email) ');
  oQry.ParamByName('nome').AsString := edtNome.Text;
  oQry.ParamByName('idade').AsString := edtIdade.Text;
  oQry.ParamByName('email').AsString := edtEmail.Text;
  oQry.ExecSQL;

  ShowMessage('Cadastrado com Sucesso');
  close;
end;

end.
