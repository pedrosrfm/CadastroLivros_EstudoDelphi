unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Generics.Collections, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.NumberBox, Vcl.Samples.Spin;

type
  TLivro = record
    nome, autor, genero : string;
    numero : Integer;
    valor : Double;
  end;

  TForm1 = class(TForm)
    PanelCadastro: TPanel;
    LabelCadastro: TLabel;
    LabelNome: TLabel;
    EditNome: TEdit;
    LabelAutor: TLabel;
    EditAutor: TEdit;
    LabelGenero: TLabel;
    EditGenero: TEdit;
    LabelID: TLabel;
    EditNumero: TEdit;
    LabelValor: TLabel;
    ButtonCadastrar: TButton;
    NumberBoxValor: TNumberBox;
    Panel1: TPanel;
    LabelPesquisa: TLabel;
    ListBoxLivros: TListBox;
    ButtonAtualizar: TButton;
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure ButtonAtualizarClick(Sender: TObject);
  private

  public
    ListaLivro: TList<TLivro>;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

constructor TForm1.Create(AOwner: TComponent);
begin
  inherited;
  ListaLivro := TList<TLivro>.Create;
end;

destructor TForm1.Destroy;
begin
  ListaLivro.Free;
  inherited;
end;

procedure TForm1.ButtonAtualizarClick(Sender: TObject);
var
  Livro: TLivro;
begin
ListBoxLivros.Items.BeginUpdate;
  try
    ListBoxLivros.Clear;
    for Livro in ListaLivro do
      begin
        ListBoxLivros.Items.Add(Format('%s - %s - %s - %d - %.2f',
          [Livro.nome, Livro.autor, Livro.genero, Livro.numero, Livro.valor]));
      end;
  finally
    ListBoxLivros.Items.EndUpdate;
  end;
end;

procedure TForm1.ButtonCadastrarClick(Sender: TObject);
var
  Livro: TLivro;
begin
  try
    Livro.nome := EditNome.Text;
    Livro.autor := EditAutor.Text;
    Livro.genero := EditGenero.Text;
    Livro.numero := StrToInt(EditNumero.Text);
    Livro.valor := NumberBoxValor.Value;

    ListaLivro.Add(Livro);

    EditNome.Text := '';
    EditAutor.Text := '';
    EditGenero.Text := '';
    EditNumero.Text := '';
    NumberBoxValor.Value := 0.0;

    ShowMessage('Livro cadastrado com sucesso');

  except
    on E: EConvertError do
      ShowMessage('Por favor, insira um ID válido.');
  end;
end;
end.
