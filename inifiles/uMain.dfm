object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'IniFiles - Samples'
  ClientHeight = 285
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 533
    Height = 285
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Exemplo 1'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 525
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = -8
        ExplicitTop = -6
        ExplicitWidth = 533
        object Label1: TLabel
          Left = 248
          Top = 16
          Width = 45
          Height = 13
          Caption = 'Caminho:'
        end
        object btEscrever: TButton
          Left = 102
          Top = 9
          Width = 99
          Height = 25
          Caption = 'Escrever IniFile'
          TabOrder = 0
          OnClick = btEscreverClick
        end
        object btLer: TButton
          Left = 16
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Ler IniFile'
          TabOrder = 1
          OnClick = btLerClick
        end
        object edCaminho: TEdit
          Left = 299
          Top = 13
          Width = 214
          Height = 21
          TabOrder = 2
        end
      end
      object mmOutput: TMemo
        Left = 0
        Top = 41
        Width = 525
        Height = 216
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object tsDocumentacao: TTabSheet
      Caption = 'Documenta'#231#227'o'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object mmDoc: TMemo
        Left = 0
        Top = 0
        Width = 525
        Height = 257
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Documenta'#231#227'o base para manipula'#231#227'o de arquivo do tipo ini.'
          ''
          'Uses: System.IniFiles;'
          'Classe: TIniFile;'
          ''
          'Estrutura de um arquivo ini:'
          '[section]'
          'key=value'
          'key2=value2'
          '[section2]'
          'key=value3'
          ''
          'Estrutura do arquivo de exemplo:'
          '[banco]'
          'caminho=<path>')
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 288
        ExplicitTop = 168
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
  end
end
