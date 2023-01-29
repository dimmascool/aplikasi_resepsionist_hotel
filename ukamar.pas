unit ukamar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls;

type
  TkamarForm = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1id_kamar: TWideStringField;
    ADOTable1jenis_kamar: TWideStringField;
    ADOTable1harga_kamar: TIntegerField;
    Button1: TButton;
    edit1: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ComboBox1: TComboBox;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kamarForm: TkamarForm;

implementation

{$R *.dfm}

uses udashboard, utransaksi;

procedure TkamarForm.Button1Click(Sender: TObject);
begin
 dashboardForm.Show;
 kamarForm.Close;
end;

procedure TkamarForm.Button2Click(Sender: TObject);
begin
 with adotable1 do
  begin
    insert;
    fieldbyname('id_kamar').AsString:= edit1.Text;
    fieldbyname('jenis_kamar').AsString:= combobox1.Text;
    fieldbyname('harga_kamar').AsString:= edit3.Text;
    post;
  end;
end;

procedure TkamarForm.Button3Click(Sender: TObject);
begin
with adotable1 do
  begin
    edit;
    fieldbyname('id_kamar').AsString:= edit1.Text;
    fieldbyname('jenis_kamar').AsString:= combobox1.Text;
    fieldbyname('harga_kamar').AsString:= edit3.Text;
    post;
  end;
end;

procedure TkamarForm.Button4Click(Sender: TObject);
begin
if(application.MessageBox('Yakin data akan dihapus?','Konfirmasi',MB_YesNo)=ID_Yes) then
    begin
      adotable1.Delete;
    end;
end;

procedure TkamarForm.Button5Click(Sender: TObject);
begin
if adotable1.Locate('id_kamar',edit1.Text,[])=true then
  begin
    with adotable1 do
    begin
      combobox1.Text:= fieldbyname('jenis_kamar').AsString;
      edit3.Text:= fieldbyname('harga_kamar').AsString;
    end;
  end else
      showmessage('data tidak ditemukan....');
end;

procedure TkamarForm.Button6Click(Sender: TObject);
begin
  transaksiForm.etkamar.Text:= edit1.Text;
  transaksiForm.Show;
  kamarForm.Close;
end;

procedure TkamarForm.Button7Click(Sender: TObject);
begin
Application.terminate;
end;

end.
