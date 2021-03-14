object frmPlayerRegistration: TfrmPlayerRegistration
  Left = 0
  Top = 0
  Caption = 'Player Registration - Cricket Stats'
  ClientHeight = 653
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 24
    Width = 194
    Height = 23
    Caption = 'Enter Player Information'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 58
    Top = 70
    Width = 33
    Height = 15
    Caption = 'Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 42
    Top = 112
    Width = 49
    Height = 15
    Caption = 'Surname'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 34
    Top = 156
    Width = 57
    Height = 15
    Caption = 'Telephone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gbDivisionOne: TGroupBox
    Left = 42
    Top = 195
    Width = 337
    Height = 106
    Caption = 'Division Details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 42
      Height = 15
      Caption = 'Division'
    end
    object Label5: TLabel
      Left = 16
      Top = 62
      Width = 29
      Height = 15
      Caption = 'Team'
    end
    object cbDivisionOne: TComboBox
      Left = 104
      Top = 29
      Width = 145
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Select Division'
      Items.Strings = (
        'Select Division'
        'Alberton Junior Club'
        'ACC - Alberton Cricket Club'
        '')
    end
    object cbTeamOne: TComboBox
      Left = 104
      Top = 59
      Width = 145
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Select Team'
      Items.Strings = (
        'Select Team')
    end
  end
  object gbDivisionTwo: TGroupBox
    Left = 42
    Top = 323
    Width = 337
    Height = 97
    Caption = 'Division Details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label7: TLabel
      Left = 32
      Top = 26
      Width = 42
      Height = 15
      Caption = 'Division'
    end
    object Label8: TLabel
      Left = 32
      Top = 56
      Width = 29
      Height = 15
      Caption = 'Team'
    end
    object cbDivisionTwo: TComboBox
      Left = 104
      Top = 23
      Width = 145
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Select Division'
      Items.Strings = (
        'Select Division'
        'Alberton Junior Club'
        'ACC - Alberton Cricket Club'
        '')
    end
    object cbTeamTwo: TComboBox
      Left = 104
      Top = 53
      Width = 145
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Select Team'
      Items.Strings = (
        'Select Team')
    end
  end
  object edtSurname: TEdit
    Left = 97
    Top = 110
    Width = 200
    Height = 21
    TabOrder = 1
  end
  object edtName: TEdit
    Left = 97
    Top = 68
    Width = 200
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 41
    Top = 583
    Width = 75
    Height = 41
    Caption = 'Register'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 583
    Width = 75
    Height = 41
    Caption = 'Cancel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object edtTelephone: TEdit
    Left = 97
    Top = 154
    Width = 121
    Height = 21
    MaxLength = 12
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 42
    Top = 448
    Width = 337
    Height = 97
    Caption = 'Division Details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label9: TLabel
      Left = 32
      Top = 30
      Width = 42
      Height = 15
      Caption = 'Division'
    end
    object Label10: TLabel
      Left = 32
      Top = 62
      Width = 29
      Height = 15
      Caption = 'Team'
    end
    object cbDivisionThree: TComboBox
      Left = 104
      Top = 27
      Width = 145
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Select Division'
      Items.Strings = (
        'Select Division'
        'Alberton Junior Club'
        'ACC - Alberton Cricket Club')
    end
    object cbTeamThree: TComboBox
      Left = 102
      Top = 59
      Width = 145
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'Select Team'
      Items.Strings = (
        'Select Team')
    end
  end
end
