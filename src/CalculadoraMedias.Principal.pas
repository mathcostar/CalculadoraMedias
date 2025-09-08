unit CalculadoraMedias.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    edtNotaUm: TEdit;
    lblNotaUm: TLabel;
    edtNotaDois: TEdit;
    lblNotaDois: TLabel;
    edtNotaTres: TEdit;
    lblNotaTres: TLabel;
    btnLimpar: TButton;
    btnCalcular: TButton;
    lblMedia: TLabel;
    lblSituacao: TLabel;
    lblResultadoMedia: TLabel;
    lblResultadoSituacao: TLabel;
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure LimparCampos;
    procedure edtNotaExit(Sender: TObject);
    procedure AlterarCorDeAcordoComASituacao(pMedia: Double);
    procedure ValidarNotas(pCampo: TEdit; pNota: string);
    procedure ValidarSituacaoEMedia(pMedia: Double);

    function ValidarCampos: Boolean;
    function CalcularMedia(const pNotas: array of Double): Double;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  if ValidarCampos() then
    ValidarSituacaoEMedia(CalcularMedia([
      StrToFloatDef(edtNotaUm.Text, 0),
      StrToFloatDef(edtNotaDois.Text, 0),
      StrToFloatDef(edtNotaTres.Text, 0)
    ]));
end;

procedure TfrmPrincipal.edtNotaExit(Sender: TObject);
begin
  ValidarNotas(TEdit(Sender), TEdit(Sender).Text);
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  LimparCampos();
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  edtNotaUm.OnExit := edtNotaExit;
  edtNotaDois.OnExit := edtNotaExit;
  edtNotaTres.OnExit := edtNotaExit;
end;

procedure TfrmPrincipal.LimparCampos;
begin
  edtNotaUm.Clear();
  edtNotaDois.Clear();
  edtNotaTres.Clear();

  lblResultadoMedia.Caption := '';
  lblResultadoSituacao.Caption := '';

  lblResultadoMedia.Font.Color := clWindowText;
  lblResultadoSituacao.Font.Color := clWindowText;
end;

procedure TfrmPrincipal.ValidarNotas(pCampo: TEdit; pNota: string);
var
  lNota: Double;
const
  MENSAGEM_VALOR_INVALIDO: string = 'Insira um valor válido entre 0 e 10 (utilize vírgula para decimais).';
begin
  if TryStrToFloat(pNota, lNota) then
  begin
    if lNota > 10 then
      lNota := 10
    else if lNota < 0 then
      lNota := 0;

    pCampo.Text := FormatFloat('0.00', lNota);
  end
  else if pCampo.Text <> '' then
  begin
    ShowMessage(MENSAGEM_VALOR_INVALIDO);
    pCampo.Clear();
    pCampo.SetFocus();
    Exit();
  end;
end;

procedure TfrmPrincipal.ValidarSituacaoEMedia(pMedia: Double);
begin
  AlterarCorDeAcordoComASituacao(pMedia);
  lblResultadoMedia.Caption := Format('%.2f', [pMedia]);

  if pMedia >= 7 then
    lblResultadoSituacao.Caption := 'Aprovado'
  else if pMedia >= 5.0 then
    lblResultadoSituacao.Caption := 'Recuperação'
  else
    lblResultadoSituacao.Caption := 'Reprovado';
end;

procedure TfrmPrincipal.AlterarCorDeAcordoComASituacao(pMedia: Double);
begin
  if pMedia >= 7 then
    begin
      lblResultadoMedia.Font.Color := clGreen;
      lblResultadoSituacao.Font.Color := clGreen;
    end
  else if pMedia >= 5.0 then
    begin
      lblResultadoMedia.Font.Color := clOlive;
      lblResultadoSituacao.Font.Color := clOlive;
    end
  else
    begin
      lblResultadoMedia.Font.Color := clRed;
      lblResultadoSituacao.Font.Color := clRed;
    end;
end;

function TfrmPrincipal.ValidarCampos: Boolean;
const
  MENSAGEM_CAMPOS_INVALIDOS: string = 'Por favor, preencha todos os campos.';
begin
  Result := True;

  if (edtNotaUm.Text = '') or (edtNotaDois.Text = '') or (edtNotaTres.Text = '') then
    begin
      ShowMessage(MENSAGEM_CAMPOS_INVALIDOS);
      Exit(False);
    end;
end;

function TfrmPrincipal.CalcularMedia(const pNotas: array of Double): Double;
var
  I: Integer;
  lSoma: Double;
begin
  lSoma := 0;
  for i := Low(pnotas) to High(pNotas) do
    lSoma := lSoma + pNotas[I];

  if Length(pNotas) > 0 then
    Result := lSoma / Length(pNotas)
  else
    Result := 0;
end;

end.
