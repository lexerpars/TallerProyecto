unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Menus, Login, PanelOrdenes,FMX.Controls.Presentation, FMX.Objects;

  //Uses login

type
  TForm1 = class(TForm)
    ScaledLayout1: TScaledLayout;
    Contenedor: TPanel;
    Rectangle1: TRectangle;
    OrdenesContenedor: TPanel;
    Rectangle2: TRectangle;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  //Login variable que contiene Frame de Login
    Login : TFrame2;
    PanelOrdenes : TFrame3;
    procedure Iniciar_ordenes();
  end;

var
  Form1: TForm1;
  Agente,Nombre,Estatus:String;

implementation


{$R *.fmx}


procedure TForm1.Iniciar_ordenes;
begin
  Login.Free;
  PanelOrdenes := TFrame3.Create(self);
  PanelOrdenes.Parent:=Contenedor;
  PanelOrdenes.Visible:=True;
  PanelOrdenes.EtiquetaNombre.Text:=Nombre;
  PanelOrdenes.carga_ordenes;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Cargar Frame Login
  Login := TFrame2.Create(nil);
  Login.Parent := Contenedor;
  Login.Visible := True;

end;


end.
