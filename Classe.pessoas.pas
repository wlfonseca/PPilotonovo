unit Classe.pessoas;

interface

uses
System.SysUtils;

type

TPessoas = class

  private
  Fnome : string;
    FSexo: string;
    procedure SetNome(Value : string);
    function GetNome : string;
    procedure SetSexo(const Value: string);
    function GetSexo: string;


  public
   DataNasc : string;
  Property Sexo : string read GetSexo write SetSexo;
  Property Nome : string Read GetNome write SetNome;
  function Idade : Integer;

end;

implementation

{ Tpessoa }

function TPessoas.GetSexo: string;
begin
  Result := FSexo;
end;

function Tpessoas.Idade : Integer;
begin
  Result  := Trunc((now - StrToDate(DataNasc)) / 365.25);
end;

function TPessoas.Getnome : string;
begin
  Result  := Fnome;
end;

Procedure Tpessoas.SetNome(Value: string);
begin
   if Value = '' then
     raise Exception.Create('Nome Não Pode Ser vazio.');

  Fnome := Value;
end;


procedure TPessoas.SetSexo(const Value: string);
begin
  FSexo := Value;
end;

end.
