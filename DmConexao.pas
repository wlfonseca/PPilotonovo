unit DmConexao;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Classe.Items;

type
  TDmItem = class(TDataModule)
    Con1: TZConnection;
    ZqPesquisar: TZQuery;
    ZqQIncluir: TZQuery;
    ZqExcluir: TZQuery;
    ZQuery4: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pesquisar(parametro, filtro: string);
    procedure listaritems(Oitem: Titems);
    function InsertItem(Oitem: Titems; out StrErro: string): Boolean;
    function editItem(Oitem: Titems; out StrErro: string): Boolean;
    procedure CarregarItem(Oitem: Titems; iCodigoItem: Integer);
  end;

var
  DmItem: TDmItem;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmItem.pesquisar(parametro, filtro: string);
begin
  with ZqPesquisar do
  begin
    if ZqPesquisar.Active then
      Close;
    sql.Clear;
    SQL.Text := 'select * from items where ' + filtro + ' =  ' + '%' + parametro + '%';
    Open;
    First;
  end;
end;

procedure TDmItem.listaritems(Oitem: Titems);
var
  QueryListar: TZQuery;
begin
  QueryListar := TZQuery.Create(nil);
  QueryListar.Connection := Con1;
  try
    with QueryListar do
    begin
      if Active then
        Close;
      sql.clear;
      sql.Text := 'select * from items';
      Open;

      with Oitem do
      begin
        id := FieldByName('ID').AsInteger;
        nome := FieldByName('nome').AsString;
        descricao := FieldByName('descricao').AsString;
        valorUnitario := FieldByName('valorunitario').AsFloat;
      end;
    end;

  finally
    QueryListar.Free;
  end;

end;

function TDmItem.InsertItem(Oitem: Titems; out StrErro: string): Boolean;
var
  QueryInsert: TZQuery;
begin
  QueryInsert := TZQuery.Create(nil);
  QueryInsert.Connection := Con1;
  try
    with QueryInsert, Oitem do
    begin
     // if Active then
     //   Close;
      sql.Clear;

      sql.Text := 'Insert into item (id, nome descricao, valorunitario) values (:id, :nome, :descricao :valorunitario)';
      ParamByName('id').AsInteger := ID;
      ParamByName('nome').AsString := nome;
      ParamByName('descricao').AsString := descricao;
      ParamByName('valorunitario').AsFloat := valorunitario;
      try
        ExecSQL;

      except
        on e: Exception do
        begin
          StrErro := 'Erro ao inserir item ' + E.Message;
          Result := false;
        end;
      end;

    end;
  finally
    QueryInsert.Free;
  end;
end;

function Tdmitem.editItem(Oitem: Titems; out StrErro: string): Boolean;
var
  QeditItem: TZQuery;
begin
  QeditItem := TZQuery.Create(nil);
  QeditItem.Connection := Con1;
  try
    with QeditItem do
    begin
      if Active then
        Close;
      sql.Clear;
      sql.Text := 'update item set  codigo = :codigo, nome = :nome , descricao :descricao, valorunitario = :valorunitario';
      try
        ExecSQL;
        Result := True;
      except
        on e: Exception do
        begin
          StrErro := 'Erro na edição do produto ' + E.Message;
          Result := false;
        end;

      end;
    end;
  finally
    QeditItem.free;
  end;

end;

procedure TdmItem.CarregarItem(Oitem: Titems; iCodigoItem: Integer);
var
  QCarregaitem: Tzquery;
begin
  QCarregaitem := Tzquery.create(nil);
  if QCarregaitem.Active then
    QCarregaitem.Close;
  try
    with QCarregaitem, oItem do
    begin
      sql.Clear;
      sql.Text := 'selec * from item where id =  ' + iCodigoItem.ToString;
      Open;
      Id := FieldByName('Id').AsInteger;
      codigo := FieldByName('codigo').AsString;
      nome := FieldByName('nome').AsString;
      descricao := FieldByName('descricao').AsString;
      valorunitario := FieldByName('valorunitario').AsFloat;
    end;
  finally
    QCarregaitem.Free;
  end;
end;

end.

