object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    555
    400)
  DesignLeft = 8
  DesignTop = 8
  object iwText: TIWText
    Left = 11
    Top = 41
    Width = 534
    Height = 349
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Anchors = [akLeft, akTop, akRight, akBottom]
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'iwText'
    Lines.Strings = (
      'iwText')
    RawText = True
    UseFrame = False
    WantReturns = True
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 0
    Width = 555
    Height = 37
    RenderInvisibleControls = True
    Align = alTop
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    object IWButton1: TIWButton
      Left = 11
      Top = 8
      Width = 94
      Height = 25
      Caption = 'Close'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton1'
      TabOrder = 0
      OnClick = IWButton1Click
    end
  end
end
