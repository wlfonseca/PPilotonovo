object FrmCadastroProdutos: TFrmCadastroProdutos
  Left = 0
  Top = 0
  Caption = 'FrmCadastroProdutos'
  ClientHeight = 355
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFooter: TPanel
    Left = 0
    Top = 314
    Width = 657
    Height = 41
    Align = alBottom
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Button1: TButton
      Left = 414
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 0
    end
    object BtnGravar: TButton
      Left = 510
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = BtnGravarClick
    end
  end
  object EdtNome: TLabeledEdit
    Left = 72
    Top = 80
    Width = 393
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    TabOrder = 1
  end
  object EdtCodigo: TLabeledEdit
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo'
    TabOrder = 2
  end
  object EdtDescricao: TLabeledEdit
    Left = 72
    Top = 128
    Width = 489
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Descri'#231#227'o'
    TabOrder = 3
  end
  object EdtValorUnitario: TLabeledEdit
    Left = 72
    Top = 174
    Width = 121
    Height = 21
    EditLabel.Width = 64
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor Unit'#225'rio'
    TabOrder = 4
  end
end
