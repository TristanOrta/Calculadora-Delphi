object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 277
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object EdtOper1: TLabeledEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = 'Operador uno'
    ImeName = 'Latin American'
    TabOrder = 0
  end
  object EdtOper2: TLabeledEdit
    Left = 168
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = 'Operador dos'
    ImeName = 'Latin American'
    TabOrder = 1
  end
  object BtnSumar: TButton
    Left = 104
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Sumar'
    TabOrder = 2
    OnClick = BtnSumarClick
  end
  object BtnRestar: TButton
    Left = 185
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Restar'
    TabOrder = 3
  end
  object LbtResultado: TLabeledEdit
    Left = 336
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Resultado'
    TabOrder = 4
  end
  object BtnMultiplicar: TButton
    Left = 104
    Top = 125
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 5
    OnClick = BtnMultiplicarClick
  end
  object BtnDividir: TButton
    Left = 185
    Top = 125
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 6
    OnClick = BtnDividirClick
  end
  object BtnSumarDouble: TButton
    Left = 266
    Top = 94
    Width = 135
    Height = 25
    Caption = 'Sumar Double'
    TabOrder = 7
    OnClick = BtnSumarDoubleClick
  end
  object BtnMultiplicarDouble: TButton
    Left = 266
    Top = 125
    Width = 135
    Height = 25
    Caption = 'Multiplicar Dpuble static'
    TabOrder = 8
    OnClick = BtnMultiplicarDoubleClick
  end
  object BtnHelperJson: TBitBtn
    Left = 8
    Top = 224
    Width = 442
    Height = 25
    Caption = 'HelperJson'
    TabOrder = 9
    OnClick = BtnHelperJsonClick
  end
end
