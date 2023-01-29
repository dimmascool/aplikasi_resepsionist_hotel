object kamarForm: TkamarForm
  Left = 0
  Top = 0
  Caption = 'Kamar'
  ClientHeight = 368
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 184
    Top = 24
    Width = 124
    Height = 50
    Caption = 'KAMAR'
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
    Width = 354
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
  object edit1: TEdit
    Left = 8
    Top = 144
    Width = 217
    Height = 23
    TabOrder = 2
    Text = 'ID kamar'
  end
  object Edit3: TEdit
    Left = 8
    Top = 224
    Width = 217
    Height = 23
    TabOrder = 3
    Text = 'Harga per malam'
  end
  object Button2: TButton
    Left = 8
    Top = 264
    Width = 105
    Height = 25
    Caption = 'Tambah'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 119
    Top = 264
    Width = 106
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 295
    Width = 105
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 119
    Top = 295
    Width = 106
    Height = 25
    Caption = 'Get'
    TabOrder = 7
    OnClick = Button5Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 184
    Width = 217
    Height = 23
    TabOrder = 8
    Text = 'Jenis kamar'
    Items.Strings = (
      'Suite'
      'Family'
      'Regular'
      'Single')
  end
  object Button6: TButton
    Left = 71
    Top = 326
    Width = 106
    Height = 25
    Caption = 'Select'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 488
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Exit'
    TabOrder = 10
    OnClick = Button7Click
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
    TableName = 'kamar'
    Left = 264
    Top = 88
    object ADOTable1id_kamar: TWideStringField
      FieldName = 'id_kamar'
      Size = 15
    end
    object ADOTable1jenis_kamar: TWideStringField
      DisplayWidth = 15
      FieldName = 'jenis_kamar'
      Size = 10
    end
    object ADOTable1harga_kamar: TIntegerField
      DisplayWidth = 20
      FieldName = 'harga_kamar'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 420
    Top = 88
  end
end
