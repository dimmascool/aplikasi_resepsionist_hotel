unit ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, udashboard, System.UITypes;

type
  TloginForm = class(TForm)
    etUsername: TEdit;
    etPassword: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loginForm: TloginForm;

implementation

{$R *.dfm}


procedure TloginForm.Button1Click(Sender: TObject);
  var
    inputusername, expectedusername : String;
    inputpassword, expectedpassword  : String;

begin

  expectedusername := 'admin';
  expectedpassword := 'password';

  inputusername := etUsername.Text;
  inputpassword := etPassword.Text;

  if (inputusername = expectedusername) AND (inputpassword = expectedpassword) then
    begin
         dashboardForm.show;
         Hide;
    end
  else
    begin
      MessageDlg('username atau password salah', mtWarning, [mbOK], 0);
    end;

end;

procedure TloginForm.Button7Click(Sender: TObject);
begin
Application.terminate;
end;

procedure TloginForm.FormCreate(Sender: TObject);
begin
etPassword.PasswordChar := '*';
end;

end.
