unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, uDM,
  ZAbstractRODataset, ZDataset, Vcl.ComCtrls, Vcl.Tabs, Vcl.DockTabSet,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, ZAbstractDataset;

type
  TfCliente = class(TForm)
    dCliente: TDataSource;
    qCliente: TZReadOnlyQuery;
    qClienteid: TIntegerField;
    qClientenome: TWideStringField;
    qClienterg: TWideStringField;
    qClienteCPFCNPJ: TWideStringField;
    qClienteDtNasc: TDateField;
    qClienteendereco: TWideStringField;
    qClientenumEndereco: TWideStringField;
    qClientebairro: TWideStringField;
    qClienteDtRegistro: TDateField;
    qClientetipo: TWideStringField;
    qClienteativo: TWideStringField;
    ToolBar1: TToolBar;
    tbNovo: TToolButton;
    ImageList1: TImageList;
    tbEditar: TToolButton;
    tbSalvar: TToolButton;
    tbCancelar: TToolButton;
    tbSair: TToolButton;
    PageControl1: TPageControl;
    pgTabela: TTabSheet;
    DBGrid1: TDBGrid;
    pgDados: TTabSheet;
    Label1: TLabel;
    Edit1: TEdit;
    ZQuery1: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tbSairClick(Sender: TObject);
    procedure tbNovoClick(Sender: TObject);
    procedure tbCancelarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure tbSalvarClick(Sender: TObject);
    procedure tbEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCliente: TfCliente;

implementation

{$R *.dfm}

procedure TfCliente.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfCliente.FormActivate(Sender: TObject);
begin
  qCliente.Open;
end;

procedure TfCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Destroy;
end;

procedure TfCliente.FormCreate(Sender: TObject);
begin
  tbNovo.Enabled := true;
  tbEditar.Enabled := true;
  tbSalvar.Enabled := false;
  tbCancelar.Enabled := false;
end;

procedure TfCliente.tbCancelarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;

  tbNovo.Enabled := true;
  tbEditar.Enabled := true;
  tbSalvar.Enabled := false;
  tbCancelar.Enabled := false;
end;

procedure TfCliente.tbEditarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;

  tbNovo.Enabled := false;
  tbEditar.Enabled := false;
  tbSalvar.Enabled := true;
  tbCancelar.Enabled := true;
end;

procedure TfCliente.tbNovoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;

  tbNovo.Enabled := false;
  tbEditar.Enabled := false;
  tbSalvar.Enabled := true;
  tbCancelar.Enabled := true;
end;

procedure TfCliente.tbSairClick(Sender: TObject);
begin
  Destroy;
end;

procedure TfCliente.tbSalvarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;

  tbNovo.Enabled := true;
  tbEditar.Enabled := true;
  tbSalvar.Enabled := false;
  tbCancelar.Enabled := false;
end;

end.
