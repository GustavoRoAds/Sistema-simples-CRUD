object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CRUD'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 624
    Height = 384
    Align = alClient
    BorderStyle = bsNone
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 130
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'idade'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 229
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Pesquisa: TLabel
      Left = 16
      Top = 17
      Width = 46
      Height = 15
      Caption = 'Pesquisa'
    end
    object edtPesquisa: TEdit
      Left = 80
      Top = 14
      Width = 153
      Height = 23
      TabOrder = 0
    end
    object btnListar: TButton
      Left = 248
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = btnListarClick
    end
    object btnNovo: TButton
      Left = 376
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
      OnClick = btnNovoClick
    end
    object btnEdit: TButton
      Left = 457
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 3
      OnClick = btnEditClick
    end
    object btnDeletar: TButton
      Left = 538
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 4
      OnClick = btnDeletarClick
    end
  end
  object oQry: TFDQuery
    Active = True
    Connection = oCon
    SQL.Strings = (
      'select * from clientes'
      '')
    Left = 464
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = oQry
    Left = 416
    Top = 192
  end
  object oCon: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'Database=C:\Crud simples BD\crud.db'
      'DriverID=SQLite')
    Connected = True
    Left = 419
    Top = 136
  end
end
