object transaksiForm: TtransaksiForm
  Left = 0
  Top = 0
  Caption = 'transaksiForm'
  ClientHeight = 494
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 432
    Top = 8
    Width = 188
    Height = 50
    Caption = 'TRANSAKSI'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 247
    Top = 144
    Width = 666
    Height = 193
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = ' <- Back'
    TabOrder = 1
    OnClick = Button1Click
  end
  object etkamar: TEdit
    Left = 8
    Top = 176
    Width = 217
    Height = 23
    TabOrder = 2
    Text = 'Kamar'
  end
  object etpengunjung: TEdit
    Left = 8
    Top = 205
    Width = 217
    Height = 23
    TabOrder = 3
    Text = 'Pengunjung'
  end
  object Button2: TButton
    Left = 8
    Top = 296
    Width = 105
    Height = 25
    Caption = 'Tambah'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 8
    Top = 327
    Width = 105
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 119
    Top = 327
    Width = 106
    Height = 25
    Caption = 'Select pengunjung'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 816
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Exit'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 119
    Top = 296
    Width = 106
    Height = 25
    Caption = 'Select kamar'
    TabOrder = 8
    OnClick = Button8Click
  end
  object etfilter: TEdit
    Left = 247
    Top = 343
    Width = 154
    Height = 23
    TabOrder = 9
    Text = 'Filter by id_kamar'
  end
  object Button9: TButton
    Left = 407
    Top = 343
    Width = 106
    Height = 25
    Caption = 'Filter'
    TabOrder = 10
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 519
    Top = 343
    Width = 106
    Height = 25
    Caption = 'Reset'
    TabOrder = 11
    OnClick = Button10Click
  end
  object etidtransaksi: TEdit
    Left = 8
    Top = 147
    Width = 217
    Height = 23
    TabOrder = 12
    Text = 'ID transaksi'
  end
  object checkindate: TDateTimePicker
    Left = 8
    Top = 234
    Width = 217
    Height = 21
    Date = 44931.000000000000000000
    Time = 0.455060543979925600
    TabOrder = 13
  end
  object checkoutdate: TDateTimePicker
    Left = 8
    Top = 261
    Width = 217
    Height = 21
    Date = 44931.000000000000000000
    Time = 0.455060543979925600
    TabOrder = 14
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\dimas\Documents\Embarcadero\Studio\Projects\Project Big\hote' +
      'l.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB' +
      ':System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databas' +
      'e Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking' +
      ' Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bul' +
      'k Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cr' +
      'eate System Database=False;Jet OLEDB:Encrypt Database=False;Jet ' +
      'OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Witho' +
      'ut Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 344
    Top = 88
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'transaksi'
    Left = 264
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 420
    Top = 88
  end
  object adokamar: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'kamar'
    Left = 488
    Top = 88
    object adokamarid_kamar: TWideStringField
      FieldName = 'id_kamar'
      Size = 10
    end
    object adokamarjenis_kamar: TWideStringField
      FieldName = 'jenis_kamar'
      Size = 10
    end
    object adokamarharga_kamar: TIntegerField
      FieldName = 'harga_kamar'
    end
  end
end
