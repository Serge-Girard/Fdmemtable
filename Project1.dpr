program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form136};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm136, Form136);
  Application.Run;
end.
