object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 488
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 53
    Width = 377
    Height = 428
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button2: TButton
    Left = 111
    Top = 22
    Width = 274
    Height = 25
    Caption = 'Find Prime Numbers...'
    TabOrder = 1
    OnClick = Button2Click
  end
  object lblSecondsToFreeze: TLabeledEdit
    Left = 8
    Top = 26
    Width = 97
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = 'Analyze Numbers:'
    TabOrder = 2
    Text = '3000000'
  end
end
