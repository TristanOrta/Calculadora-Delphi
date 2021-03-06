unit UformCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  UCalculadora,
  Vcl.Buttons;

type
  TFrmCalculadora = class(TForm)
    EdtOper1: TLabeledEdit;
    EdtOper2: TLabeledEdit;
    BtnSumar: TButton;
    BtnRestar: TButton;
    LbtResultado: TLabeledEdit;
    BtnMultiplicar: TButton;
    BtnDividir: TButton;
    BtnSumarDouble: TButton;
    BtnMultiplicarDouble: TButton;
    BtnHelperJson: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnSumarClick(Sender: TObject);
    procedure BtnMultiplicarClick(Sender: TObject);
    procedure BtnDividirClick(Sender: TObject);
    procedure BtnSumarDoubleClick(Sender: TObject);
    procedure BtnMultiplicarDoubleClick(Sender: TObject);
    procedure BtnHelperJsonClick(Sender: TObject);
  private
    { Private declarations }
    FCalculadora: TCalculadora;
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

uses
  System.JSON;

type
  TJSONArrayHelper = class helper for TJSONArray
    // identificar el metodo que quiero agregar
  public
    function MiToString: string;
  end;

  { TJSONArrayHelper }

function TJSONArrayHelper.MiToString: string;
begin

  for var LElement in Self do
  begin
    result := '<ele>' + LElement.Value;
  end;

end;

{$R *.dfm}

// evento que crea la instancia
procedure TFrmCalculadora.BtnDividirClick(Sender: TObject);

var
  LintOper2: Integer;

begin
  // Convertimos los datos de nuestra caja de texto EdtOper1 a un valor entero
  // y se asigna a LintOper1
  var
    LintOper1: Integer := StrToIntDef(EdtOper1.Text, 0);
  LintOper2 := StrToIntDef(EdtOper2.Text, 0);

  var
  LResult := TCalculadora.Dividir(LintOper1, LintOper2);
  LbtResultado.Text := LResult.ToString;

end;

procedure TFrmCalculadora.BtnHelperJsonClick(Sender: TObject);
begin
  var
  LJsonArray := TJSONArray.Create; //
  var
  LjsonObject := TJSONObject.Create;
  LjsonObject.AddPair('coderror', TJSONNumber.Create(0));
  LJsonArray.AddElement(LjsonObject);
  ShowMessage(LJsonArray.MiToString);
  // Destruir
  // LjsonObject.Destroy;
  LJsonArray.Destroy;

end;

procedure TFrmCalculadora.BtnMultiplicarClick(Sender: TObject);

var
  LintOper2: Integer;

begin
  // Convertimos los datos de nuestra caja de texto EdtOper1 a un valor entero
  // y se asigna a LintOper1
  var
    LintOper1: Integer := StrToIntDef(EdtOper1.Text, 0);
  LintOper2 := StrToIntDef(EdtOper2.Text, 0);

  var
  LResult := TCalculadora.Multiplicar(LintOper1, LintOper2);
  LbtResultado.Text := LResult.ToString;

end;

procedure TFrmCalculadora.BtnMultiplicarDoubleClick(Sender: TObject);

var
  LintOper2: Double;

begin
  // Convertimos los datos de nuestra caja de texto EdtOper1 a un valor entero
  // y se asigna a LintOper1
  var
    LintOper1: Double := StrToFloatDef(EdtOper1.Text, 0.0);
  LintOper2 := StrToFloatDef(EdtOper2.Text, 0.0);

  var
  LResult := FCalculadora.MultiplicarDouble(LintOper1, LintOper2);
  LbtResultado.Text := LResult.ToString;

end;

procedure TFrmCalculadora.BtnSumarClick(Sender: TObject);

var
  LintOper2: Integer;

begin
  // Convertimos los datos de nuestra caja de texto EdtOper1 a un valor entero
  // y se asigna a LintOper1
  var
    LintOper1: Integer := StrToIntDef(EdtOper1.Text, 0);
  LintOper2 := StrToIntDef(EdtOper2.Text, 0);

  var
  LResult := FCalculadora.sumar(LintOper1, LintOper2);
  LbtResultado.Text := LResult.ToString;

end;

procedure TFrmCalculadora.BtnSumarDoubleClick(Sender: TObject);

var
  LintOper2: Double;

begin
  // Convertimos los datos de nuestra caja de texto EdtOper1 a un valor entero
  // y se asigna a LintOper1
  var
    LintOper1: Double := StrToFloatDef(EdtOper1.Text, 0.0);
  LintOper2 := StrToFloatDef(EdtOper2.Text, 0.0);

  var
  LResult := FCalculadora.sumarDouble(LintOper1, LintOper2);
  LbtResultado.Text := LResult.ToString;

end;

procedure TFrmCalculadora.FormCreate(Sender: TObject);
begin
  FCalculadora := TCalculadora.Create;
end;

// Evento para destruir la instancia
procedure TFrmCalculadora.FormDestroy(Sender: TObject);
begin
  FCalculadora.Destroy;
end;

end.
