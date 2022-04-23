object fCalculaValor: TfCalculaValor
  Left = 0
  Top = 0
  Caption = 'Calcula Valores'
  ClientHeight = 359
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -23
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 28
  object lblValor1: TLabel
    Left = 240
    Top = 56
    Width = 63
    Height = 24
    Caption = 'Valor 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblValor2: TLabel
    Left = 341
    Top = 56
    Width = 63
    Height = 24
    Caption = 'Valor 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 312
    Top = 130
    Width = 17
    Height = 28
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblResult: TLabel
    Left = 304
    Top = 160
    Width = 46
    Height = 28
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblOp: TLabel
    Left = 312
    Top = 86
    Width = 23
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtValor1: TEdit
    Left = 240
    Top = 86
    Width = 63
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0,00'
    OnKeyDown = edtValor1KeyDown
  end
  object edtValor2: TEdit
    Left = 344
    Top = 86
    Width = 63
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '0,00'
    OnKeyDown = edtValor2KeyDown
  end
  object btnMais: TButton
    Left = 80
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Adi'#231#227'o - F4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnMaisClick
  end
  object btnMenos: TButton
    Left = 216
    Top = 248
    Width = 119
    Height = 25
    Caption = 'Subtra'#231#227'o - F5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnMenosClick
  end
  object btnMultiplica: TButton
    Left = 360
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Multiplicar - F6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnMultiplicaClick
  end
  object btnDivide: TButton
    Left = 496
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Divis'#227'o - F7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnDivideClick
  end
  object btnPorcento: TButton
    Left = 80
    Top = 295
    Width = 119
    Height = 25
    Caption = 'Porcentagem - F8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnPorcentoClick
  end
  object Memo1: TMemo
    Left = 480
    Top = 23
    Width = 185
    Height = 202
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    Visible = False
  end
  object btnHistorico: TButton
    Left = 496
    Top = 296
    Width = 121
    Height = 25
    Caption = 'Abrir/fechar historico - F10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnHistoricoClick
  end
  object btnLimpaHistórico: TButton
    Left = 360
    Top = 295
    Width = 121
    Height = 25
    Caption = 'Limpar Hist'#243'rico - F11'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btnLimpaHistóricoClick
  end
  object btnLucro: TButton
    Left = 216
    Top = 295
    Width = 121
    Height = 25
    Caption = 'Calcula % Lucro - F9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btnLucroClick
  end
end
