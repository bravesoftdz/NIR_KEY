unit Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TMainView = class(TForm)
  {$REGION '  Comp ..'}
    Edt_Year: TEdit;
    Edt_Sexe: TEdit;
    Lbl_1: TLabel;
    Lbl_2: TLabel;
    Edt_Month: TEdit;
    Lbl_3: TLabel;
    Edt_Department: TEdit;
    Lbl_4: TLabel;
    Edt_Comm: TEdit;
    Edt_Order: TEdit;
    Lbl_5: TLabel;
    Lbl_6: TLabel;
    Lbl_NIR_KEY: TLabel;
    Lbl_8: TLabel;
    Lbl_7: TLabel;
    Img_Description: TImage;
  {$ENDREGION}
    procedure Edt_SSN_Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fSSN: Int64;
    { Private declarations }
    function GetKey: Byte;
  public
    { Public declarations }
  end;

//var
//  MainView: TMainView;

implementation

{$R *.dfm}

uses
  API.KEYS;

var
  NIR_Calc : TNirKey;

function TMainView.GetKey: Byte;
begin
  Int64.TryParse((Edt_Sexe.Text)+(Edt_Year.Text)+
                         (Edt_Month.Text)+(Edt_Department.Text)+
                         (Edt_Comm.Text)+(Edt_Order.Text), fSSN);

  Result := NIR_Calc.Get_NIR_KEY(fSSN);

end;

procedure TMainView.FormCreate(Sender: TObject);
begin
  Lbl_NIR_KEY.Caption := GetKey.ToString;
end;

procedure TMainView.Edt_SSN_Change(Sender: TObject);
begin
  Lbl_NIR_KEY.Caption := GetKey.ToString;
end;

end.
