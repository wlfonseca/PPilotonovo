unit Controller.Items;

interface

uses
  Classe.Items, Dmconexao;

type
  TControllerItems = class
  public
    function InsertItem(Oitem: Titems; var StrErro: string): Boolean;
    procedure Pesquisar(parametro, filtro : string);
    function editar(Oitem : Titems; var StrErro : string) : Boolean;
    function excluir(icodigo : Integer; var StrErro : string) : Boolean;
    procedure CarregarItem(oItem : Titems; idItem : Integer);
  end;

var
  ControllerItems : TControllerItems;
implementation

function TControllerItems.InsertItem(OItem: Titems; var StrErro: string): Boolean;
begin
   Result := DmItem.InsertItem(OItem,StrErro);
end;

procedure TControllerItems.Pesquisar(parametro, filtro : string);
begin
   DmItem.pesquisar(parametro, filtro);
end;

function TControllerItems.editar(Oitem : Titems; var StrErro : string) : Boolean;
begin
//
  Result := DmItem.editItem(Oitem,StrErro);
end;
function TControllerItems.excluir(icodigo : Integer; var StrErro : string) : Boolean;
begin
  //
end;

procedure TControllerItems.CarregarItem(oItem : Titems; idItem : Integer);
begin
  DmItem.CarregarItem(oItem, Iditem);
end;

end.

