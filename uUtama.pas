unit uUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus;

type
  TfrmUtama = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    SettingDatabase1: TMenuItem;
    N1: TMenuItem;
    Login1: TMenuItem;
    LogOut1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Master1: TMenuItem;
    ransaction1: TMenuItem;
    Report1: TMenuItem;
    ools1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUtama: TfrmUtama;

implementation

{$R *.dfm}

end.
