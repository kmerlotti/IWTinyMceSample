object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 555
  Height = 589
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>'
    '<script>'
    'tinymce.init({ '
    '  selector:'#39'textarea#IWDBMEMO1'#39', '
    '  menubar: false,'
    '  toolbar_items_size: '#39'small'#39','
    '  plugins: ['
    '    "advlist link image lists print preview hr anchor",'
    
      '    "searchreplace wordcount visualblocks visualchars code inser' +
      'tdatetime media nonbreaking",'
    
      '    "table contextmenu directionality emoticons template textcol' +
      'or paste textcolor colorpicker"'
    '  ],'
    
      '  toolbar1: "bold italic underline strikethrough | alignleft ali' +
      'gncenter alignright alignjustify | styleselect formatselect font' +
      'sizeselect",'
    
      '  toolbar2: "cut copy paste | bullist numlist | outdent indent |' +
      ' undo redo | link unlink image | code preview print | forecolor ' +
      'backcolor | table | subscript superscript | emoticons | ltr rtl ' +
      '| visualchars visualblocks",'
    '  setup : function(ed) {'
    
      '      //implements an onChange event in the editor, so it can up' +
      'date the hidden field when changed'
    '      ed.on('#39'change'#39', function(e) {'
    
      '          document.getElementById('#39'HIDDEN_TinyMCEHtmlSource'#39').va' +
      'lue = ed.getContent();'
    '      });'
    
      '      //implementes an "onLoad" event in the editor, so it can u' +
      'pdate the hidden field when content is first loaded'
    '      ed.once('#39'GetContent'#39', function(e) {'
    
      '          document.getElementById('#39'HIDDEN_TinyMCEHtmlSource'#39').va' +
      'lue = e.content;'
    '      });'
    '  }'
    '});'
    '</script>')
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWText1: TIWText
    Left = 16
    Top = 15
    Width = 536
    Height = 131
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        '<p>This sample was created by <a href="mailto:kmerlotti@gmail.co' +
        'm" target="_blank">Kelver Merlotti</a>, to show <a href="http://' +
        'www.atozed.com/intraweb/" target="_blank">IntraWeb</a> integrati' +
        'on with TinyMCE. </p>'
      
        '<p>TinyMCE (Tiny Moxiecode Content Editor) is a platform-indepen' +
        'dent web-based JavaScript/HTML WYSIWYG editor control, released ' +
        'as open-source software under the LGPL by Ephox. More at <a href' +
        '="https://www.tinymce.com/" target="_blank">tinymce.com</a>.</p>'
      
        '<p>Don'#39't forget to take a look at the ExtraHeader form'#39's propert' +
        'y, where'#39's the code to enable TinyMCE</p>')
    RawText = True
    UseFrame = False
    WantReturns = True
  end
  object IWDBGrid1: TIWDBGrid
    Left = 16
    Top = 152
    Width = 529
    Height = 161
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <
      item
        Alignment = taCenter
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '50'
        Wrap = False
        RawText = False
        Css = ''
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Id'
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = [fsBold]
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'Id'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        Css = ''
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Title'
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = [fsBold]
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'Title'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end>
    DataSource = DataSource1
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid1'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clWebLIGHTYELLOW
    TabOrder = -1
  end
  object IWDBNavigator1: TIWDBNavigator
    Left = 355
    Top = 319
    Width = 120
    Height = 28
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    DataSource = DataSource1
    FriendlyName = 'IWDBNavigator1'
    ImageHeight = 24
    ImageWidth = 24
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Orientation = orHorizontal
  end
  object btnNew: TIWButton
    Left = 16
    Top = 319
    Width = 51
    Height = 28
    Caption = 'New'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnNew'
    TabOrder = 1
    OnClick = btnNewClick
  end
  object btnEdit: TIWButton
    Left = 70
    Top = 319
    Width = 51
    Height = 28
    Caption = 'Edit'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnEdit'
    TabOrder = 2
    OnClick = btnEditClick
  end
  object btnSave: TIWButton
    Left = 124
    Top = 319
    Width = 51
    Height = 28
    Caption = 'Save'
    Confirmation = 'Save Changes?'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnSave'
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object btnCancel: TIWButton
    Left = 178
    Top = 319
    Width = 51
    Height = 28
    Caption = 'Cancel'
    Confirmation = 'Discard changes?'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnCancel'
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object btnResult: TIWButton
    Left = 238
    Top = 319
    Width = 108
    Height = 28
    Caption = 'See Result'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnResult'
    TabOrder = 5
    OnClick = btnResultClick
  end
  object IWRegion1: TIWRegion
    Left = 16
    Top = 353
    Width = 529
    Height = 56
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    RenderInvisibleControls = True
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    object IWLabel1: TIWLabel
      Left = 11
      Top = 11
      Width = 22
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Id: '
    end
    object IWDBEdit1: TIWDBEdit
      Left = 39
      Top = 9
      Width = 58
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWDBEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 6
      AutoEditable = False
      DataField = 'Id'
      PasswordPrompt = False
      DataSource = DataSource1
    end
    object IWLabel2: TIWLabel
      Left = 115
      Top = 11
      Width = 33
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Title:'
    end
    object IWDBEdit2: TIWDBEdit
      Left = 155
      Top = 9
      Width = 246
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWDBEdit1'
      MaxLength = 50
      SubmitOnAsyncEvent = True
      TabOrder = 7
      AutoEditable = False
      DataField = 'Title'
      PasswordPrompt = False
      DataSource = DataSource1
    end
    object IWLabel3: TIWLabel
      Left = 11
      Top = 40
      Width = 40
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'HTML:'
    end
  end
  object IWRegion2: TIWRegion
    Left = 15
    Top = 417
    Width = 529
    Height = 165
    RenderInvisibleControls = True
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    ClipRegion = False
    object IWDBMemo1: TIWDBMemo
      Left = 3
      Top = 5
      Width = 523
      Height = 157
      BGColor = clNone
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      InvisibleBorder = False
      HorizScrollBar = False
      VertScrollBar = True
      Required = False
      TabOrder = 8
      SubmitOnAsyncEvent = True
      AutoEditable = False
      DataField = 'HTML'
      DataSource = DataSource1
      FriendlyName = 'IWDBMemo1'
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    ResourceOptions.PersistentFileName = 'data.bin'
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 216
    object FDMemTable1Id: TIntegerField
      FieldName = 'Id'
    end
    object FDMemTable1Title: TStringField
      FieldName = 'Title'
      Size = 50
    end
    object FDMemTable1HTML: TStringField
      FieldName = 'HTML'
      Size = 1000
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 184
    Top = 216
  end
end
