unit udashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TdashboardForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button7: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dashboardForm: TdashboardForm;

implementation

{$R *.dfm}

uses ulogin, ukamar, upengunjung, utransaksi;

procedure TdashboardForm.Button1Click(Sender: TObject);
begin
 kamarForm.Show;
 dashboardForm.Close;
end;

procedure TdashboardForm.Button2Click(Sender: TObject);
begin
 transaksiForm.Show;
 dashboardForm.Close;
end;

procedure TdashboardForm.Button3Click(Sender: TObject);
begin
 pengunjungForm.Show;
 dashboardForm.Close;
end;

procedure TdashboardForm.Button4Click(Sender: TObject);
begin
 loginForm.Show;
 dashboardForm.Close;
end;

procedure TdashboardForm.Button7Click(Sender: TObject);
begin
Application.terminate;
end;

end.
