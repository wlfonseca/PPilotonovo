unit Classe.Items;

interface

uses
  System.SysUtils,Dialogs;

type
  Titems = class
  private
    Fid: integer;
    Fcodigo: string;
    Fdescricao: string;
    Fnome : string;
    FvalorUnitario: Double;
    procedure Setid(const Value: integer);
    function Getid: Integer;
    procedure Setcodigo(const Value: string);
    function Getcodigo: string;
    function GetNome: string;
    procedure Setnome(const Value: string);
    procedure Setdescricao(const Value: string);
    procedure SetvalorUnitario(const Value: Double);
    function Getdescricao: string;
    function GetUnitario: Double;
  public
    property id: integer read Getid write Setid;
    property codigo: string read Getcodigo write Setcodigo;
    property nome: string read GetNome write Setnome;
    property descricao: string read Getdescricao write Setdescricao;
    property valorUnitario: Double read GetUnitario write SetvalorUnitario;
  end;

  type Servico =  class(Titems)
  private
    FcodigoServico: string;
    procedure SetcodigoServico(const Value: string);
    function GetcodigoServico: string;
    procedure Servico(const Value: string);
  public
    property codigoServico : string read GetcodigoServico write Servico;
  end;

  type Tproduto =  class(Titems)
  private
    Fpeso: string;
    Faltura: string;
    procedure Setaltura(const Value: string);
    procedure Setpeso(const Value: string);
    function Getaltura: string;
    function Getpeso: string;
  public
    property peso : string read Getpeso write Setpeso;
    property altura : string read Getaltura write Setaltura;
  end;

implementation
{ items }

function Titems.Getcodigo: string;
begin
  Result := Fcodigo;
end;

function Titems.Getdescricao: string;
begin

end;

function Titems.Getid: integer;
begin
  Result := Fid;
end;

function Titems.GetNome: string;
begin
  Result := Fnome;
end;

function Titems.GetUnitario: Double;
begin

end;

procedure Titems.Setcodigo(const Value: string);
begin
  if Value = '' then
    Raise Exception.Create('Código Do produto não pode ser vazio!');
  Fcodigo := Value;
end;

procedure Titems.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure Titems.Setid(const Value: integer);
begin
//  if Value = 0 then
//    raise Exception.Create('Id Não pode ser vazio, verifique!');
  Fid := Value;
end;

procedure Titems.Setnome(const Value: string);
begin
showmessage(value);
if Value = '' then
  raise Exception.Create('Erro : Nome está vazio ');
 Fnome := Value;

end;

procedure Titems.SetvalorUnitario(const Value: Double);
begin
  FvalorUnitario := Value;
end;

{ Servico }

function Servico.GetcodigoServico: string;
begin

end;

procedure Servico.Servico(const Value: string);
begin

end;

procedure Servico.SetcodigoServico(const Value: string);
begin
  FcodigoServico := Value;
end;

{ produto }

function Tproduto.Getaltura: string;
begin

end;

function Tproduto.Getpeso: string;
begin

end;

procedure Tproduto.Setaltura(const Value: string);
begin
  Faltura := Value;
end;

procedure Tproduto.Setpeso(const Value: string);
begin
  Fpeso := Value;
end;

end.

