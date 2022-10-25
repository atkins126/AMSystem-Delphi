object fVenda: TfVenda
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 629
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  DesignSize = (
    983
    629)
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 65
    Height = 18
    Caption = 'N'#186' Venda'
  end
  object Label2: TLabel
    Left = 8
    Top = 66
    Width = 68
    Height = 18
    Caption = 'Vendedor'
  end
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 49
    Height = 18
    Caption = 'Cliente'
  end
  object Label4: TLabel
    Left = 8
    Top = 192
    Width = 55
    Height = 18
    Caption = 'Produto'
  end
  object Label5: TLabel
    Left = 547
    Top = 192
    Width = 29
    Height = 18
    Caption = 'Qtd.'
  end
  object Label6: TLabel
    Left = 640
    Top = 192
    Width = 55
    Height = 18
    Caption = 'R$ Unit.'
  end
  object Label7: TLabel
    Left = 734
    Top = 192
    Width = 41
    Height = 18
    Caption = 'Desc.'
  end
  object Label8: TLabel
    Left = 826
    Top = 188
    Width = 56
    Height = 18
    Caption = 'R$ Total'
  end
  object Label9: TLabel
    Left = 698
    Top = 8
    Width = 79
    Height = 18
    Caption = 'Descontos:'
  end
  object Label10: TLabel
    Left = 808
    Top = 8
    Width = 60
    Height = 18
    Caption = 'R$ Total:'
  end
  object edCodVenda: TEdit
    Left = 8
    Top = 28
    Width = 86
    Height = 26
    TabStop = False
    ReadOnly = True
    TabOrder = 0
  end
  object edIdVendedor: TEdit
    Left = 8
    Top = 86
    Width = 86
    Height = 26
    TabOrder = 1
    OnExit = edIdVendedorExit
  end
  object edIdCliente: TEdit
    Left = 8
    Top = 148
    Width = 86
    Height = 26
    TabOrder = 3
    OnExit = edIdClienteExit
  end
  object edIdProd: TEdit
    Left = 8
    Top = 212
    Width = 86
    Height = 26
    TabOrder = 5
    OnExit = edIdProdExit
  end
  object edVendedor: TEdit
    Left = 95
    Top = 86
    Width = 446
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 2
    OnChange = edVendedorChange
  end
  object edCliente: TEdit
    Left = 95
    Top = 148
    Width = 446
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = edClienteChange
  end
  object edPesqProd: TEdit
    Left = 95
    Top = 212
    Width = 446
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 6
    OnChange = edPesqProdChange
  end
  object edQtdProduto: TEdit
    Left = 547
    Top = 212
    Width = 86
    Height = 26
    TabOrder = 7
    OnEnter = edQtdProdutoEnter
    OnExit = edQtdProdutoExit
  end
  object edValorUnitario: TEdit
    Left = 640
    Top = 212
    Width = 86
    Height = 26
    TabOrder = 8
  end
  object edDesconto: TEdit
    Left = 734
    Top = 212
    Width = 86
    Height = 26
    TabOrder = 9
    OnExit = edDescontoExit
  end
  object edValorTotal: TEdit
    Left = 826
    Top = 212
    Width = 86
    Height = 26
    TabOrder = 10
    OnEnter = edValorTotalEnter
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 244
    Width = 967
    Height = 324
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dProdVenda
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 11
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idprod'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 430
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Qtd.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Alignment = taRightJustify
        Title.Caption = 'R$ Unit.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto'
        Title.Alignment = taRightJustify
        Title.Caption = 'Desconto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taRightJustify
        Title.Caption = 'R$ Total'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object btnSalvar: TButton
    Left = 8
    Top = 582
    Width = 125
    Height = 32
    Anchors = [akLeft, akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'F3 - Salvar'
    DragCursor = crHandPoint
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 12
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 139
    Top = 582
    Width = 125
    Height = 32
    Anchors = [akLeft, akBottom]
    Caption = 'F4 - Cancelar'
    DragCursor = crHandPoint
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object btnExcluirProduto: TButton
    Left = 270
    Top = 582
    Width = 125
    Height = 32
    Anchors = [akLeft, akBottom]
    Caption = 'F5 - Excluir Produto'
    DragCursor = crHandPoint
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object btnSair: TButton
    Left = 401
    Top = 582
    Width = 125
    Height = 32
    Anchors = [akLeft, akBottom]
    Caption = 'Esc - Sair'
    DragCursor = crHandPoint
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = btnSairClick
  end
  object dbgPesqProduto: TDBGrid
    Left = 810
    Top = 276
    Width = 814
    Height = 153
    DataSource = dPesqProd
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 16
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Visible = False
    OnDblClick = dbgPesqProdutoDblClick
    OnKeyDown = dbgPesqProdutoKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 425
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Title.Alignment = taRightJustify
        Title.Caption = 'Estoque'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pVenda'
        Title.Alignment = taRightJustify
        Title.Caption = 'R$ Venda'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object dbgVendedor: TDBGrid
    Left = 918
    Top = 61
    Width = 533
    Height = 120
    DataSource = dFuncionario
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 17
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Visible = False
    OnDblClick = dbgVendedorDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 430
        Visible = True
      end>
  end
  object dbgCliente: TDBGrid
    Left = 918
    Top = 118
    Width = 533
    Height = 120
    DataSource = dCliente
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 18
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Visible = False
    OnDblClick = dbgClienteDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 430
        Visible = True
      end>
  end
  object edDescontoVenda: TEdit
    Left = 698
    Top = 30
    Width = 104
    Height = 35
    Alignment = taRightJustify
    Color = clMedGray
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object edTotalVenda: TEdit
    Left = 808
    Top = 30
    Width = 104
    Height = 35
    Alignment = taRightJustify
    Color = clMedGray
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
  end
  object dFuncionario: TDataSource
    DataSet = qFuncionario
    Left = 876
    Top = 68
  end
  object dCliente: TDataSource
    DataSet = qCliente
    Left = 876
    Top = 128
  end
  object dProdVenda: TDataSource
    DataSet = qProdVenda
    Left = 920
    Top = 512
  end
  object dPesqProd: TDataSource
    DataSet = qPesqProd
    Left = 928
    Top = 328
  end
  object qFuncionario: TZReadOnlyQuery
    Connection = DataModule1.zCon
    SQL.Strings = (
      'Select id, nome From funcionario'
      '  where (id = :id or id = 0) or (nome like :nome);')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end>
    Left = 820
    Top = 69
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end>
    object qFuncionarioid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qFuncionarionome: TWideStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 255
    end
  end
  object qCliente: TZReadOnlyQuery
    Connection = DataModule1.zCon
    SQL.Strings = (
      'Select id, nome From cliente'
      '  where (id = :id or id = 0) or (nome like :nome);')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end>
    Left = 820
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 255
    end
  end
  object qPesqProd: TZReadOnlyQuery
    Connection = DataModule1.zCon
    SQL.Strings = (
      'Select id, descricao, estoque, pVenda From Produto'
      '  where (id = :id or id = 0) or (descricao like :descricao);')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end>
    Left = 880
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end>
    object qPesqProdid: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'id'
      ReadOnly = True
    end
    object qPesqProddescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 255
    end
    object qPesqProdestoque: TFloatField
      FieldName = 'estoque'
      ReadOnly = True
    end
    object qPesqProdpVenda: TFloatField
      FieldName = 'pVenda'
      ReadOnly = True
    end
  end
  object qProdVenda: TZQuery
    Connection = DataModule1.zCon
    UpdateObject = uProdVenda
    SQL.Strings = (
      
        'Select id, idVenda, idprod, descricao, valor, desconto, quantida' +
        'de, total, ex'
      '  From Venda_item where idvenda = :idVenda and ex = 9;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idVenda'
        ParamType = ptUnknown
      end>
    Left = 798
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idVenda'
        ParamType = ptUnknown
      end>
    object qProdVendaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qProdVendaidprod: TIntegerField
      FieldName = 'idprod'
      Required = True
    end
    object qProdVendadescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 255
    end
    object qProdVendaquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qProdVendadesconto: TFloatField
      FieldName = 'desconto'
      Required = True
    end
    object qProdVendatotal: TFloatField
      FieldName = 'total'
      Required = True
    end
    object qProdVendavalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
  object uProdVenda: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Venda_item'
      'WHERE'
      '  Venda_item.id = :OLD_id AND'
      '  Venda_item.idVenda = :OLD_idVenda AND'
      '  Venda_item.idprod = :OLD_idprod AND'
      '  Venda_item.valor = :OLD_valor AND'
      '  Venda_item.desconto = :OLD_desconto AND'
      '  Venda_item.quantidade = :OLD_quantidade AND'
      '  Venda_item.total = :OLD_total AND'
      '  Venda_item.ex = :OLD_ex')
    InsertSQL.Strings = (
      'INSERT INTO Venda_item'
      
        '  (idVenda, idprod, descricao, valor, desconto, quantidade, tota' +
        'l, '
      '   ex)'
      'VALUES'
      
        '  ((select max(id) from Venda), :idprod, :descricao, :valor, :de' +
        'sconto, :quantidade, '
      '   :total, 9)')
    ModifySQL.Strings = (
      'UPDATE Venda_item SET'
      '  id = :id,'
      '  idVenda = :idVenda,'
      '  idprod = :idprod,'
      '  descricao = :descricao,'
      '  valor = :valor,'
      '  desconto = :desconto,'
      '  quantidade = :quantidade,'
      '  total = :total,'
      '  ex = :ex'
      'WHERE'
      '  Venda_item.id = :OLD_id AND'
      '  Venda_item.idVenda = :OLD_idVenda AND'
      '  Venda_item.idprod = :OLD_idprod AND'
      '  Venda_item.valor = :OLD_valor AND'
      '  Venda_item.desconto = :OLD_desconto AND'
      '  Venda_item.quantidade = :OLD_quantidade AND'
      '  Venda_item.total = :OLD_total AND'
      '  Venda_item.ex = :OLD_ex')
    UseSequenceFieldForRefreshSQL = False
    Left = 861
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idVenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idprod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'quantidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idVenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idprod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_quantidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ex'
        ParamType = ptUnknown
      end>
  end
  object qVenda: TZQuery
    Connection = DataModule1.zCon
    UpdateObject = uVenda
    SQL.Strings = (
      'Select id From Venda where id = (select max(id) from Venda);')
    Params = <>
    Left = 24
    Top = 512
    object qVendaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object uVenda: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Venda'
      'WHERE'
      '  Venda.id = :OLD_id')
    InsertSQL.Strings = (
      
        'insert into venda (ID, EX) select (select max(id)+1 from venda),' +
        ' 1;')
    ModifySQL.Strings = (
      'UPDATE VENDA SET '
      'ID_CLIENTE = :ID_CLIENTE, CLIENTE = :CLIENTE, '
      'VALOR = :VALOR, DESCONTO = :DESC,'
      ' VALOR_TOTAL = :TOTAL, "PAGO = :PAGO , '
      'VENDEDOR = :VENDEDOR, DATA_VENDA = :DATA, EX = 0 '
      'WHERE ID = :id;')
    UseSequenceFieldForRefreshSQL = False
    Left = 72
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
end
