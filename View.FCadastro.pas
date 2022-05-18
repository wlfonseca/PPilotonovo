unit View.FCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,  Controller.Items, Classe.items;

type
  TFrmCadastroProdutos = class(TForm)
    PnlFooter: TPanel;
    Button1: TButton;
    BtnGravar: TButton;
    EdtNome: TLabeledEdit;
    EdtCodigo: TLabeledEdit;
    EdtDescricao: TLabeledEdit;
    EdtValorUnitario: TLabeledEdit;
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure gravar(Oitem : Titems; StrErro : string);
  end;

var
  FrmCadastroProdutos: TFrmCadastroProdutos;

implementation

uses
  DmConexao;



{$R *.dfm}

procedure TFrmCadastroProdutos.BtnGravarClick(Sender: TObject);
var
  Oitem : Titems;
  StrErro : string;
begin
  Oitem := Titems.Create;
  with Oitem do
    begin
      id := 0;
      codigo := EdtCodigo.text;
      nome := EdtNome.Text;
      descricao := EdtDescricao.text;
      valorUnitario := StrToFloat(EdtValorUnitario.Text);
    end;

  Gravar(oitem, StrErro);

end;

procedure TFrmCadastroProdutos.gravar(oItem: Titems; StrErro : String);
begin
  ControllerItems.InsertItem(oItem,StrErro);
end;

end.
