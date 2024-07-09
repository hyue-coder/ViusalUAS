object Form1: TForm1
  Left = 241
  Top = 189
  Width = 1078
  Height = 533
  Caption = 'Form1'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 21
    Height = 14
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 33
    Height = 14
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 48
    Height = 14
    Caption = 'Telepon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 136
    Width = 31
    Height = 14
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 176
    Width = 43
    Height = 14
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 208
    Width = 49
    Height = 14
    Caption = 'Member'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDiskon: TLabel
    Left = 424
    Top = 216
    Width = 47
    Height = 16
    Caption = 'DISKON'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 376
    Top = 456
    Width = 152
    Height = 13
    Caption = 'HAPUS DATA YANG DIPILIH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 760
    Top = 40
    Width = 220
    Height = 23
    Caption = 'PROGRAM PENJUALAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 760
    Top = 80
    Width = 138
    Height = 13
    Caption = 'NAMA : MUHAMMAD WAHYU'
  end
  object Label10: TLabel
    Left = 760
    Top = 112
    Width = 91
    Height = 13
    Caption = 'NPM : 2210010101'
  end
  object Label11: TLabel
    Left = 760
    Top = 144
    Width = 160
    Height = 13
    Caption = 'KELAS : 4O Reg Pagi Banjarmasin'
  end
  object Label12: TLabel
    Left = 760
    Top = 176
    Width = 205
    Height = 13
    Caption = 'MATKUL : UJIAN AKHIR SEMESTER VISUAL'
  end
  object Label13: TLabel
    Left = 560
    Top = 456
    Width = 78
    Height = 13
    Caption = 'REPORT DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNik: TEdit
    Left = 128
    Top = 40
    Width = 409
    Height = 21
    TabOrder = 0
  end
  object edtNama: TEdit
    Left = 128
    Top = 72
    Width = 409
    Height = 21
    TabOrder = 1
  end
  object edtTelp: TEdit
    Left = 128
    Top = 104
    Width = 409
    Height = 21
    TabOrder = 2
  end
  object edtEmail: TEdit
    Left = 128
    Top = 136
    Width = 409
    Height = 21
    TabOrder = 3
  end
  object edtAlamat: TEdit
    Left = 128
    Top = 176
    Width = 409
    Height = 21
    TabOrder = 4
  end
  object cmbMember: TComboBox
    Left = 128
    Top = 216
    Width = 281
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cmbMemberChange
    Items.Strings = (
      'YES'
      'NO')
  end
  object btnBaru: TButton
    Left = 552
    Top = 40
    Width = 97
    Height = 65
    Caption = 'BUAT BARU'
    TabOrder = 6
    OnClick = btnBaruClick
  end
  object btnSimpan: TButton
    Left = 552
    Top = 112
    Width = 97
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 552
    Top = 144
    Width = 97
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 376
    Top = 424
    Width = 153
    Height = 25
    Caption = 'HAPUS DATA'
    TabOrder = 9
    OnClick = btnHapusClick
  end
  object btnBatal: TButton
    Left = 552
    Top = 176
    Width = 97
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btnBatalClick
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 264
    Width = 529
    Height = 153
    DataSource = DataModule2.DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 536
    Top = 424
    Width = 121
    Height = 25
    Caption = 'PRINT DATA'
    TabOrder = 12
    OnClick = Button1Click
  end
end
