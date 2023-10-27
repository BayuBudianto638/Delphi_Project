object frmUtama: TfrmUtama
  Left = 0
  Top = 0
  Caption = 'Form Utama'
  ClientHeight = 484
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 825
    Height = 484
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dashboard'
    end
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 200
    object File1: TMenuItem
      Caption = 'File'
      object SettingDatabase1: TMenuItem
        Caption = 'Setting Database'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Login1: TMenuItem
        Caption = 'Login'
      end
      object LogOut1: TMenuItem
        Caption = 'Log Out'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
      end
    end
    object Master1: TMenuItem
      Caption = 'Master'
    end
    object ransaction1: TMenuItem
      Caption = 'Transaction'
    end
    object Report1: TMenuItem
      Caption = 'Report'
    end
    object ools1: TMenuItem
      Caption = 'Tools'
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
      end
    end
  end
end
