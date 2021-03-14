object frmUpdate11: TfrmUpdate11
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Update Player'
  ClientHeight = 390
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 18
    Width = 75
    Height = 18
    Caption = 'Runs Scored'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 62
    Top = 87
    Width = 49
    Height = 18
    Caption = 'Not Out'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 23
    Top = 126
    Width = 88
    Height = 18
    Caption = 'Wickets Taken'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 25
    Top = 167
    Width = 86
    Height = 18
    Caption = 'Overs Bowled'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 43
    Top = 54
    Width = 68
    Height = 18
    Caption = 'Balls Faced'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 61
    Top = 245
    Width = 50
    Height = 18
    Caption = 'No Balls'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 72
    Top = 207
    Width = 39
    Height = 18
    Caption = 'Wides'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 285
    Width = 95
    Height = 18
    Caption = 'Runs Conceded'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 120
    Top = 18
    Width = 50
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object RadioButton1: TRadioButton
    Left = 120
    Top = 89
    Width = 35
    Height = 17
    Caption = 'No'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 176
    Top = 89
    Width = 40
    Height = 17
    Caption = 'Yes'
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 120
    Top = 126
    Width = 50
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edit3: TEdit
    Left = 120
    Top = 167
    Width = 50
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object Button1: TButton
    Left = 23
    Top = 328
    Width = 75
    Height = 41
    Caption = 'Update'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 141
    Top = 328
    Width = 75
    Height = 41
    Caption = 'Cancel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 120
    Top = 54
    Width = 50
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Edit5: TEdit
    Left = 120
    Top = 207
    Width = 50
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object Edit6: TEdit
    Left = 120
    Top = 245
    Width = 50
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object Edit7: TEdit
    Left = 120
    Top = 285
    Width = 50
    Height = 21
    TabOrder = 10
    Text = '0'
  end
end
