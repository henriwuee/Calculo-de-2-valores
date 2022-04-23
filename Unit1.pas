unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfCalculaValor = class(TForm)
    lblValor1: TLabel;
    lblValor2: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    lblResultado: TLabel;
    lblResult: TLabel;
    btnMais: TButton;
    btnMenos: TButton;
    btnMultiplica: TButton;
    btnDivide: TButton;
    btnPorcento: TButton;
    btnHistorico: TButton;
    Memo1: TMemo;
    btnLimpaHistórico: TButton;
    lblOp: TLabel;
    btnLucro: TButton;
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnMultiplicaClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPorcentoClick(Sender: TObject);
    procedure btnHistoricoClick(Sender: TObject);
    procedure btnLimpaHistóricoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtValor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValor2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLucroClick(Sender: TObject);
  public
    procedure VerificaValor1;
    procedure VerificaValor2;
  end;

var
  fCalculaValor: TfCalculaValor;

implementation

{$R *.dfm}

var calc : real;

procedure TfCalculaValor.VerificaValor1;
  begin
    Application.MessageBox('Campo de Valor 1 sem informação, por gentileza insira um dígito', 'Alerta!!', MB_Ok);
    abort
  end;

procedure TfCalculaValor.VerificaValor2;
  begin
    Application.MessageBox('Campo de Valor 2 sem informação, por gentileza insira um dígito', 'Alerta!!', MB_Ok);
    abort
  end;

procedure TfCalculaValor.btnDivideClick(Sender: TObject);
begin
  if edtValor2.Text <> '0' then
    begin
      calc := StrToFloat(edtValor1.Text) / StrToFloat(edtValor2.Text);
      lblResult.Caption := FloatToStr(calc);
      lblOp.Caption := '/';
      memo1.Lines.Add(edtValor1.Text + ' / ' + edtValor2.Text + ' = ' + lblResult.Caption);
    end
  else
    begin
     Application.MessageBox('Impossível dividir por 0, insira um valor no campo Valor 2', 'Alerta!', MB_Ok);
     Abort
    end;
end;

procedure TfCalculaValor.btnHistoricoClick(Sender: TObject);
begin
    if Memo1.Visible = true then
      begin
        Memo1.Visible := false;
      end
    else
      begin
        Memo1.Visible := true;
      end;
end;

procedure TfCalculaValor.btnLimpaHistóricoClick(Sender: TObject);
begin
  memo1.Clear;
end;

procedure TfCalculaValor.btnLucroClick(Sender: TObject);
var i : real;
begin
      if edtValor1.Text = '' then
      VerificaValor1;

      if edtValor2.Text = '' then
      VerificaValor2;

      i := StrToFloat(edtValor1.Text) - StrToFloat(edtValor2.Text);
      calc := (i / StrToFloat(edtValor2.Text)*100);
      lblOp.Caption := '-';
      lblResult.Caption := FloatToStr(calc);
      memo1.Lines.Add(edtValor1.Text + ' em cima de ' + edtValor2.Text + ' = ' + lblResult.Caption + '% de lucro');
end;

procedure TfCalculaValor.btnMaisClick(Sender: TObject);
begin
  if edtValor1.Text = '' then
  VerificaValor1;

  if edtValor2.Text = '' then
  VerificaValor2;

  calc := StrToFloat(edtValor1.Text) + StrToFloat(edtValor2.Text);
  lblResult.Caption := FloatToStr(calc);
  lblOp.Caption := '+';
  memo1.Lines.Add(edtValor1.Text + ' + ' + edtValor2.Text + ' = ' + lblResult.Caption);
end;

procedure TfCalculaValor.btnMenosClick(Sender: TObject);
begin
  if edtValor1.Text = '' then
  VerificaValor1;

  if edtValor2.Text = '' then
  VerificaValor2;

  calc := StrToFloat(edtValor1.Text) - StrToFloat(edtValor2.Text);
  lblResult.Caption := FloatToStr(calc);
  lblOp.Caption := '-';
  memo1.Lines.Add(edtValor1.Text + ' - ' + edtValor2.Text + ' = ' + lblResult.Caption);
end;

procedure TfCalculaValor.btnMultiplicaClick(Sender: TObject);
begin
  if edtValor1.Text = '' then
  VerificaValor1;

  if edtValor2.Text = '' then
  VerificaValor2;

  calc := StrToFloat(edtValor1.Text) * StrToFloat(edtValor2.Text);
  lblResult.Caption := FloatToStr(calc);
  lblOp.Caption := '*';
  memo1.Lines.Add(edtValor1.Text + ' * ' + edtValor2.Text + ' = ' + lblResult.Caption);
end;

procedure TfCalculaValor.btnPorcentoClick(Sender: TObject);
begin
  calc := (StrToFloat(edtValor1.Text)/100 * StrToFloat(edtValor2.Text));
  lblResult.Caption := FloatToStr(calc);
  lblOp.Font.Height := 15;
  lblOp.Caption := '% de';
  memo1.Lines.Add(edtValor1.Text + ' % ' + edtValor2.Text + ' = ' + lblResult.Caption);
end;

procedure TfCalculaValor.edtValor1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Char(Key) = #13) then
    begin
      edtValor2.SetFocus;
    end;
end;

procedure TfCalculaValor.edtValor2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Char(Key) = #13) then
    begin
      Application.MessageBox('Por gentileza, escolha uma das operações para serem realizadas.', 'ALERTA!', MB_ok);
    end;
end;

procedure TfCalculaValor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Char(Key) = #115) then
    begin
      if edtValor1.Text = '' then
      VerificaValor1;

      if edtValor2.Text = '' then
      VerificaValor2;
      calc := StrToFloat(edtValor1.Text) + StrToFloat(edtValor2.Text);
      lblResult.Caption := FloatToStr(calc);
      lblOp.Caption := '+';
      memo1.Lines.Add(edtValor1.Text + ' + ' + edtValor2.Text + ' = ' + lblResult.Caption);
    end;
  if (Char(Key) = #116) then
    begin
      begin
        if edtValor1.Text = '' then
        VerificaValor1;

        if edtValor2.Text = '' then
        VerificaValor2;
        calc := StrToFloat(edtValor1.Text) - StrToFloat(edtValor2.Text);
        lblResult.Caption := FloatToStr(calc);
        lblOp.Caption := '-';
        memo1.Lines.Add(edtValor1.Text + ' - ' + edtValor2.Text +  '= ' + lblResult.Caption);
      end;
    end;
  if (Char(Key) = #117) then
    begin
      if edtValor1.Text = '' then
      VerificaValor1;

      if edtValor2.Text = '' then
      VerificaValor2;
      calc := StrToFloat(edtValor1.Text) * StrToFloat(edtValor2.Text);
      lblResult.Caption := FloatToStr(calc);
      lblOp.Caption := '*';
      memo1.Lines.Add(edtValor1.Text + ' * ' + edtValor2.Text + ' = ' + lblResult.Caption);
    end;
  if (Char(Key) = #118) then
    begin
      if edtValor2.Text <> '0' then
      begin
        calc := StrToFloat(edtValor1.Text) / StrToFloat(edtValor2.Text);
        lblResult.Caption := FloatToStr(calc);
        lblOp.Caption := '/';
        memo1.Lines.Add(edtValor1.Text + ' / ' + edtValor2.Text + ' = ' + lblResult.Caption);
      end
    else
      begin
        Application.MessageBox('Impossível dividir por 0, insira um valor no campo Valor 2', 'Alerta!', MB_Ok);
        Abort
      end;
    end;
  if (Char(Key) = #119) then
    begin
      if edtValor1.Text = '' then
      VerificaValor1;

      if edtValor2.Text = '' then
      VerificaValor2;
      calc := (StrToFloat(edtValor1.Text)/100 * StrToFloat(edtValor2.Text));
      lblResult.Caption := FloatToStr(calc);
      lblOp.Font.Height := 15;
      lblOp.Caption := '% de';
      memo1.Lines.Add(edtValor1.Text + '% de ' + edtValor2.Text + '=' + lblResult.Caption);
    end;
  if (Char(Key) = #120) then
    begin
    var i : real;
      if edtValor1.Text = '' then
      VerificaValor1;

      if edtValor2.Text = '' then
      VerificaValor2;

      i := StrToFloat(edtValor1.Text) - StrToFloat(edtValor2.Text);
      calc := (i / StrToFloat(edtValor2.Text)*100);
      lblOp.Caption := '-';
      lblResult.Caption := FloatToStr(calc);
      memo1.Lines.Add(edtValor1.Text + ' em cima de ' + edtValor2.Text + ' = ' + lblResult.Caption + '% de lucro');
    end;
  if (Char(Key) = #121) then
    begin
        if Memo1.Visible = false then
        begin
          Memo1.Visible := true
        end
      else
        begin
          Memo1.Visible := false;
        end;
    end;
  if (Char(Key) = #122) then
    begin
      memo1.clear;
    end;
end;


procedure TfCalculaValor.FormShow(Sender: TObject);
begin
 memo1.Clear;
end;

end.
