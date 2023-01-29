object loginForm: TloginForm
  Left = 0
  Top = 0
  Caption = 'Login to continue'
  ClientHeight = 342
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 88
    Top = 92
    Width = 53
    Height = 15
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 88
    Top = 160
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 168
    Top = 36
    Width = 131
    Height = 21
    Caption = 'Login to continue'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object etUsername: TEdit
    Left = 88
    Top = 113
    Width = 287
    Height = 32
    BorderStyle = bsNone
    TabOrder = 0
  end
  object etPassword: TEdit
    Left = 88
    Top = 181
    Width = 287
    Height = 32
    BorderStyle = bsNone
    TabOrder = 1
  end
  object Button1: TButton
    Left = 300
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    WordWrap = True
    OnClick = Button1Click
  end
  object Button7: TButton
    Left = 181
    Top = 248
    Width = 97
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = Button7Click
  end
end
