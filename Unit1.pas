unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  FMX.ListView, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    FDMemTable1: TFDMemTable;
    ListView1: TListView;
    FDMemTable1Index: TIntegerField;
    FDMemTable1Description: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    Label1: TLabel;
    FDMemTable1Total: TAggregateField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    procedure FormCreate(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListView1ButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
var i : Integer;
begin
FDMemTable1.CreateDataSet;
for  i := 1 to 5 do
  begin
    fdmemtable1.Append;
    FDMemTable1Index.AsInteger:=I;
    FDMemTable1Description.AsString:='Item '+i.ToString;
    FDMemTable1.Post;
  end;
FDMemTable1.First;
end;

procedure TForm1.ListView1ButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
//Fdmemtable1.Delete; // error deleting first record
end;

procedure TForm1.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
// Fdmemtable1.Delete; // error deleting last record
end;

end.
