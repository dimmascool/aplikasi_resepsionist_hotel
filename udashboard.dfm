object dashboardForm: TdashboardForm
  Left = 0
  Top = 0
  Caption = 'Dashboard'
  ClientHeight = 377
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 32
    Top = 56
    Width = 169
    Height = 105
    Caption = 'Kamar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 56
    Width = 169
    Height = 105
    Caption = 'Transaksi'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 216
    Width = 169
    Height = 105
    Caption = 'Pengunjung'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 216
    Width = 169
    Height = 105
    Caption = 'Logout'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button7: TButton
    Left = 369
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = Button7Click
  end
end
