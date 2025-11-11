program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {fNovo},
  Unit3 in 'Unit3.pas' {fEditar},
  uBtnTeste in 'uBtnTeste.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfNovo, fNovo);
  Application.CreateForm(TfEditar, fEditar);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
