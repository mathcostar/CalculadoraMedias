object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Calculadora de M'#233'dias'
  ClientHeight = 353
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Padding.Left = 5
  Padding.Top = 2
  Padding.Right = 5
  Padding.Bottom = 5
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTitulo: TPanel
    Left = 5
    Top = 2
    Width = 306
    Height = 41
    Align = alTop
    BevelOuter = bvSpace
    Caption = 'pnlTitulo'
    ShowCaption = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 304
      Height = 28
      Align = alTop
      Alignment = taCenter
      Caption = 'Calculadora de M'#233'dias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 214
    end
  end
  object pnlPrincipal: TPanel
    Left = 5
    Top = 43
    Width = 306
    Height = 305
    Align = alClient
    BevelOuter = bvSpace
    Caption = 'pnlPrincipal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowCaption = False
    TabOrder = 1
    object lblNotaUm: TLabel
      Left = 16
      Top = 45
      Width = 74
      Height = 15
      Caption = 'Primeira nota:'
    end
    object lblMedia: TLabel
      Left = 138
      Top = 84
      Width = 37
      Height = 15
      Caption = 'M'#233'dia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSituacao: TLabel
      Left = 138
      Top = 145
      Width = 100
      Height = 15
      Caption = 'Situa'#231#227'o do aluno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNotaDois: TLabel
      Left = 16
      Top = 115
      Width = 76
      Height = 15
      Caption = 'Segunda nota:'
    end
    object lblNotaTres: TLabel
      Left = 16
      Top = 185
      Width = 71
      Height = 15
      Caption = 'Terceira nota:'
    end
    object lblResultadoMedia: TLabel
      Left = 138
      Top = 105
      Width = 3
      Height = 15
      Color = clBtnFace
      ParentColor = False
      Transparent = False
    end
    object lblResultadoSituacao: TLabel
      Left = 138
      Top = 166
      Width = 3
      Height = 15
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object edtNotaUm: TEdit
      Left = 16
      Top = 66
      Width = 58
      Height = 23
      Hint = 'Informe o valor da primeira nota'
      MaxLength = 5
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'Digite...'
    end
    object btnLimpar: TButton
      Left = 73
      Top = 249
      Width = 75
      Height = 25
      Hint = 'Clique para limpar as notas informadas'
      Caption = 'Limpar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnLimparClick
    end
    object btnCalcular: TButton
      Left = 154
      Top = 249
      Width = 75
      Height = 25
      Hint = 'Clique para calcular a m'#233'dia do aluno'
      Caption = 'Calcular'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnCalcularClick
    end
    object edtNotaDois: TEdit
      Left = 16
      Top = 136
      Width = 58
      Height = 23
      Hint = 'Informe o valor da segunda nota'
      MaxLength = 5
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'Digite...'
    end
    object edtNotaTres: TEdit
      Left = 17
      Top = 206
      Width = 57
      Height = 23
      Hint = 'Informe o valor da terceira nota'
      MaxLength = 5
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TextHint = 'Digite...'
    end
  end
end
