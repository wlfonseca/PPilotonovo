program PPiloto;

uses
  Vcl.Forms,
  View.Fpiloto in 'View.Fpiloto.pas' {FrmPrincipal},
  Classe.pessoas in 'Classe.pessoas.pas',
  Classe.Items in 'Classe.Items.pas',
  View.FCadastro in 'View.FCadastro.pas' {FrmCadastroProdutos},
  Controller.Items in 'Controller.Items.pas',
  DmConexao in 'DmConexao.pas' {DmItem: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastroProdutos, FrmCadastroProdutos);
  Application.CreateForm(TDmItem, DmItem);
  Application.Run;
end.
