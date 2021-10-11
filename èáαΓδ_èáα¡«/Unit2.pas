unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses unit1,lesvariables;
procedure TForm2.Button1Click(Sender: TObject);
begin
  if radiobutton1.checked then nombre:=2 else
  if radiobutton2.checked then nombre:=3 else
  if radiobutton3.checked then nombre:=4 else
  if radiobutton4.checked then nombre:=5 else
  if radiobutton5.checked then nombre:=6 else
  if radiobutton6.checked then nombre:=7 else
  if radiobutton7.checked then nombre:=8;
  close;
end;

end.
