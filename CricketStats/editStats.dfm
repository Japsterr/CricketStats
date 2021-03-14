object frmEditStats: TfrmEditStats
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Edit Stats - Cricket Stats'
  ClientHeight = 726
  ClientWidth = 282
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
    Left = 32
    Top = 21
    Width = 121
    Height = 18
    Caption = 'Name and Surname'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 61
    Width = 217
    Height = 313
    Caption = 'Batting Stats'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 97
      Height = 18
      Caption = 'Matches Played'
    end
    object Label3: TLabel
      Left = 16
      Top = 74
      Width = 68
      Height = 18
      Caption = 'Innings Bat'
    end
    object Label4: TLabel
      Left = 16
      Top = 109
      Width = 75
      Height = 18
      Caption = 'Runs Scored'
    end
    object Label5: TLabel
      Left = 16
      Top = 144
      Width = 68
      Height = 18
      Caption = 'Balls Faced'
    end
    object Label6: TLabel
      Left = 16
      Top = 178
      Width = 60
      Height = 18
      Caption = 'No of 50'#39's'
    end
    object Label7: TLabel
      Left = 16
      Top = 213
      Width = 67
      Height = 18
      Caption = 'No of 100'#39's'
    end
    object Label8: TLabel
      Left = 16
      Top = 248
      Width = 84
      Height = 18
      Caption = 'Highest Score'
    end
    object edtMatchesPlayed: TEdit
      Left = 141
      Top = 37
      Width = 60
      Height = 26
      TabOrder = 0
    end
    object edtInningsBat: TEdit
      Left = 141
      Top = 71
      Width = 60
      Height = 26
      TabOrder = 1
    end
    object edtRunsScored: TEdit
      Left = 141
      Top = 106
      Width = 60
      Height = 26
      TabOrder = 2
    end
    object edtBallsFaced: TEdit
      Left = 141
      Top = 141
      Width = 60
      Height = 26
      TabOrder = 3
    end
    object edtFifties: TEdit
      Left = 141
      Top = 175
      Width = 60
      Height = 26
      TabOrder = 4
    end
    object edtHundreds: TEdit
      Left = 141
      Top = 210
      Width = 60
      Height = 26
      TabOrder = 5
    end
    object edtHighestScore: TEdit
      Left = 141
      Top = 245
      Width = 60
      Height = 26
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 393
    Width = 217
    Height = 249
    Caption = 'Bowling Stats'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 24
      Top = 32
      Width = 86
      Height = 18
      Caption = 'Overs Bowled'
    end
    object Label10: TLabel
      Left = 24
      Top = 68
      Width = 39
      Height = 18
      Caption = 'Wides'
    end
    object Label11: TLabel
      Left = 24
      Top = 104
      Width = 50
      Height = 18
      Caption = 'No Balls'
    end
    object Label12: TLabel
      Left = 24
      Top = 140
      Width = 95
      Height = 18
      Caption = 'Runs Conceded'
    end
    object Label13: TLabel
      Left = 24
      Top = 176
      Width = 49
      Height = 18
      Caption = 'Wickets'
    end
    object Label14: TLabel
      Left = 24
      Top = 214
      Width = 61
      Height = 18
      Caption = 'Best Bowl'
    end
    object edtOversBowled: TEdit
      Left = 141
      Top = 29
      Width = 60
      Height = 26
      TabOrder = 0
    end
    object edtWides: TEdit
      Left = 141
      Top = 65
      Width = 60
      Height = 26
      TabOrder = 1
    end
    object edtNoBalls: TEdit
      Left = 141
      Top = 101
      Width = 60
      Height = 26
      TabOrder = 2
    end
    object edtRunsConceded: TEdit
      Left = 141
      Top = 137
      Width = 60
      Height = 26
      TabOrder = 3
    end
    object edtWickets: TEdit
      Left = 141
      Top = 173
      Width = 60
      Height = 26
      TabOrder = 4
    end
    object edtBestBowl: TEdit
      Left = 141
      Top = 211
      Width = 60
      Height = 26
      TabOrder = 5
    end
  end
  object Button1: TButton
    Left = 32
    Top = 662
    Width = 75
    Height = 41
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 174
    Top = 662
    Width = 75
    Height = 41
    Caption = 'Cancel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
