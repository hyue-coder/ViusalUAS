unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblDiskon: TLabel;
    edtNik: TEdit;
    edtNama: TEdit;
    edtTelp: TEdit;
    edtEmail: TEdit;
    edtAlamat: TEdit;
    cmbMember: TComboBox;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnBatal: TButton;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    Label13: TLabel;
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cmbMemberChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3;

{$R *.dfm}

procedure TForm1.btnBaruClick(Sender: TObject);
begin
  edtNik.Text := '';
  edtNama.Text := '';
  edtTelp.Text := '';
  edtEmail.Text := '';
  edtAlamat.Text := '';
  cmbMember.ItemIndex := -1
end;

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  // Validasi input
  if (edtNik.Text <> '') and (edtNama.Text <> '') and (edtTelp.Text <> '') and
     (edtEmail.Text <> '') and (edtAlamat.Text <> '') then
  begin
    // Pastikan dataset terhubung aktif sebelum operasi
    if not DBGrid1.DataSource.DataSet.Active then
      DBGrid1.DataSource.DataSet.Open;

    // Menambahkan data baru ke dataset
    DBGrid1.DataSource.DataSet.Append;
    DBGrid1.DataSource.DataSet.FieldByName('nik').AsString := edtNik.Text;
    DBGrid1.DataSource.DataSet.FieldByName('nama').AsString := edtNama.Text;
    DBGrid1.DataSource.DataSet.FieldByName('telepon').AsString := edtTelp.Text;
    DBGrid1.DataSource.DataSet.FieldByName('email').AsString := edtEmail.Text;
    DBGrid1.DataSource.DataSet.FieldByName('alamat').AsString := edtAlamat.Text;
    DBGrid1.DataSource.DataSet.Post;
  end
  else
    ShowMessage('Harap isi semua kolom');
end;


procedure TForm1.btnEditClick(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount > 0 then
  begin
    DBGrid1.DataSource.DataSet.Edit;
    DBGrid1.DataSource.DataSet.FieldByName('nik').AsString := edtNik.Text;
    DBGrid1.DataSource.DataSet.FieldByName('nama').AsString := edtNama.Text;
    DBGrid1.DataSource.DataSet.FieldByName('telepon').AsString := edtTelp.Text;
    DBGrid1.DataSource.DataSet.FieldByName('email').AsString := edtEmail.Text;
    DBGrid1.DataSource.DataSet.FieldByName('alamat').AsString := edtAlamat.Text;
    DBGrid1.DataSource.DataSet.Post;
  end;
end;

procedure TForm1.btnHapusClick(Sender: TObject);
begin
 if DBGrid1.DataSource.DataSet.RecordCount > 0 then
  begin
    if MessageDlg('apakah anda yakin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0) =mrYes then
      DBGrid1.DataSource.DataSet.Delete;
  end
  else
    ShowMessage('pilioh data yang ingin dihapus.');

end;

procedure TForm1.btnBatalClick(Sender: TObject);
begin
  edtNik.Text := '';
  edtNama.Text := '';
  edtTelp.Text := '';
  edtEmail.Text := '';
  edtAlamat.Text := '';
  cmbMember.ItemIndex := -1
end;

procedure TForm1.cmbMemberChange(Sender: TObject);
var
  Diskon: Double;
begin
  if cmbMember.ItemIndex = 0 then
    Diskon := 10
  else
    Diskon := 5;

  lblDiskon.Caption := 'Diskon ' + FloatToStr(Diskon) + ' %';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form3.QuickRep1.Preview;
end;

end.
