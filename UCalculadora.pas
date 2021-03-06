unit UCalculadora;

interface

uses
  System.SysUtils;

type
//un helper no es herencia es un concepto de adicionar funcionalidad
//TCalculadora = class sealed Clase cerrada no es posible generar herencia
// a partir de ahi pero si Helpers (Clase final de java)
  TCalculadora = class

  public
    function sumar(const Aoper1, Aoper2: Integer): Integer;
    function restar(const Aoper1, Aoper2: Integer): Integer;

    // class => Metodos estaticos  , adicional static
    class function Multiplicar(const Aoper1, Aoper2: Integer): Integer;
    class function Dividir(const Aoper1, Aoper2: Integer): Integer; static;
  end;

  // Helper
  TCalculadoraHelper = class helper for TCalculadora
  public
    function sumarDouble(const Aoper1, Aoper2: Double): Double;
    class function MultiplicarDouble(const Aoper1, Aoper2: Double): Double;
  end;

implementation

uses
  Vcl.Dialogs;

{ TCalculadora }

class function TCalculadora.Dividir(const Aoper1, Aoper2: Integer): Integer;
begin
  // divicion entera se usa operador div , divicion de .float se usa /

  // forma uno para manejar excepciones
  // if (Aoper2 = 0) then raise Exception.Create('no es posible dividir por cero');


  // Forma dos para manejo de excepciones

  if (Aoper2 = 0) then
  begin
    ShowMessage('no es posible dividir entre cero');
    exit;
  end;

  Result := Aoper1 div Aoper2; // cuando es / 0 da excepcion

end;

class function TCalculadora.Multiplicar(const Aoper1, Aoper2: Integer): Integer;
begin
  Result := Aoper1 * Aoper2;
end;

function TCalculadora.restar(const Aoper1, Aoper2: Integer): Integer;
begin
  Result := Aoper1 - Aoper2;
end;

function TCalculadora.sumar(const Aoper1, Aoper2: Integer): Integer;
begin
  Result := Aoper1 + Aoper2;
end;

{ TCalculadoraHelper }

class function TCalculadoraHelper.MultiplicarDouble(const Aoper1,
  Aoper2: Double): Double;
begin
  Result := Aoper1 * Aoper2;
end;

function TCalculadoraHelper.sumarDouble(const Aoper1, Aoper2: Double): Double;
begin
  Result := Aoper1 + Aoper2;
end;

end.
