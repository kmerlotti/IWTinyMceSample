{******************************************************************************}
{                                                                              }
{                         Intraweb + TinyMCE Sample                            }
{                            by Kelver Merlotti                                }
{                           kmerlotti@gmail.com                                }
{                                                                              }
{  This sample was created by Kelver Merlotti, to show IntraWeb integration    }
{  with TinyMCE.                                                               }
{                                                                              }
{  TinyMCE (Tiny Moxiecode Content Editor) is a platform-independent web-based }
{  JavaScript/HTML WYSIWYG editor control, released as open-source software    }
{  under the LGPL by Ephox. More at http://www.tinymce.com.                    }
{                                                                              }
{  Don't forget to take a look at the ExtraHeader form's property, where's the }
{  code to enable TinyMCE                                                      }
{                                                                              }
{******************************************************************************}

unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompText,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompGrids, IWDBGrids,
  IWDBStdCtrls, IWCompButton, IWCompLabel, Vcl.Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWCompEdit,
  IWCompMemo, FireDAC.Stan.StorageXML, FireDAC.Stan.StorageBin;

type
  TIWForm1 = class(TIWAppForm)
    IWText1: TIWText;
    IWDBGrid1: TIWDBGrid;
    FDMemTable1: TFDMemTable;
    FDMemTable1Id: TIntegerField;
    FDMemTable1Title: TStringField;
    FDMemTable1HTML: TStringField;
    DataSource1: TDataSource;
    IWDBNavigator1: TIWDBNavigator;
    btnNew: TIWButton;
    btnEdit: TIWButton;
    btnSave: TIWButton;
    btnCancel: TIWButton;
    IWRegion1: TIWRegion;
    IWLabel1: TIWLabel;
    IWDBEdit1: TIWDBEdit;
    IWLabel2: TIWLabel;
    IWDBEdit2: TIWDBEdit;
    IWLabel3: TIWLabel;
    IWRegion2: TIWRegion;
    IWDBMemo1: TIWDBMemo;
    btnResult: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
  private
    const HIDDEN_FIELD_HTML_CONTENT = 'TinyMCEHtmlSource';
    procedure EnableControls(Editing: Boolean);
  public
  end;

implementation

{$R *.dfm}

uses Unit2;

procedure TIWForm1.EnableControls(Editing: Boolean);
begin
  IWDBNavigator1.Visible := not Editing;
  btnNew.Enabled := not Editing;
  btnEdit.Enabled := (not Editing) and (not FDMemTable1.IsEmpty);
  btnSave.Enabled := Editing;
  btnCancel.Enabled := Editing;
  btnResult.Enabled := btnEdit.Enabled;
  IWRegion1.Visible := Editing;
  IWRegion2.Visible := Editing;
end;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  HiddenFields.Add(HIDDEN_FIELD_HTML_CONTENT + '=');
  FDMemTable1.Open;
  EnableControls(False);
end;

procedure TIWForm1.btnCancelClick(Sender: TObject);
begin
  FDMemTable1.Cancel;
  EnableControls(False);
end;

procedure TIWForm1.btnEditClick(Sender: TObject);
begin
  FDMemTable1.Edit;
  EnableControls(True);
  IWDBEdit2.SetFocus;
end;

procedure TIWForm1.btnNewClick(Sender: TObject);
begin
  FDMemTable1.Append;
  EnableControls(True);
  IWDBEdit1.SetFocus;
end;

procedure TIWForm1.btnResultClick(Sender: TObject);
var
  f2: TIWForm2;
begin
  f2 := TIWForm2.Create(WebApplication);
  f2.iwText.Clear;
  f2.iwText.Lines.Add('<h1>' + FDMemTable1Title.AsString + '</h1>');
  f2.iwText.Lines.Add(FDMemTable1HTML.AsString);
  f2.Show;
end;

procedure TIWForm1.btnSaveClick(Sender: TObject);
begin
  FDMemTable1HTML.AsString := HiddenFields.Values[HIDDEN_FIELD_HTML_CONTENT];
  FDMemTable1.Post;
  EnableControls(False);
end;

initialization
  TIWForm1.SetAsMainForm;

end.
