unit frmUIMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button2: TButton;
    lblSecondsToFreeze: TLabeledEdit;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FStart: Tdatetime;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function IsPrime(N: Integer): Boolean;
var
  M: Integer;
begin
  Assert(N > 0);
  if N = 1 then // annoying special case
  begin
    Result := False;
    exit;
  end;
  for M := 2 to (N div 2) do
  begin
    if N mod M = 0 then
    begin
      Result := False;
      exit;
    end;
  end;
  Result := True;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  lPrimes: array of integer;
  lPrimeCount: integer;
  lStart: TDateTime;
  I: Integer;
  lDelta: TDatetime;
  lDays, lHour, lMin, lSec, lMSec: Word;
begin
  lStart := now;
  Memo1.Lines.Add(FormatDateTime('hh:nn:ss',now));
  //How many prime numbers are in 6 million numbers? Takes 26 Minutes to calc.
  for I := 1 to strtoint(lblSecondsToFreeze.Text) do
    begin
      if IsPrime(i) then
        begin
          lPrimes := lPrimes + [i];
        end;
    end;
  Memo1.Lines.Add(FormatDateTime('hh:nn:ss',now));
  lDelta := now - lStart;
  DecodeTime(lDelta, lHour, lMin, LSec, LMSec);
  Memo1.lines.add(inttostr(lHour) + ' hrs ' + inttostr(lmin) + ' minutes ' + inttostr(lSec) + ' seconds ' + inttostr(lMSec) + ' milliseconds');
  Memo1.lines.add(inttostr(length(lPrimes)) + ' prime numbers found.');
end;

end.
