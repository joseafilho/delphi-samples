unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  // Uses para Inifiles
  System.IniFiles, Vcl.ComCtrls;

type
  TfmMain = class(TForm)
    mmDoc: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsDocumentacao: TTabSheet;
    Panel1: TPanel;
    btEscrever: TButton;
    btLer: TButton;
    mmOutput: TMemo;
    Label1: TLabel;
    edCaminho: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btLerClick(Sender: TObject);
    procedure btEscreverClick(Sender: TObject);
  private
    FConfiguracoes: TIniFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.FormCreate(Sender: TObject);
var
  PathIni: string;
begin
  { Parâmetro do construtor é o nome do arquivo que inicialização.
    Normalmente criado no mesmo path do executável da sistema.
  }
  PathIni := ExtractFilePath(Application.ExeName) + 'configuracoes.ini';
  FConfiguracoes := TIniFile.Create(PathIni);
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  FConfiguracoes.Free;
end;

procedure TfmMain.btLerClick(Sender: TObject);
begin
  edCaminho.Text := FConfiguracoes.ReadString('BANCO', 'CAMINHO', '');
  mmOutput.Lines.Add('Leu a configuração: BANCO > CAMINHO: ' + edCaminho.Text);
end;

procedure TfmMain.btEscreverClick(Sender: TObject);
begin
  FConfiguracoes.WriteString('BANCO', 'CAMINHO', edCaminho.Text);
  FConfiguracoes.UpdateFile;
  mmOutput.Lines.Add('Escreveu configuração: BANCO > CAMINHO: ' + edCaminho.Text);
  edCaminho.Clear;
end;

end.
