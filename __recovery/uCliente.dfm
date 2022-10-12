object fCliente: TfCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 649
  ClientWidth = 999
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    999
    649)
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 999
    Height = 29
    ButtonHeight = 29
    ButtonWidth = 29
    Caption = 'ToolBar1'
    Color = clBtnShadow
    Images = ImageList1
    ParentColor = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object tbNovo: TToolButton
      Left = 0
      Top = 0
      Margins.Left = 7
      Caption = 'Novo'
      ImageIndex = 0
      OnClick = tbNovoClick
    end
    object tbEditar: TToolButton
      Left = 29
      Top = 0
      Caption = 'Editar'
      ImageIndex = 1
      OnClick = tbEditarClick
    end
    object tbSalvar: TToolButton
      Left = 58
      Top = 0
      Caption = 'Salvar'
      ImageIndex = 2
      OnClick = tbSalvarClick
    end
    object tbCancelar: TToolButton
      Left = 87
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 3
      OnClick = tbCancelarClick
    end
    object tbSair: TToolButton
      Left = 116
      Top = 0
      Caption = 'Sair'
      ImageIndex = 4
      OnClick = tbSairClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 56
    Width = 999
    Height = 593
    ActivePage = pgTabela
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object pgTabela: TTabSheet
      Caption = 'Tabela'
      DesignSize = (
        991
        565)
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 985
        Height = 562
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dCliente
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'id'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'rg'
            Title.Alignment = taCenter
            Title.Caption = 'RG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CPFCNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CPF / CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtNasc'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Nasc'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endereco'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numEndereco'
            Title.Caption = 'N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Title.Caption = 'Bairro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtRegistro'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Registro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tipo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ativo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end>
      end
    end
    object pgDados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      object Label1: TLabel
        Left = 24
        Top = 29
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Edit1: TEdit
        Left = 24
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
    end
  end
  object qCliente: TZReadOnlyQuery
    Connection = DataModule1.zCon
    SQL.Strings = (
      'Select * from Cliente')
    Params = <>
    Left = 26
    Top = 568
    object qClienteid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qClientenome: TWideStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 250
    end
    object qClienterg: TWideStringField
      FieldName = 'rg'
      ReadOnly = True
      Size = 10
    end
    object qClienteCPFCNPJ: TWideStringField
      FieldName = 'CPFCNPJ'
      ReadOnly = True
      Size = 11
    end
    object qClienteDtNasc: TDateField
      FieldName = 'DtNasc'
      ReadOnly = True
    end
    object qClienteendereco: TWideStringField
      FieldName = 'endereco'
      ReadOnly = True
      Size = 255
    end
    object qClientenumEndereco: TWideStringField
      FieldName = 'numEndereco'
      ReadOnly = True
      Size = 5
    end
    object qClientebairro: TWideStringField
      FieldName = 'bairro'
      ReadOnly = True
      Size = 250
    end
    object qClienteDtRegistro: TDateField
      FieldName = 'DtRegistro'
      ReadOnly = True
    end
    object qClientetipo: TWideStringField
      FieldName = 'tipo'
      ReadOnly = True
      Size = 1
    end
    object qClienteativo: TWideStringField
      FieldName = 'ativo'
      ReadOnly = True
      Size = 1
    end
  end
  object dCliente: TDataSource
    DataSet = qCliente
    Left = 122
    Top = 568
  end
  object ImageList1: TImageList
    Left = 928
    Bitmap = {
      494C010105000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C527EFF0C527EFF0C527EFF1894E3FF1793E2FF1793E2FF1692
      E1FF1591E0FF1591E0FF1591E0FF0C527EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D537FFFF3F3F3FFE9E9E9FF1995E4FF1894E3FF1793E2FF1793
      E2FF1692E1FF1591E0FF1591E0FF1591E0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E5581FFF3F3F3FFE9E9E9FF1A96E5FF1995E4FF1894E3FF1794
      E3FF1793E2FF1692E1FF1591E0FF1591E0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F5683FFF3F3F3FFE9E9E9FF1B97E6FF1A96E5FF1995E4FF1894
      E3FF1894E3FF1793E2FF1692E1FF1591E0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A3AC8103C3C
      DAFF3A3AC8FF3A3AC8FF3A3AC8FF3A3AC8FF1B98E7FF1B97E6FF1A96E5FF1995
      E4FF1895E4FF1894E3FF1793E2FF1692E1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004040DEFF4040DEFF4040
      DEFF4040DEFF4040DEFF4040DEFF4040DEFF1C99E8FF1B98E7FF1B97E6FF1A96
      E5FF1995E4FF1895E4FF1894E3FF1793E2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004343E1FF4343E1FF4343E1FF4343
      E1FF4343E1FF4343E1FF4343E1FF4343E1FF1D99E8FF1C99E8FF1C98E7FF1B97
      E6FF1A96E5FF1996E5FF1995E4FF1894E3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004646E4EF4646E4FF4646
      E4FF4646E4FF4646E4FF4646E4FF4646E4FF1E9AE9FF1D9AE9FF1C99E8FF1C98
      E7FF1B97E6FF1A96E5FF1996E5FF1995E4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      E7FF00000000155E8DFFF3F3F3FFE9E9E9FF1F9BEAFF1E9AE9FF1D9AE9FF1D99
      E8FF1C98E7FF1B97E6FF1A96E5FF1A96E5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000016608EFFF3F3F3FFE9E9E9FF209CEBFF1F9BEAFF1E9BEAFF1D9A
      E9FF1D99E8FF1C98E7FF1B97E6FF1A97E6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000176190FFF3F3F3FFE9E9E9FF219DECFF209CEBFF1F9BEAFF1E9B
      EAFF1D9AE9FF1D99E8FF1C98E7FF1B97E6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000186392FFF3F3F3FFE9E9E9FF219EEDFF219DECFF209CEBFF1F9B
      EAFF1E9BEAFF1E9AE9FF1D99E8FF1C98E7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000196494FFF3F3F3FFE9E9E9FF229FEEFF229EEDFF219DECFF209C
      EBFF1F9CEBFF1E9BEAFF1E9AE9FF1D99E8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A6696FF1A6696FF133C7AFF23A0EFFF229FEEFF229EEDFF219D
      ECFF209DECFF1F9CEBFF1F9BEAFF1A6696FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000002000000080000000E00000012000000110000000B000000040000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000060AE27FF60AF27FF71CC2EFF71CC2EFF60AE27FF60AE27FF0000
      0000000000000000000000000000000000000000000000000000000000007C70
      67FF7C7067FF7C7067FF7C7067FF7C7067FF7C7067FF7C7067FF7C7067FF7C70
      67FF7C7067FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      00080000001E000000400000005B00000067000000630000004F0000002B0000
      00100000000400000000000000000000000000000000000000000000000060AE
      27FF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC
      2EFF60AE27FF00000000000000000000000000000000000000007C7067FFE0E0
      E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FF7C7067FF00000000000000000000000000000000B98029FFB980
      29FFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3
      BDFFB98029FFB98029FF000000000000000000000000FFFFFF000000000D0000
      003B010122AF020145FF0C0B6CFF0A0A85FF050579FF050252FF010131E20000
      096B0000001D00000004000029000000000000000000000000000000000071CC
      2EFF71CC2EFF71CC2EFF71CC2EFF60AE27FF60AE27FF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF00000000000000000000000000000000000000007C7067FFDCDC
      DCFFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDBDB
      DBFFE2E2E2FF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
      ECFFDB9834FFDB9834FF0000000000000000000000010000000A000000420202
      46EC050596FF0606A3FF1515AFFF1616B1FF1110AFFF0A0AA8FF0908A2FF0303
      64FF010125A50000001B0000000200000000000000000000000071CC2EFF71CC
      2EFF71CC2EFF71CC2EFF71CC2EFFF1F0ECFFF1F0ECFF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF71CC2EFF000000000000000000000000000000007C7067FFE0E0
      E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE8E3E2FF0099CCFF0098
      CCFFE6E6E6FF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFF1F0ECFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFF1F0
      ECFFDB9834FFDB9834FF0000000000000000000000030000002C03035AEB0707
      B2FF0909B9FF0E0EBEFF2B2AC8FF2D2CD2FF2121CEFF1917BBFF1212B1FF0E0E
      AFFF070687FF01012B8A0000000D00000001000000000000000071CC2EFF71CC
      2EFF71CC2EFF71CC2EFF71CC2EFFF1F0ECFFF1F0ECFF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF71CC2EFF000000000000000000000000000000007C7067FFE5E5
      E5FFE5E5E5FFE6E6E6FFE7E7E7FFE7E7E7FF0094CAFF0099CCFF73C7E6FF0099
      CCFFEAEAEAFF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFF1F0ECFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFF1F0
      ECFFDB9834FFDB9834FF00000000000000000000000D03034DA30707C2FF0B0B
      CBFF1010BFFFAEAEB6FF504EB8FF3A34D1FF312AD1FF403EB2FFADADB5FF1514
      B3FF1010B8FF090680FF0000002800000002000000006DC42CFF71CC2EFF71CC
      2EFF71CC2EFF71CC2EFF71CC2EFFF1F0ECFFF1F0ECFF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF71CC2EFF60AE27FF0000000000000000000000007C7067FFEAEA
      EAFFEBEBEBFFEBEBEBFFECECECFF0094CAFF0098CCFF87EFFEFF0099CCFFEBEB
      EBFFEEEEEEFF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
      ECFFDB9834FFDB9834FF00000000000000000000001C080798FF1D1EDCFF1717
      DBFF3E3CC2FFE4E4E4FFEBEBEBFF4844B5FF4542B3FFE4E4E4FFD8D8D8FF3736
      B3FF1B1AC9FF1C1DC5FF03035286000000050000000071CC2EFF71CC2EFF71CC
      2EFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
      ECFF71CC2EFF71CC2EFF71CC2EFF0000000000000000000000007C7067FFEFEF
      EFFFEFEFEFFFF0F0F0FF0094CAFF0098CCFF8AEEFEFF0099CCFF76C4DEFFEFEF
      EFFFF1F1F1FF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
      34FFDB9834FFDB9834FF0000000000000000000000262221C8FF5454F0FF2624
      EEFF322ADFFF534EC3FFF3F3F3FFF4F4F4FFF3F3F3FFF5F5F5FF4F49C1FF322D
      D5FF2524DAFF2324D3FF060689D6000000060000000071CC2EFF71CC2EFF71CC
      2EFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
      ECFF71CC2EFF71CC2EFF71CC2EFF0000000000000000000000007C7067FFF3F3
      F3FFF3F3F3FF0094C9FF0098CCFF8AEEFEFF0099CCFF79C6E0FFF4F4F4FFF3F3
      F3FFF5F5F5FF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
      34FFDB9834FFDB9834FF0000000000000000000000253333E9FF4140F6FF645F
      F9FF635BF2FF4337CDFF6E68C1FFF8F8F8FFFAFAFAFF6D68C1FF3D35CBFF443A
      ECFF302CE8FF1C1CDCFF0909A4FA000000040000000071CB2EF371CC2EFF71CC
      2EFF71CC2EFF71CC2EFF71CC2EFFF1F0ECFFF1F0ECFF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF71CC2EFF55AA55030000000000000000000000007C7067FFF7F7
      F7FF0093C9FF0098CCFF8AEEFEFF0099CCFF79C7E2FFF8F8F8FFF8F8F8FFF7F7
      F7FFF8F8F8FF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
      34FFDB9834FFDB9834FF00000000000000000000001A2B2AE0FF4644FAFF615B
      F9FF5D55E4FF6B65C3FFF2F2F2FFEFEFEFFFF1F1F1FFF6F6F6FF544FC2FF3F38
      DFFF3430EEFF1D1DE7FF0F0FA3EB00000002000000000000000071CC2EFF71CC
      2EFF71CC2EFF71CC2EFF71CC2EFFF1F0ECFFF1F0ECFF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF71CC2EFF000000000000000000000000000000007C7067FF0093
      C9FF0098CCFF8AEEFEFF0099CCFF7BC9E3FFFBFBFBFFC7C1BEFFC8C3BFFFC8C3
      BFFFA59D97FF7C7067FF00000000000000000000000000000000DB9834FFDB98
      34FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFDB9834FFDB9834FF0000000000000000000000091C1BBEFF4746FAFF4C47
      EFFF5955C6FFE5E5E5FFE9E9E9FF635CB8FF594EBAFFECECECFFE5E5E5FF4B47
      C1FF302DE9FF1E1FEEFF1D1D9EA000000001000000000000000071CC2EFF71CC
      2EFF71CC2EFF71CC2EFF71CC2EFFF1F0ECFFF1F0ECFF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF71CC2EFF00000000000000000000000000000000009CD3FF0098
      CCFF8AEEFEFF0099CCFF7DCBE4FFFDFDFDFFFDFDFDFFC9C5C1FFC9C5C1FFA79E
      98FF7C7067FF0000000000000000000000000000000000000000DB9834FFDB98
      34FFB98029FFF1F0ECFFA6A595FFA6A595FFF1F0ECFFF1F0ECFFF1F0ECFFB980
      29FFDB9834FFDB9834FF0000000000000000000000012121ACD17D7EF4FF4946
      EAFF302CB9FFAEAEB1FF5D55BDFF7061DEFF5A49DEFF554FBDFF919195FF2320
      B9FF2B2AE8FF2927D7FF282889150000000000000000000000000000000071CC
      2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC
      2EFF71CC2EFF000000000000000000000000000000000099CCFF0098CCFFE7F2
      F4FF0099CCFF7DCBE5FFFEFEFEFFFEFEFEFFFEFEFEFFCAC5C2FFA8A09AFF7C70
      67FF000000000000000000000000000000000000000000000000DB9834FFDB98
      34FFB98029FFA6A595FFA6A595FFA6A595FFF1F0ECFFF1F0ECFFF1F0ECFFB980
      29FFDB9834FFDB9734880000000000000000000000002F2F9A1B5454DFFF9897
      EFFF4B47DEFF403AD0FF5248E6FF6457F8FF5B4EF8FF463CE5FF2F2BCFFF2D2B
      DEFF2C2CF4FF4343C5BE00000001000000000000000000000000000000000000
      000071CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC
      2EFF00000000000000000000000000000000000000000099CCFF7191FFFF0099
      CCFF7ECBE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A19BFF7C7067FF0000
      0000000000000000000000000000000000000000000000000000DB9834FFDB98
      34FFB98029FFC7C3BDFFC7C3BDFFC7C3BDFFF1F0ECFFF1F0ECFFF1F0ECFFB980
      29FFDB97348800000000000000000000000000000000000000014A4ACA697D7D
      EFFFB7B6F6FFA4A2F3FF6E68FAFF615BFEFF5149FFFF5651FAFF6462F4FF504F
      F6FF4F4FD7EB000000035656E000000000000000000000000000000000000000
      0000000000000000000070CB2EEE71CC2EFF71CC2EFF71CC2DC4000000000000
      000000000000000000000000000000000000000000000099CCFF0099CCFF3D85
      9BFF7C7067FF7C7067FF7C7067FF7C7067FF7C7067FF7C7067FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF005050
      CF4D5656E1FFACACFEFFCFCEFEFFC9C8FDFFC1C0FBFF9393FCFF4F4EEBFF5252
      D6B700000002FFFFFF005757E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005757E1005757E1005757
      E100000000015151D0435454D9A65656DDD55555DBBB5050CF654646B40F5757
      E1005757E1005757E1005757E10000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F800000000000000
      F800000000000000F800000000000000F800000000000000C000000000000000
      800000000000000000000000000000008000000000000000E800000000000000
      F800000000000000F800000000000000F800000000000000F800000000000000
      F800000000000000FFFF000000000000FFFFFFFFFFFFF00FF81FE007FFFFC007
      E007C003C0038001E007C003C0030001C003C003C0030000C003C003C0030000
      8001C003C00300008001C003C00300008001C003C00300008001C003C0030000
      C003C003C0030000C003C007C0030001E007800FC0038001F00F801FC0078001
      FC3F803FFFFF8001FFFFFFFFFFFF800100000000000000000000000000000000
      000000000000}
  end
  object ZQuery1: TZQuery
    Connection = DataModule1.zCon
    Params = <>
    DataSource = dCliente
    Left = 76
    Top = 568
  end
end
