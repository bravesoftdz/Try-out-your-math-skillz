unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
  var x:Integer;
  var y:Integer;
  var vysledok:Integer;
  var op:Integer;
procedure TForm1.Button1Click(Sender: TObject);
begin
     Form1.Memo1.Lines.Clear;
     Randomize;
     op:= random(4);
     case op of
             0: begin
                x:=1 + random(100);
                y:=1 + random(100);
                vysledok:= x+y;
                Form1.Memo1.Lines.Add(IntToStr(x) + '+' + IntToStr(y));
             end;
             1: begin
                x:=1 + random(100);
                y:=1 + random(100);
                vysledok:= x-y;
                Form1.Memo1.Lines.Add(IntToStr(x) + '-' + IntToStr(y));
             end;
             2: begin
                x:=1 + random(10);
                y:=1 + random(10);
                vysledok:= x*y;
                Form1.Memo1.Lines.Add(IntToStr(x) + '*' + IntToStr(y));
             end;
             3: begin
                x:=1 + random(100);
                y:=1 + random(100);
                vysledok:= x div y;
                Form1.Memo1.Lines.Add(IntToStr(x) + ':' + IntToStr(y) + '                                                            (bez zvysku!)');
             end;
     end
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     if (IntToStr(vysledok) = Form1.Edit1.Text) then Form1.Memo2.Text:= ('Spraaavne!')
                                                else Form1.Memo2.Text:= ('ZLE TY BLBECEK!');
     Form1.Edit1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     Form1.Memo1.Lines.Clear;
     Form1.Edit1.Clear;
     x:=1 + random(100);
     y:=1 + random(100);
     vysledok:= x+y;
     Form1.Memo1.Lines.Add(IntToStr(x) + '+' + IntToStr(y));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     Form1.Memo1.Lines.Clear;
     Form1.Edit1.Clear;
     x:=1 + random(100);
     y:=1 + random(100);
     vysledok:= x-y;
     Form1.Memo1.Lines.Add(IntToStr(x) + '-' + IntToStr(y));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     Form1.Memo1.Lines.Clear;
     Form1.Edit1.Clear;
     x:=1 + random(10);
     y:=1 + random(10);
     vysledok:= x*y;
     Form1.Memo1.Lines.Add(IntToStr(x) + '*' + IntToStr(y));
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
     Form1.Memo1.Lines.Clear;
     Form1.Edit1.Clear;
     x:=1 + random(100);
     y:=1 + random(100);
     vysledok:= x div y;
     Form1.Memo1.Lines.Add(IntToStr(x) + ':' + IntToStr(y) + '                                                                  (bez zvysku!)');
end;

end.

