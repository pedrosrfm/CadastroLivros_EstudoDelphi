object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 431
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LabelCadastro: TLabel
    Left = 8
    Top = 36
    Width = 166
    Height = 30
    Caption = 'Cadastro de livro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelPesquisa: TLabel
    Left = 311
    Top = 36
    Width = 84
    Height = 30
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PanelCadastro: TPanel
    Left = 8
    Top = 72
    Width = 297
    Height = 345
    TabOrder = 0
    object LabelNome: TLabel
      Left = 8
      Top = 24
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object LabelAutor: TLabel
      Left = 8
      Top = 74
      Width = 30
      Height = 15
      Caption = 'Autor'
    end
    object LabelGenero: TLabel
      Left = 8
      Top = 124
      Width = 38
      Height = 15
      Caption = 'G'#234'nero'
    end
    object LabelID: TLabel
      Left = 8
      Top = 174
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object LabelValor: TLabel
      Left = 8
      Top = 224
      Width = 26
      Height = 15
      Caption = 'Valor'
    end
    object EditNome: TEdit
      Left = 8
      Top = 45
      Width = 273
      Height = 23
      TabOrder = 0
    end
    object EditAutor: TEdit
      Left = 8
      Top = 95
      Width = 273
      Height = 23
      TabOrder = 1
    end
    object EditGenero: TEdit
      Left = 8
      Top = 145
      Width = 273
      Height = 23
      TabOrder = 2
    end
    object ButtonCadastrar: TButton
      Left = 8
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 3
      OnClick = ButtonCadastrarClick
    end
    object NumberBoxValor: TNumberBox
      Left = 8
      Top = 245
      Width = 121
      Height = 23
      TabOrder = 4
    end
    object EditNumero: TEdit
      Left = 8
      Top = 195
      Width = 273
      Height = 23
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 311
    Top = 72
    Width = 338
    Height = 345
    TabOrder = 1
    object ListBoxLivros: TListBox
      Left = 16
      Top = 24
      Width = 305
      Height = 265
      ItemHeight = 15
      TabOrder = 0
    end
    object Atualizar: TButton
      Left = 16
      Top = 295
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = ButtonAtualizarClick
    end
  end
end
