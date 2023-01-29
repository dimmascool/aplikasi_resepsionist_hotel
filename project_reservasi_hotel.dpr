program project_reservasi_hotel;

uses
  Vcl.Forms,
  ulogin in 'ulogin.pas' {loginForm},
  udashboard in 'udashboard.pas' {dashboardForm},
  ukamar in 'ukamar.pas' {kamarForm},
  upengunjung in 'upengunjung.pas' {pengunjungForm},
  utransaksi in 'utransaksi.pas' {transaksiForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TloginForm, loginForm);
  Application.CreateForm(TdashboardForm, dashboardForm);
  Application.CreateForm(TdashboardForm, dashboardForm);
  Application.CreateForm(TkamarForm, kamarForm);
  Application.CreateForm(TpengunjungForm, pengunjungForm);
  Application.CreateForm(TtransaksiForm, transaksiForm);
  Application.Run;
end.
