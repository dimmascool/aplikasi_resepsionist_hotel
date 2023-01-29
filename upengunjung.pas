unit upengunjung;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TpengunjungForm = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
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
    ADOTable1id_pengunjung: TWideStringField;
    ADOTable1nama_lengkap: TWideStringField;
    ADOTable1jenis_kelamin: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pengunjungForm: TpengunjungForm;

implementation

{$R *.dfm}

uses udashboard, utransaksi;

procedure TpengunjungForm.Button1Click(Sender: TObject);
begin
 dashboardForm.Show;
 pengunjungForm.close;

end;

procedure TpengunjungForm.Button2Click(Sender: TObject);
begin
with adotable1 do
  begin
    insert;
    fieldbyname('id_pengunjung').AsString:= edit1.Text;
    fieldbyname('jenis_kelamin').AsString:= combobox1.Text;
    fieldbyname('nama_lengkap').AsString:= edit3.Text;
    post;
  end;
end;

procedure TpengunjungForm.Button3Click(Sender: TObject);
begin
with adotable1 do
  begin
    edit;
    fieldbyname('id_pengunjung').AsString:= edit1.Text;
    fieldbyname('nama_lengkap').AsString:= edit3.Text;
    fieldbyname('jenis_kelamin').AsString:= combobox1.Text;
    post;
  end;
end;

procedure TpengunjungForm.Button4Click(Sender: TObject);
begin
if(application.MessageBox('Yakin data akan dihapus?','Konfirmasi',MB_YesNo)=ID_Yes) then
    begin
      adotable1.Delete;
    end;
end;

procedure TpengunjungForm.Button5Click(Sender: TObject);
begin
if adotable1.Locate('id_pengunjung',edit1.Text,[])=true then
  begin
    with adotable1 do
    begin
      combobox1.Text:= fieldbyname('jenis_kelamin').AsString;
      edit3.Text:= fieldbyname('nama_lengkap').AsString;
    end;
  end else
      showmessage('data tidak ditemukan....');
end;

procedure TpengunjungForm.Button6Click(Sender: TObject);
begin
  transaksiForm.etkamar.Text:= edit1.Text;
  transaksiForm.Show;
  pengunjungForm.Close;
end;

procedure TpengunjungForm.Button7Click(Sender: TObject);
begin
Application.terminate;
end;

end.
