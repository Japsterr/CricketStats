object frmPlayerDelete: TfrmPlayerDelete
  Left = 0
  Top = 0
  Caption = 'Delete Player - Cricket Stats'
  ClientHeight = 592
  ClientWidth = 745
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
    Left = 24
    Top = 24
    Width = 170
    Height = 23
    Caption = 'Select Player to Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 64
    Width = 415
    Height = 497
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Names'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Surname'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telephone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 463
    Top = 64
    Width = 249
    Height = 225
    Caption = 'Current Teams'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblPlayer: TLabel
      Left = 24
      Top = 32
      Width = 79
      Height = 18
      Caption = 'Player Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTeamOne: TLabel
      Left = 24
      Top = 69
      Width = 75
      Height = 18
      Caption = 'lblTeamOne'
      Visible = False
    end
    object lblTeamTwo: TLabel
      Left = 24
      Top = 106
      Width = 74
      Height = 18
      Caption = 'lblTeamTwo'
      Visible = False
    end
    object lblTeamThree: TLabel
      Left = 24
      Top = 143
      Width = 85
      Height = 18
      Caption = 'lblTeamThree'
      Visible = False
    end
    object lblTeamFour: TLabel
      Left = 24
      Top = 181
      Width = 77
      Height = 18
      Caption = 'lblTeamFour'
      Visible = False
    end
  end
  object Button1: TButton
    Left = 463
    Top = 336
    Width = 249
    Height = 41
    Caption = 'Delete Player '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 511
    Top = 408
    Width = 161
    Height = 41
    Caption = 'Close'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = Database.qPlayers
    OnDataChange = DataSource1DataChange
    Left = 336
    Top = 16
  end
end
