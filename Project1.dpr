program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Login in 'Login.pas' {Frame2: TFrame},
  Datos in 'Datos.pas' {DataModule2: TDataModule},
  PanelOrdenes in 'PanelOrdenes.pas' {Frame3: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
