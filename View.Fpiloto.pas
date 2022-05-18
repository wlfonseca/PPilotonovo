unit View.Fpiloto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, ZAbstractConnection, ZConnection, DmConexao;

type
  TTipoForm = (Tpedit, TpNovo);

  TFrmPrincipal = class(TForm)
    PnlTopo: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button3: TButton;
    Button4: TButton;
    BtnPesquisa: TButton;
    lbledtPesquisar: TLabeledEdit;
    pnlFoot: TPanel;
    BtnEdit: TButton;
    BtnExcluir: TButton;
    cbbFiltro: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure BtnPesquisaClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CarregarItem;
  private
    { Private declarations }
    FTipoForm: TTipoForm;
  public
    { Public declarations }
    procedure NovoProduto;
    procedure ExcluirProduto;
    procedure EditarProduto;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  classe.pessoas, Classe.Items, View.FCadastro, Controller.Items;

{$R *.dfm}

procedure TFrmPrincipal.BtnPesquisaClick(Sender: TObject);
var
oControllerItems : TControllerItems;
begin
  oControllerItems := TControllerItems.Create;
  try
     oControllerItems.Pesquisar(cbbFiltro.Text,lbledtPesquisar.text);
  finally
    oControllerItems.Free;
  end;

end;

procedure TFrmPrincipal.Carregaritem;
var
  oControllerItems : TControllerItems;
  Oitem : Titems;
begin
  oControllerItems := TControllerItems.Create;
  try
    oControllerItems.CarregarItem(oItem, dmItem.ZqPesquisar.FieldByName('id').AsInteger);
  finally
   oControllerItems.Free;
   Oitem.Free;
  end;
  //
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  pessoas: TPessoas;
begin

  pessoas := TPessoas.Create;
  try
    pessoas.nome := '';
    pessoas.DataNasc := '20/11/1985';

    showmessage(IntToStr(pessoas.Idade));
  finally
    pessoas.Free;
  end;

end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
 NovoProduto;
end;

procedure TFrmPrincipal.NovoProduto;
var
  FormCadastroProdutos: TFrmCadastroProdutos;
  listprodutos: Titems;
begin

  FTipoForm := TpNovo;

  try
    listprodutos := Titems.create;
    FrmCadastroProdutos.edtNome.text := listprodutos.nome;
    FrmCadastroProdutos.showModal;
  finally
    listprodutos.free;
  end;


end;

procedure TFrmPrincipal.ExcluirProduto;
begin
  //
end;

procedure TfrmPrincipal.EditarProduto;
begin
  FTipoForm := Tpedit;


end;

end.

