unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel20: TPanel;
    Label1: TLabel;
    Display: TLabel;
    AC: TPanel;
    Panel2: TPanel;
    procedure Panel14Click(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure Panel16Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel18Click(Sender: TObject);
    procedure Panel17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel20Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure ACClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
    Valor1, Valor2, ButtonVirgulaClick: Double;
    Operação: Char;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ACClick(Sender: TObject);
begin

   display.Caption := '0';
   Valor1 := 0;
   Valor2 := 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Valor1 := 0;
  Valor2 := 0;
end;

procedure TForm1.Panel10Click(Sender: TObject);
begin
if Display.Caption = '0' then
  Display.caption:= '4'
   else
   Display.Caption:=Display.Caption + '4';
end;

procedure TForm1.Panel11Click(Sender: TObject);
begin
  if Display.Caption = '0' then
  Display.caption:= '5'
   else
   Display.Caption:=Display.Caption + '5';
end;

procedure TForm1.Panel12Click(Sender: TObject);
begin
  if Display.Caption = '0' then
  Display.caption:= '6'
   else
   Display.Caption:=Display.Caption + '6';
end;

procedure TForm1.Panel13Click(Sender: TObject);
begin

   Operação := '-';

  if Valor1 = 0  then
   valor1:= Strtofloat(Display.Caption);

  Display.caption := '';
end;

procedure TForm1.Panel14Click(Sender: TObject);
begin
  if Display.Caption = '0' then
  Display.caption:= '1'
  else
   Display.Caption:=Display.Caption + '1';


end;

procedure TForm1.Panel15Click(Sender: TObject);
begin

  if Display.Caption = '0' then
  Display.caption:= '2'
   else
   Display.Caption:=Display.Caption + '2';
end;

procedure TForm1.Panel16Click(Sender: TObject);
begin
  if Display.Caption = '0' then
  Display.caption:= '3'
   else
   Display.Caption:=Display.Caption + '3';
end;

procedure TForm1.Panel17Click(Sender: TObject);
begin

  Operação := '+';

  if Valor1 = 0  then
   valor1:= Strtofloat(Display.Caption);

  Display.caption := '';
end;

procedure TForm1.Panel18Click(Sender: TObject);
begin
  if Display.Caption = '0' then
  Display.caption:= '0'
   else
   Display.Caption:=Display.Caption + '0';
end;


procedure TForm1.Panel20Click(Sender: TObject);
begin
  Valor2 :=  StrtoFloat(Display.caption);
  case Operação of
    '+' : Valor1 :=Valor1 + Valor2;
    '-' : Valor1 :=Valor1 - Valor2;
    '*' : Valor1 :=Valor1 * Valor2;
    '/' : Valor1 :=Valor1 / Valor2;
  end;

  Display.Caption := FloattoStr(Valor1);
  Valor2 := 0;
end;

procedure TForm1.Panel2Click(Sender: TObject);
  var
    virgula : string;
begin
  if (virgula <> ',') then
   Display.caption := Display.caption + ','  ;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
  Operação := '/';

  if Valor1 = 0  then
   valor1:= Strtofloat(Display.Caption);

  Display.caption := '';
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
   if Display.Caption = '0' then
  Display.caption:= '7'
   else
   Display.Caption:=Display.Caption + '7';
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin
if Display.Caption = '0' then
  Display.caption:= '8'
   else
   Display.Caption:=Display.Caption + '8';
end;

procedure TForm1.Panel8Click(Sender: TObject);
begin
  if Display.Caption = '0' then
  Display.caption:= '9'
   else
   Display.Caption:=Display.Caption + '9';
end;

procedure TForm1.Panel9Click(Sender: TObject);
begin

    Operação := '*';

  if Valor1 = 0  then
   valor1:= Strtofloat(Display.Caption);

  Display.caption := '';

end;

end.
