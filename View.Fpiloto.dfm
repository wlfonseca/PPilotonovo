object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 346
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 41
    Align = alTop
    Caption = 'Controle de Items'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Button4: TButton
    Left = 392
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Novo Servi'#231'o'
    TabOrder = 1
  end
  object BtnPesquisa: TButton
    Left = 510
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = BtnPesquisaClick
  end
  object lbledtPesquisar: TLabeledEdit
    Left = 112
    Top = 94
    Width = 290
    Height = 21
    EditLabel.Width = 103
    EditLabel.Height = 13
    EditLabel.Caption = 'Pesquisa de Produtos'
    TabOrder = 3
  end
  object pnlFoot: TPanel
    Left = 0
    Top = 305
    Width = 711
    Height = 41
    Align = alBottom
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = 480
    ExplicitTop = 320
    ExplicitWidth = 185
    object Button3: TButton
      Left = 191
      Top = 4
      Width = 90
      Height = 33
      Caption = 'Novo Produto'
      TabOrder = 0
      OnClick = Button3Click
    end
    object BtnEdit: TButton
      Left = 305
      Top = 4
      Width = 97
      Height = 33
      Caption = 'Editar'
      TabOrder = 1
    end
    object BtnExcluir: TButton
      Left = 424
      Top = 4
      Width = 97
      Height = 33
      Caption = 'Excluir'
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 123
    Width = 473
    Height = 145
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbbFiltro: TComboBox
    Left = 424
    Top = 96
    Width = 73
    Height = 21
    TabOrder = 6
    Text = 'cbbFiltro'
    Items.Strings = (
      ''
      'codigo'
      'nome'
      'descricao'
      'valorunitario')
  end
  object DataSource1: TDataSource
    DataSet = DmItem.ZqPesquisar
    Left = 648
    Top = 72
  end
end
