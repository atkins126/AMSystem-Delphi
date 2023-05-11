unit FrmVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, ZAbstractRODataset, ZDataset, ZSqlUpdate, ZAbstractDataset,
  System.StrUtils, Vcl.ExtCtrls, uCliente, Vcl.Buttons, uVenda, uProduto;

type
  TfVenda = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edCodVenda: TEdit;
    edIdVendedor: TEdit;
    edIdCliente: TEdit;
    edIdProd: TEdit;
    edVendedor: TEdit;
    edCliente: TEdit;
    edPesqProd: TEdit;
    edQtdProduto: TEdit;
    edValorUnitario: TEdit;
    edDesconto: TEdit;
    edValorTotal: TEdit;
    DBGrid1: TDBGrid;
    dFuncionario: TDataSource;
    dbgPesqProduto: TDBGrid;
    dbgVendedor: TDBGrid;
    dbgCliente: TDBGrid;
    dProdVenda: TDataSource;
    qFuncionario: TZReadOnlyQuery;
    qFuncionarioid: TIntegerField;
    qFuncionarionome: TWideStringField;
    qProdVenda: TZQuery;
    uProdVenda: TZUpdateSQL;
    qProdVendaid: TIntegerField;
    qProdVendaidprod: TIntegerField;
    qProdVendadescricao: TWideStringField;
    qProdVendaquantidade: TFloatField;
    qProdVendadesconto: TFloatField;
    qProdVendatotal: TFloatField;
    qProdVendavalor: TFloatField;
    pnlDesconto: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    edDescontoVenda: TEdit;
    Label9: TLabel;
    pnlTotal: TPanel;
    Panel2: TPanel;
    Shape2: TShape;
    edTotalVenda: TEdit;
    Label10: TLabel;
    pnlBotoes: TPanel;
    btnSair: TButton;
    btnExcluirProduto: TButton;
    btnCancelar: TButton;
    btnSalvar: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edVendedorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgVendedorDblClick(Sender: TObject);
    procedure edPesqProdChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edQtdProdutoExit(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure edValorTotalEnter(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edIdProdExit(Sender: TObject);
    procedure edIdVendedorExit(Sender: TObject);
    procedure edIdClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edQtdProdutoEnter(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirProdutoClick(Sender: TObject);
    procedure dbgVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Produto : TProduto;
    Cliente : TCliente;
    Venda : TVenda;
    procedure Consulta(Tipo, TipoCampo : String);
    procedure LimpaCampos(pTipo : String);
    procedure FocarGrid(edit : TEdit);
    procedure PreencheCampos(grid : TDBGrid);

  public
    { Public declarations }
  end;

var
  fVenda: TfVenda;

implementation

uses
  uDM;

{$R *.dfm}

procedure TfVenda.FormCreate(Sender: TObject);
begin
  Cliente := TCliente.Create();
  Produto := TProduto.Create();
  Venda := TVenda.Create();

  edTotalVenda.Text := '0,00';
  edDescontoVenda.Text := '0,00';

  dbgVendedor.Left := 8;
  dbgVendedor.Top := 112;

  dbgPesqProduto.Left := 8;
  dbgPesqProduto.Top := 238;

  dbgCliente.Left := 8;
  dbgCliente.Top := 174;
end;

procedure TfVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfVenda.LimpaCampos(pTipo : String);
begin

  case AnsiIndexStr(pTipo, ['Prod', 'Venda']) of
  
    0 : Begin
      edIdProd.Clear;
      edPesqProd.Clear;
      edQtdProduto.Clear;
      edValorUnitario.Clear;
      edDesconto.Clear;
      edValorTotal.Clear;
      edIdProd.SetFocus;
    End;

    1 : Begin
      edCodVenda.Clear;
      edIdCliente.Clear;
      edCliente.Clear;
      edIdProd.Clear;
      edPesqProd.Clear;
      edQtdProduto.Clear;
      edValorUnitario.Clear;
      edDesconto.Clear;
      edTotalVenda.Clear;
      edDescontoVenda.Clear;
      edIdVendedor.SetFocus;
      edTotalVenda.Text := '0,00';
      edDescontoVenda.Text := '0,00';
    End;
  end;
end;

procedure TfVenda.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    27 : begin // Esc
      btnSairClick(Sender);
      Key := 0;
    end;

    114 : begin// F3

      btnSalvarClick(Sender);
    end;

    115 : begin // F4
      btnCancelar.Click;
    end;

    116 : begin // F5
        btnExcluirProduto.Click;
    end;
    
    VK_DOWN : begin
      FocarGrid(TEdit(Sender));
    end;
  end;
end;

procedure TfVenda.dbgVendedorDblClick(Sender: TObject);
begin
  PreencheCampos(TDBGrid(Sender));
end;

procedure TfVenda.dbgVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (Key = 13) then
    Exit;
    
  PreencheCampos(TDBGrid(Sender));
  Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfVenda.edPesqProdChange(Sender: TObject);
begin
  if (Trim(edPesqProd.Text) <> '') and (Trim(edIdProd.Text) = '') then
  begin
    Produto.Ativo := 'S';
    Produto.Pesquisar(edPesqProd.Text);

    if DM.qProduto.RecordCount > 0  then
    begin
      dbgPesqProduto.Visible := True;
    end
    else
    begin
      dbgPesqProduto.Visible := false;
    end;
  end
  else
  begin
    dbgPesqProduto.Visible := false;
  end;
end;

procedure TfVenda.edValorTotalEnter(Sender: TObject);
begin

  If not Produto.Pesquisar(StrToIntDef(edIdProd.Text, 0)) then
    Exit;

  Venda.InsereVenda(edCodVenda.Text);

  Venda.PrecoProduto    := StrToCurr(edValorUnitario.Text) * strtoFLoat(edQtdProduto.Text);
  Venda.DescontoProduto := StrToCurr(edDesconto.Text);

  Venda.Soma();

  try
    qProdVenda.Open;
    qProdVenda.Insert;
    qProdVendaidprod.AsInteger := StrToInt(edIdProd.Text);
    qProdVendadescricao.AsString := edPesqProd.Text;
    qProdVendavalor.AsFloat := StrToFloat(edValorUnitario.Text);
    qProdVendadesconto.AsFloat := StrToFloat(edDesconto.Text);
    qProdVendaquantidade.AsFloat := StrToFloat(edQtdProduto.Text);
    qProdVendatotal.AsFloat := (Venda.PrecoProduto);

    qProdVenda.ApplyUpdates;
    qProdVenda.Close;
  finally
    qProdVenda.ParamByName('idVenda').AsString := '' + edCodVenda.Text + '';
    qProdVenda.Open;
  end;

  edTotalVenda.Text := FormatFloat('###,##0.00', Venda.Total);
  edDescontoVenda.Text := FormatFloat('###,##0.00', Venda.Desconto);

  LimpaCampos('Prod');
end;

procedure TfVenda.edVendedorChange(Sender: TObject);
begin
  if Trim(edIdVendedor.Text) = '' then
    Consulta('Func', 'Pesq');
end;

procedure TfVenda.edQtdProdutoEnter(Sender: TObject);
begin
  if Length(Trim(edQtdProduto.Text)) <> 0 then
  begin
    edQtdProduto.Text := '1'
  end;
end;

procedure TfVenda.edQtdProdutoExit(Sender: TObject);
var
  valorTotal: Real;
begin
  valorTotal := StrToFloatDef(edQtdProduto.Text, 0) * StrToFloatDef(edValorUnitario.Text, 0);

  edValorTotal.Text := FloatToStr(valorTotal);
end;

procedure TfVenda.edClienteChange(Sender: TObject);
begin
  if (Trim(edCliente.Text) <> '') and (Trim(edIdCliente.Text) = '') then
  begin
    Cliente.Ativo := 'S';
    Cliente.Pesquisar(edCliente.Text);

    if DM.qCliente.RecordCount > 0 then
      dbgCliente.Visible := True
    else
      dbgCliente.Visible := False;
  end
  else
    dbgCliente.Visible := False;
end;

procedure TfVenda.edDescontoExit(Sender: TObject);
begin
  Produto.Ativo := 'S';
  Produto.Descricao := edPesqProd.Text;
  if not Produto.Pesquisar(StrToIntDef(edIdProd.Text, 0)) then
  begin
    edIdProd.SetFocus;
    Exit;
  end;

  if Length(edValorUnitario.Text) = 0 then
  begin
    edPesqProd.SetFocus;
    Exit;
  end;

end;

procedure TfVenda.edIdClienteExit(Sender: TObject);
begin
  Cliente.Ativo := 'S';
  Cliente.Pesquisar(StrToIntDef(edIdCliente.Text, 0));
  edCliente.Text := Cliente.Nome;
end;


procedure TfVenda.edIdProdExit(Sender: TObject);
begin
  Produto.Descricao := '';
  Produto.Ativo := 'S';

  if Produto.Pesquisar(StrToIntDef(edIdProd.Text, 0)) then
  begin
    edIdProd.Text := IntToStr(Produto.ID);
    edPesqProd.Text := Produto.Descricao;
    edValorUnitario.Text := CurrToStr(Produto.PrecoVenda);
    edQtdProduto.Text := '1';
    edDesconto.Text := '0,00';
    edQtdProduto.SetFocus;
  end;

end;

procedure TfVenda.edIdVendedorExit(Sender: TObject);
begin
  Consulta('Func', 'ID');
end;

procedure TfVenda.btnSalvarClick(Sender: TObject);
begin
  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add('SELECT id, nome FROM funcionario WHERE id = ' + QuotedStr(edIdVendedor.Text) + ' and nome = ' +
    QuotedStr(edVendedor.Text) + ';');
  DM.qPesq.Open;

  if DM.qPesq.RecordCount = 0 then
  begin
    Application.MessageBox('Vendedor inv�lido. Por favor, verifique!', 'Aten��o', MB_ICONEXCLAMATION);
    Abort;
  end;

  Cliente.Nome := edCliente.Text;
  if not Cliente.Pesquisar(Cliente.Cod) then
  begin
    Application.MessageBox('Cliente inv�lido ou inexistente. Por favor, verifique!', 'Aten��o', MB_ICONEXCLAMATION);
    Abort;
  end;

  Venda.ID := StrToIntDef(edCodVenda.Text, 0);
  Venda.Finaliza;

  LimpaCampos('Venda');
end;

procedure TfVenda.Consulta(Tipo, TipoCampo : String);
begin
  qFuncionario.Close;

  if (TipoCampo = 'Pesq') and (Trim(edIdVendedor.Text) = '') then
  begin
    dbgVendedor.Visible := True;

    qFuncionario.ParamByName('id').AsInteger := 0;
    qFuncionario.ParamByName('nome').AsString := '%' + edVendedor.Text + '%';
    qFuncionario.Open;
  end

  else if not (Trim(edIdVendedor.Text) = '') then
  begin
    dbgVendedor.Visible := false;

    qFuncionario.ParamByName('id').AsInteger := StrToIntDef(edIdVendedor.Text, 0);
    qFuncionario.ParamByName('nome').AsString := '%%';
    qFuncionario.Open;

    if not (qFuncionario.ParamByName('id').Value = 0) then
      edVendedor.Text := qFuncionarionome.AsString;
  end;

  if edVendedor.Text = '' then
  begin
    dbgVendedor.Visible := false;
  end;

end;

procedure TfVenda.btnCancelarClick(Sender: TObject);
begin
  Venda.ID := DM.qVendaid.AsInteger;
  Venda.Cancelar;
  LimpaCampos('Venda');
end;

procedure TfVenda.btnExcluirProdutoClick(Sender: TObject);
begin
  If qProdVenda.RecordCount > 0 then
  begin
    Venda.PrecoProduto    := StrToCurr(DBGrid1.Fields[6].AsString);
    Venda.DescontoProduto := StrToCurr(DBGrid1.Fields[5].AsString);
    Venda.ExcluirProduto();
    edTotalVenda.Text := FormatFloat('###,##0.00', Venda.Total);
    edDescontoVenda.Text := FormatFloat('###,##0.00', Venda.Desconto);
  end;
end;

procedure TfVenda.btnSairClick(Sender: TObject);
begin

  if (Trim(edCodVenda.Text) = '') and (Application.MessageBox('Deseja sair da venda?', 'Confirma��o', MB_YESNO + 32) = 6) then
  begin
    Close;
  end
  else
  if (not (Trim(edCodVenda.Text) = '' ) and Venda.Cancelar()) then
    Close;
end;

procedure TfVenda.FocarGrid(edit : TEdit);
begin
  case edit.Tag of
    0 : begin
      if dbgVendedor.Visible then
        dbgVendedor.SetFocus;
    end;

    1 : begin
      if dbgCliente.Visible then
      dbgCliente.SetFocus;
    end;

    2 : begin
      if dbgPesqProduto.Visible then
        dbgPesqProduto.SetFocus;
    end;

  end;
end;

procedure TfVenda.PreencheCampos(grid: TDBGrid);
begin
  case grid.Tag of
    0 : begin 
      edIdVendedor.Text := dbgVendedor.Fields[0].Value;
      edVendedor.Text := dbgVendedor.Fields[1].Value;
      dbgVendedor.Visible := False;
    end;
    
    1 : begin
      edIdCliente.Text := dbgCliente.Fields[0].Value;
      edCliente.Text := dbgCliente.Fields[1].Value;
      dbgCliente.Visible := False;
    end;
    
    2 : begin
      edIdProd.Text := dbgPesqProduto.Fields[0].Value;
      edValorUnitario.Text := dbgPesqProduto.Fields[3].Text;
      edPesqProd.Text := dbgPesqProduto.Fields[1].Text;
      dbgPesqProduto.Visible := False;

      edQtdProduto.Text := '1';
      edDesconto.Text := '0,00';
      edQtdProduto.SetFocus; 
    end;
  end;
  
end;

procedure TfVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Cliente.Free;
  Venda.Free;
  Action := caFree;
  fVenda := nil;
end;

end.
