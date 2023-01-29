unit utransaksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls;

type
  TtransaksiForm = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    etkamar: TEdit;
    etpengunjung: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    etfilter: TEdit;
    Button9: TButton;
    Button10: TButton;
    etidtransaksi: TEdit;
    checkindate: TDateTimePicker;
    checkoutdate: TDateTimePicker;
    adokamar: TADOTable;
    adokamarid_kamar: TWideStringField;
    adokamarjenis_kamar: TWideStringField;
    adokamarharga_kamar: TIntegerField;
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  transaksiForm: TtransaksiForm;

implementation

{$R *.dfm}

uses udashboard, upengunjung, ukamar;

procedure TtransaksiForm.Button10Click(Sender: TObject);
begin
  Adotable1.Filtered := False;
end;

procedure TtransaksiForm.Button1Click(Sender: TObject);
begin
  dashboardForm.Show;
 Hide;
end;

procedure TtransaksiForm.Button2Click(Sender: TObject);
var
  harga_kamar, hari, subtotal : integer;

begin
  if adokamar.Locate('id_kamar',etkamar.Text,[])=true then
    begin
      with adokamar do
      begin
        harga_kamar:= fieldbyname('harga_kamar').asInteger;
        etpengunjung.Text := fieldbyname('harga_kamar').asString;
      end;
    end else
        showmessage('data kamar tidak ditemukan....');

  hari := Trunc(CheckOutDate.Date - CheckInDate.Date);

  subtotal := hari * harga_kamar;

//  etfilter.Text:=(inttostr(hari) + '_' +  inttostr(subtotal));

  with adotable1 do
  begin
    insert;
      fieldbyname('id_transaksi').AsString:= etidtransaksi.Text;
      fieldbyname('id_kamar').AsString:= etkamar.Text;
      fieldbyname('id_pengunjung').AsString:= etpengunjung.Text;
      fieldbyname('tgl_check_in').AsDateTime:= CheckInDate.Date;
      fieldbyname('tgl_check_out').AsDateTime:= CheckOutDate.Date;
      fieldbyname('harga').AsString:= inttostr(harga_kamar);
      fieldbyname('hari').AsString:= inttostr(hari);
      fieldbyname('subtotal').AsString:= inttostr(subtotal);
    post;
  end;



end;

procedure TtransaksiForm.Button4Click(Sender: TObject);
begin
  if(application.MessageBox('Yakin data akan dihapus?','Konfirmasi',MB_YesNo)=ID_Yes) then
    begin
      adotable1.Delete;
    end;
end;

procedure TtransaksiForm.Button6Click(Sender: TObject);
begin
  pengunjungForm.Show;
  Hide;
end;

procedure TtransaksiForm.Button7Click(Sender: TObject);
begin
Application.terminate;
end;

procedure TtransaksiForm.Button8Click(Sender: TObject);
begin
  kamarForm.Show;
  transaksiForm.close;
end;

procedure TtransaksiForm.Button9Click(Sender: TObject);
begin
  Adotable1.Filtered := False;
  Adotable1.Filter :='id_kamar = ' + QuotedStr(etfilter.Text);
  Adotable1.Filtered := True;
end;

end.
