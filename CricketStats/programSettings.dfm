object frmProgramSettings: TfrmProgramSettings
  Left = 0
  Top = 0
  Caption = 'Program Settings  - Cricket Stats'
  ClientHeight = 224
  ClientWidth = 452
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
  object btnTeam: TButton
    Left = 40
    Top = 35
    Width = 100
    Height = 41
    Caption = 'Teams'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnTeamClick
  end
  object gbTeam: TGroupBox
    Left = 174
    Top = 19
    Width = 241
    Height = 105
    Caption = 'Enter Team Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object edtTeam: TEdit
      Left = 16
      Top = 23
      Width = 209
      Height = 26
      TabOrder = 0
    end
    object btnTeamSave: TButton
      Left = 16
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
      OnClick = btnTeamSaveClick
    end
    object Button2: TButton
      Left = 152
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Button1: TButton
    Left = 40
    Top = 99
    Width = 100
    Height = 41
    Caption = 'Close'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
