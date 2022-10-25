program AmSystem;

uses
  Vcl.Forms,
  uDM in 'uDM.pas' {DataModule1: TDataModule},
  uPrincipal in 'uPrincipal.pas' {Form1},
  uCliente in 'uCliente.pas' {Form2},
  uVenda in 'uVenda.pas' {fVenda},
  uConsultaVenda in 'uConsultaVenda.pas' {fConsultaVendas},
  uProduto in 'uProduto.pas' {fProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
