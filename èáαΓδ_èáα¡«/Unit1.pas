unit Unit1;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,Dialogs,
  Menus, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Ouvrir1: TMenuItem;
    Enregistrersous1: TMenuItem;
    Quitter1: TMenuItem;
    Inverser1: TMenuItem;
    Evaluation1: TMenuItem;
    Monmeprcdent1: TMenuItem;
    Monmesuivant1: TMenuItem;
    Apropos1: TMenuItem;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Edit6: TEdit;
    pressepapier1: TMenuItem;
    Nouveau1: TMenuItem;
    Label4: TLabel;
    procedure Enregistrersous1Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Inverser1Click(Sender: TObject);
    procedure Ouvrir1Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure Monmeprcdent1Click(Sender: TObject);
    procedure Monmesuivant1Click(Sender: TObject);
    procedure Evaluation1Click(Sender: TObject);
    procedure Edit9KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Excute1Click(Sender: TObject);
    procedure Session1Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure pressepapier1Click(Sender: TObject);
    procedure Nouveau1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Edit4KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Edit6KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Edit8KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Edit7KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation


uses lesvariables, Unit2, Unit3;

{$R *.DFM}

procedure retirelesuns;
var pour,pour2:smallint;
begin
  with form1 do for pour:=1 to stringgrid1.colcount do for pour2 :=1 to stringgrid1.rowcount do
    If Stringgrid1.cells[pour,pour2]='UN' then Stringgrid1.cells[pour,pour2]:='1';
end;

procedure trouve_fin;
begin
   Case Nombre of
     1:begin finv:=1;finh:=2;end;
     2:begin finv:=2;finh:=2;vh:=1;vv:=1;end;
     3:begin finv:=2;finh:=4;vh:=2;vv:=1;end;
     4:begin finv:=4;finh:=4;vh:=2;vv:=2;end;
     5:begin finv:=4;finh:=8;vh:=3;vv:=2;end;
     6:begin finv:=8;finh:=8;vh:=3;vv:=3;end;
     7:begin finv:=8;finh:=16;vh:=4;vv:=3;end;
     8:begin finv:=16;finh:=16;vh:=4;vv:=4;end;
   End;
end;


Procedure affiche_Tableau;
var pour,la:Smallint;

const  gray='0000000100110010011001110101010011001101111111101010101110011000';

Begin
  trouve_fin;
  with form1 do
  begin
    memo1.top:=edit9.top +edit9.height+3;
    la:=memo1.top+memo1.height+3;
    edit7.top:=la;edit5.top:=la;
    edit3.top:=la;edit1.top:=la;
    stringgrid1.top:=la+edit9.height+3;
    label1.top:=la+3;
    label3.top:=la+3;
    label2.top:=edit9.top+5;
    with stringgrid1  do
    begin
      rowcount:=finv+1;height:=rowcount*17+5;
      colcount:=finh+1;width:=colcount*33+5;
      cells[0,0]:='\\\\';
      for pour :=1 to 16 do cells[0,pour]:=copy(copy(gray,(pour-1)*4+1,4),5-vv,vv);
      for pour :=1 to 16 do cells[pour,0]:=copy(copy(gray,(pour-1)*4+1,4),5-vh,vh);
      edit8.top:= top+height+3;
      edit8.visible:= (rowcount=17);
      edit6.top:= top+height+3;
      edit6.visible:= (rowcount>=9);
      edit4.top:= top+height+3;
      edit4.visible:= (rowcount>=5);
      edit2.top:= top+height+3;
      edit2.Visible:=(nombre>1);
      edit7.visible:= (colcount=17);
      edit5.visible:= (colcount>=9);
      edit3.visible:= (colcount>=5);
    end;
   if not(edit1.visible) then Edit1.text:='';
   if not(edit2.visible) then Edit2.text:='';
   if not(edit3.visible) then Edit3.text:='';
   if not(edit4.visible) then Edit4.text:='';
   if not(edit5.visible) then Edit5.text:='';
   if not(edit6.visible) then Edit6.text:='';
   if not(edit7.visible) then Edit7.text:='';
   if not(edit8.visible) then Edit8.text:='';
   ident[8]:=copy(edit8.text,1,3);
   ident[7]:=copy(edit7.text,1,3);
   ident[6]:=copy(edit6.text,1,3);
   ident[5]:=copy(edit5.text,1,3);
   ident[4]:=copy(edit4.text,1,3);
   ident[3]:=copy(edit3.text,1,3);
   ident[2]:=copy(edit2.text,1,3);
   ident[1]:=copy(edit1.text,1,3);
 end;
end;

Procedure Init;
var pour,pour2:Smallint;
Begin
  Nombre:=2;
  Trouve_Fin;
  for pour:=1 to 16 do for pour2 :=1 to 16 do
  begin
     resultat[pour,pour2]:=0;
     entre[pour,pour2]:=0;
  end;
  For pour:=1 to 8 do Ident[pour]:='';
End;

procedure ecrire(s:string;barre:boolean);
begin
  memomem:=memomem+s;
  if barre then memomem:=memomem+'~';
end;

procedure ecriremonome(s:string;barre:boolean);
begin
  memomemmonome:=memomemmonome+s;
  if barre then memomemmonome:=memomemmonome+'~';
end;

function allu(k:Smallint;oui,normal:boolean):boolean;
var drapeau:boolean;
    lay,lax,pour:Smallint;
begin
   allu:=true;
   for lay:=1 to finv do for lax:=1 to finh do
   begin
    drapeau:=true;
    if cas[k,2]<>0 then if not ((lay in [2,3,6,7,10,11,14,15])=(cas[k,2]>0)) then drapeau:=false;
    if cas[k,4]<>0 then if Nombre>=4 then if not ((lay in [3,4,5,6,11,12,13,14])=(cas[k,4]>0)) then drapeau:=false;
    if cas[k,6]<>0 then if Nombre>=6 then if not ((lay in [5..12])=(cas[k,6]>0)) then drapeau:=false;
    if cas[k,8]<>0 then if Nombre>=8 then if not ((lay in [9..16])=(cas[k,8]>0)) then drapeau:=false;
    if cas[k,1]<>0 then if Nombre>=1 then if not ((lax in [2,3,6,7,10,11,14,15])=(cas[k,1]>0)) then drapeau:=false;
    if cas[k,3]<>0 then if Nombre>=3 then if not ((lax in [3,4,5,6,11,12,13,14])=(cas[k,3]>0)) then drapeau:=false;
    if cas[k,5]<>0 then if Nombre>=5 then if not ((lax in [5..12])=(cas[k,5]>0)) then drapeau:=false;
    if cas[k,7]<>0 then if Nombre>=7 then if not ((lax in [9..16])=(cas[k,7]>0)) then drapeau:=false;
    if drapeau then
    begin
      if deja[lay,lax]=0 then allu:=false;
      deja[lay,lax]:=1;
    end;
   end;
   if normal then
   begin
     lepoint:=false;
     for pour:=1 to Nombre do
     begin
       if cas[k,pour]<>0 then
       begin
         leplus:=true;
         if lepoint then ecrire('.',false);
         lepoint:=true;
         ecrire(Ident[pour],(cas[k,pour]<0));
       end;
     end;
   end;
end;

function allumonome(k:Smallint;oui,normal:boolean):boolean;
var drapeau:boolean;
    lay,lax,pour:Smallint;
begin
   memomemmonome:='';
   allumonome:=true;
   for lay:=1 to finv do for lax:=1 to finh do
   begin
    drapeau:=true;
    if cas[k,2]<>0 then if not ((lay in [2,3,6,7,10,11,14,15])=(cas[k,2]>0)) then drapeau:=false;
    if cas[k,4]<>0 then if Nombre>=4 then if not ((lay in [3,4,5,6,11,12,13,14])=(cas[k,4]>0)) then drapeau:=false;
    if cas[k,6]<>0 then if Nombre>=6 then if not ((lay in [5..12])=(cas[k,6]>0)) then drapeau:=false;
    if cas[k,8]<>0 then if Nombre>=8 then if not ((lay in [9..16])=(cas[k,8]>0)) then drapeau:=false;
    if cas[k,1]<>0 then if Nombre>=1 then if not ((lax in [2,3,6,7,10,11,14,15])=(cas[k,1]>0)) then drapeau:=false;
    if cas[k,3]<>0 then if Nombre>=3 then if not ((lax in [3,4,5,6,11,12,13,14])=(cas[k,3]>0)) then drapeau:=false;
    if cas[k,5]<>0 then if Nombre>=5 then if not ((lax in [5..12])=(cas[k,5]>0)) then drapeau:=false;
    if cas[k,7]<>0 then if Nombre>=7 then if not ((lax in [9..16])=(cas[k,7]>0)) then drapeau:=false;
    if drapeau then
    begin
      if deja[lay,lax]=0 then allumonome:=false;
      form1.stringgrid1.cells[lax,lay]:='UN';
      deja[lay,lax]:=1;
    end;
   end;
   if normal then
   begin
    lepoint:=false;
    for pour:=1 to Nombre do
    begin
      if cas[k,pour]<>0 then
      begin
        leplus:=true;
        if lepoint then ecriremonome('.',false);
        lepoint:=true;
        ecriremonome(Ident[pour],(cas[k,pour]<0));
      end;
    end;
  end;
  form1.label1.caption:=memomemmonome;
end;

Procedure le_tableau;
Var la_lampe,Celui_La,pour,pour2,pour3,vieuxp,huile,decay,deca,p,vv,vh,diviseur,combien,taille:Smallint;
    Ceuxla:Array[1..8] of boolean;
    flag:boolean;
    p1,p2,p3,p4,pp1,PP2,pp3,PP4,ppp1,ppp2,ppp3,ppp4:Smallint;

procedure effacecas(i:Smallint);
begin
  if nbcas>0 then
  begin
    cas[i]:=cas[nbcas];
    dec(nbcas);
  end;
end;

procedure normalise;
var p,i:Smallint;
begin
  for i:=1 to nbcas do for p:=1 to Nombre do if cas[i,p]> 0 then     cas[i,p]:=1
                                                            else if  cas[i,p]<0 then cas[i,p]:=-1
                                                                                else cas[i,p]:=0;
end;

function Regroupe(i,j:Smallint):boolean;
var p,ou:Smallint;
begin
  regroupe:=false;
  Ou:=0;
  p:=1;While p<=Nombre do
  begin
    if (cas[i,p]-cas[j,p]<>0) then
    begin
      if cas[i,p]*cas[j,p]=0 then exit;
      if ou=0 then ou:=p else exit;
    end;
    inc(p);
  end;
  if ou<>0 then cas[i,ou]:=0;
  cas[j]:=cas[nbcas];dec(nbcas);
  regroupe:=true;
end;

function Regroupe2(i,j:Smallint):boolean;
var p:Smallint;
begin
  regroupe2:=false;
  p:=1;While p<=Nombre do
  begin
    if (cas[i,p]-cas[j,p]<>0) then
    begin
      if cas[i,p]<>0 then exit;
    end;
    inc(p);
  end;
  cas[j]:=cas[nbcas];
  dec(nbcas);
  regroupe2:=true;
end;

function longueurcas(k:Smallint):Smallint;
var pour,somme:Smallint;
begin
  somme:=0;
  for pour:=1 to Nombre do if cas[k,pour]<>0 then inc(somme);
  longueurcas:=somme;
end;

Procedure Triecas;
var Pour:Smallint;
    Ele:T_Elementcas;
begin
  pour:=1;while pour< nbcas do
  begin
    if longueurcas(pour+1)<longueurcas(pour) then
    begin
      ele:=cas[pour];
      cas[pour]:=cas[pour+1];
      cas[pour+1]:=ele;pour:=0;
    end;
    inc(pour);
  end;
end;

function camarche(k:Smallint):boolean;
var drapeau,primaire:boolean;
    lay,lax:Smallint;

begin
   primaire:=true;
   camarche:=true;
   lay:=1;While (lay<=finv) And primaire do
   begin
      lax:=1;While (lax<=finh) And primaire do
      begin
        drapeau:=true;
        if cas[k,2]<>0 then if not ((lay in [2,3,6,7,10,11,14,15])=(cas[k,2]>0)) then drapeau:=false;
        if cas[k,4]<>0 then if Nombre>=4 then if not ((lay in [3,4,5,6,11,12,13,14])=(cas[k,4]>0)) then drapeau:=false;
        if cas[k,6]<>0 then if Nombre>=6 then if not ((lay in [5..12])=(cas[k,6]>0)) then drapeau:=false;
        if cas[k,8]<>0 then if Nombre>=8 then if not ((lay in [9..16])=(cas[k,8]>0)) then drapeau:=false;
        if cas[k,1]<>0 then if Nombre>=1 then if not ((lax in [2,3,6,7,10,11,14,15])=(cas[k,1]>0)) then drapeau:=false;
        if cas[k,3]<>0 then if Nombre>=3 then if not ((lax in [3,4,5,6,11,12,13,14])=(cas[k,3]>0)) then drapeau:=false;
        if cas[k,5]<>0 then if Nombre>=5 then if not ((lax in [5..12])=(cas[k,5]>0)) then drapeau:=false;
        if cas[k,7]<>0 then if Nombre>=7 then if not ((lax in [9..16])=(cas[k,7]>0)) then drapeau:=false;
        if drapeau then
        begin
          if resultat[lay,lax]=0 then
          begin
            camarche:=false;
            primaire:=false;
          end;
        end;
        inc(lax);
      end;
      inc(lay);
    end;
end;

Procedure Bloc(X,Y,largeur,Hauteur:Smallint);
Var pour,Ligne,Colonne,Lax,Lay:Smallint;
    A_Un,cestlapeine:Boolean;
Begin
  if largeur>finh then exit;
  If hauteur>finv then exit;
  A_Un:=True;
  cestlapeine:=false;
  Ligne:=0;While ((Ligne<Hauteur) And A_un) do
  Begin
    Colonne:=0;While ((Colonne<Largeur) And A_un) do
    Begin
      lax:=x+Colonne;Lay:=y+Ligne;
      If Lax>Finh then lax:=lax-Finh;
      If Lay>FinV then lay:=lay-FinV;
      If Resultat[lay,lax]=0 then A_Un:=false;
      If Deja[lay,lax]=0 then cestlapeine:=True;
      Inc(Colonne);
    End;
    Inc(Ligne);
  end;
  If (Not A_Un) or (not cestlapeine) then Exit;
  for pour:=1 to 8 do element2[pour]:=0;
  Ligne:=0;While Ligne<Hauteur do
  Begin
    Lay:=y+Ligne;If Lay>FinV then lay:=lay-FinV;
    if lay in [2,3,6,7,10,11,14,15] then inc(element2[2]) else dec(element2[2]);
    if lay in [3,4,5,6,11,12,13,14] then inc(element2[4]) else dec(element2[4]);
    if lay in [5..12] then inc(element2[6]) else dec(element2[6]);
    if lay in [9..16] then inc(element2[8]) else dec(element2[8]);
    Inc(Ligne);
  End;
  Colonne:=0;While Colonne<Largeur do
  Begin
    lax:=x+Colonne;If lax>Finh then lax:=lax-Finh;
    if lax in [2,3,6,7,10,11,14,15] then inc(element2[1]) else dec(element2[1]);
    if lax in [3,4,5,6,11,12,13,14] then inc(element2[3]) else dec(element2[3]);
    if lax in [5..12] then inc(element2[5]) else dec(element2[5]);
    if lax in [9..16] then inc(element2[7]) else dec(element2[7]);
    Inc(Colonne);
  End;
  for pour:=1 to Nombre do
  begin
    if pour in [1,3,5,7] then if not ((element2[pour]=0) or (abs(element2[pour])=largeur)) then exit;
    if pour in [2,4,6,8] then if not ((element2[pour]=0) or (abs(element2[pour])=hauteur)) then exit;
  end;
  Ligne:=0;While Ligne<Hauteur do
  Begin
    Colonne:=0;While Colonne<Largeur do
    Begin
      lax:=x+Colonne;Lay:=y+Ligne;
      If lax>Finh then lax:=lax-Finh;
      If Lay>FinV then lay:=lay-FinV;
      Deja[lay,lax]:=1;
      Inc(Colonne);
    End;
    Inc(Ligne);
  end;
  inc(nbcas);
  for pour:=1 to Nombre do if element2[pour]<>0 then cas[nbcas,pour]:=element2[pour];
End;

function classecas(rang,de,a:Smallint):Smallint;
var  dra,i,j,pour,pour2,combien,lequel,combienlequel,combienmoins:Smallint;
     temp:t_elementcas;
begin
  if rang>nombre then
  begin
    classecas:=de;exit;
  end;
  lequel:=0;
  combienlequel:=0;
  for i:=1 to Nombre do
  begin
    combien:=0;
    combienmoins:=0;
    For j:=de to a do for pour:=rang to Nombre do
    begin
      if ncas[j,pour]=i then inc(combien);
      if ncas[j,pour]=-i then inc(combienmoins);
    end;
    if combien>combienlequel then
    begin
      lequel:=i;
      combienlequel:=combien;
    end;
    if combienmoins>combienlequel then
    begin
      lequel:=-i;
      combienlequel:=combienmoins;
    end;
  end;
  combien:=0;
  For j:=de to a do
  begin
    dra:=0;
    for pour:=rang to Nombre do if ncas[j,pour]=lequel then dra:=pour;
    if dra<>0 then
    begin
      i:=ncas[j,rang];ncas[j,rang]:=ncas[j,dra];ncas[j,dra]:=i;
      temp:=ncas[j];for pour2:=j downto de+1 do ncas[pour2]:=ncas[pour2-1];
      ncas[de]:=temp;
      inc(combien);
    end;
  end;
  classecas:=de+combien;
end;

Function identique(la,rang:Smallint):boolean;
var drap:boolean;
    i:Smallint;
Begin
  drap:=True;
  If la<2 then
  begin
    identique:=False;
    exit;
  end;
  For i:=1 to Rang do if (ncas[la,i]<>ncas[la-1,i]) then drap:=False;
  identique:=Drap;
end;

begin
  memomem:='';
  nbcas:=0;
  for pour :=1 to 8 do caszero[pour]:=0;
  for pour:=1 to 256 do cas[pour]:=caszero;
  deca:=50;decay:=15;
  for pour:=1 to finv do for pour2:=1 to finh do deja[pour,pour2]:=0;
  Affiche_Tableau;
  Ident[0]:='';
  leplus:=False;
  Bloc(1,1,Finh,Finv);
  taille:=finh*finv;While taille>1 do
  begin
    Diviseur:=1;Combien:=Taille;
    While Combien>=1 do
    begin
      for pour:=1 to finv do for pour2:=1 to finh do
      bloc(pour2,pour,diviseur,Combien);
      Combien:=Combien div 2;
      Diviseur:=Diviseur*2;
    end;
    Taille:=Taille div 2;
  end;
  for pour:=1 to finv do for pour2:=1 to finh do bloc(pour2,pour,1,1);
  normalise;
  for pour3:=1 to 2 do
  begin
    pour:=1;while pour<nbcas do
    begin
      pour2:=pour+1;
      while pour2<=nbcas do
      begin
        if regroupe(pour,pour2) then
        begin
          pour:=1;pour2:=Nbcas+1;
        end else
        if regroupe2(pour,pour2) then begin pour:=1;Pour2:=Nbcas+1;end;
        inc(pour2);
      end;
      inc(pour);
    end;
    triecas;
    pour:=1;while pour<=nbcas do
    begin
      for p:=1 to 16 do for p2:=1 to 16 do deja[p,p2]:=0;
      for pour2 :=1 to nbcas do if pour2<>pour then if allu(pour2,false,false) then;
      if allu(pour,false,false) then
      begin
        cas[pour]:=cas[nbcas];
        dec(nbcas);pour:=1;
        triecas;
      end;
      inc(pour);
    end;
    pour:=1;while pour<=nbcas do
    begin
      pour2:=1;while pour2<=Nombre do
      begin
        combien:=cas[pour,pour2];cas[pour,pour2]:=0;
        if not camarche(pour) then cas[pour,pour2]:=combien;
        inc(pour2);
      end;
      inc(pour);
    end;
  end;
    leplus:=False;
    drapeau:=true;
    for pour:=1 to finv do for pour2:=1 to finh do if
    resultat[pour,pour2]<>resultat[1,1] then drapeau:=False;
    if drapeau then ecrire(inttostr(resultat[1,1]),false) else
    for combien:=1 to nbcas do
    begin
      if leplus then ecrire('+',false);
      lepoint:=false;
      for pour:=1 to Nombre do
      begin
        if cas[combien,pour]<>0 then
        begin
          leplus:=true;
          if lepoint then ecrire('.',false);
          lepoint:=true;
          ecrire(Ident[pour],(cas[combien,pour]<0));
        end;
      end;
    end;
  for p:=1 to nbcas do
  begin
    for pour:=1 to Nombre do
    begin
      ncas[p,pour]:=0;ncas[p,pour]:=cas[p,pour]*pour;
      ncas[p,9]:=p;
    end;
  end;
  begin
    p1  :=classecas(1,1,nbcas);
    pp1 :=classecas(2,1,p1-1);
    if pp1<p1-1 then
    begin
      pp2:=classecas(2,pp1,p1-1);
      ppp1:=classecas(3,1,pp1-1);
      if pp2<p1-1 then pp3:=classecas(2,pp2,p1-1);
      ppp2:=classecas(4,1,ppp1-1);
      ppp3:=classecas(5,1,ppp2-1);
    end;
    if p1<nbcas then
    begin
      p2:=classecas(1,p1,nbcas);
      pp1:=classecas(2,p1,p2-1);
      if pp1<p2-1 then
      begin
        pp2:=classecas(2,pp1,p2-1);
        ppp1:=classecas(3,p1,pp1-1);
        if pp2<p2-1 then pp3:=classecas(2,pp2,p2-1);
        ppp2:=classecas(4,p1,ppp1-1);
        ppp3:=classecas(5,p1,ppp2-1);
      end;
      if p2<nbcas then
      begin
        p3:=classecas(1,p2,nbcas);
        pp1:=classecas(2,p2,p3-1);
        if pp1<p3-1 then
        begin
          pp2:=classecas(2,pp1,p3-1);
          pp1:=classecas(3,p2,pp1-1);
          if pp2<p2-1 then pp3:=classecas(2,pp2,p3-1);
        end;
        if p3<nbcas-1 then
        begin
          p4:=classecas(1,p3,nbcas);
          pp1:=classecas(2,p3,p4-1);
          if pp1<p4-1 then pp2:=classecas(2,pp1,p4-1);
          if p4<nbcas then p4:=classecas(1,p4,nbcas);
        end;
      end;
    end;
  end;
  for p:=1 to nbcas do for combien:=1 to Nombre do
  begin
    pour2:=1;while pour2<Nombre do
    begin
      if ncas[p,pour2]=0 then
      begin
        for p2:=pour2 to Nombre-1 do ncas[p,p2]:=ncas[p,p2+1];
        ncas[p,Nombre]:=0;
      end;
      inc(pour2);
    end;
  end;
  form1.memo1.text:=memomem;
end;

Procedure Expression;
var Le_Nom:Array       ['a'..'z'] Of Str10;
    La_Valeur:Array    ['a'..'z'] Of Boolean;
    La_ValeurBis:Array [1..25] Of Boolean Absolute La_Valeur;
    NbVariable:Char;
    OnContinue:Boolean;
    pour,pour2,lax,lay:Smallint;
    ca:string;
    ch:char;


Function Minuscule(var st:Str255):Boolean;
Var I,vieuxi:Byte;
    Variable:String;
    Var_En_Cours:Boolean;
    Existe,c:char;

Begin
  For c:='a' to 'z' do Le_Nom[c]:='';
  Minuscule:=True;
  While Pos(' ',st)>0 do Delete(st,Pos(' ',st),1);
  st:=st+' ';
  NbVariable:='a';
  Variable:='';
  Var_En_Cours:=False;
  I:=0;While i<=Length(st) do
  Begin
    Inc(I);
    If st[i] In ['a'..'z','A'..'Z','0'..'9','_'] Then
    Begin
       Variable:=Variable+st[i];
       if Not( (variable='1') or (Variable='0')) then
       begin
          If Not Var_En_Cours Then vieuxi:=i;
          st[i]:=' ';
          Var_En_Cours:=True;
       End else  Variable:='';
    End Else
    Begin
      If NbVariable='z' Then
      Begin
        OnContinue:=False;
        Minuscule:=False;
        Exit;
      End;
      If Var_En_Cours then
      begin
        Existe:='#';
        C:='a';While c<=NbVariable do
        Begin
           if Le_Nom[C]=Variable then
           Begin
             st[Vieuxi]:=C;
             Variable:='';
             c:=Succ(Nbvariable);
           End;
           inc(c);
        End;
        If Variable<>'' then
        begin
          Le_Nom[NbVariable]:=Variable;
          st[vieuxi]:=NbVariable;
          Inc(NbVariable);
          Variable:='';
        End;
      end;
      Var_En_Cours:=False;
    End;
  End;
  If Nbvariable='a' then
  Begin
    minuscule:=False;
    Exit;
  End;
  Dec(NBVariable);
  While Pos(' ',st)>0 do Delete(st,Pos(' ',st),1);
End;

Function Evaluation(var st:string):Boolean;           {  Evaluateur de fonction bboléenne }
Var i,l:Byte;
    Change:Boolean;

Function Dans(i:Byte;s:String):Boolean;
Begin
  Dans:=Pos(St[i],S)<>0;
End;

Begin
  For i:=1 to Length(st) do If st[i] in ['a'..'z'] then if La_Valeur[st[i]] then st[i]:='1' else st[i]:='0';
  Change:=True;
  While Change And (Length(St)>1) Do
  Begin
    Change:=False;
    L:=255;While L<>Length(st) do
    Begin
      L:=length(st);
      For i:=2 to Length(st) do If Not Change then If (st[i]='~') And (st[i-1] In ['1','0']) then
      Begin
        If st[i-1]='1' then St[i-1]:='0' else St[i-1]:='1';
        Delete(st,i,1);
        Change:=True;
      End;
    End;
    l:=255;While (L<>Length(st)) And Not Change do
    Begin
      l:=length(st);
      For i:=1 to Length(st)-2 do If Not Change then
      If (st[i] ='(') And (St[i+1] In ['1','0']) And (St[i+2]=')') Then
      Begin
        St[i]:=St[i+1];Delete(St,I+1,2);Change:=True;
      End;
    End;
    l:=255;While (L<>Length(st)) And Not Change do
    Begin
      l:=length(st);
      For i:=1 to Length(st)-2 do If Not Change then  If (st[i] In ['1','0']) And (St[i+1]='.') And Dans(i+2,'10')
        And Not ( (i<>1) And Dans(i-1,'^/')) And Not ( (i<>Length(St)-2) And Dans(i+3,'^/')) Then
      Begin
        If St[i]='1' then If St[i+2]<>'1' then St[i]:='0';
        Delete(St,i+1,2);
        Change:=True;
      End;
    End;
    l:=255;While (L<>Length(st)) And Not Change do
    Begin
      l:=length(st);
      For i:=1 to Length(st)-2 do If Not Change then If (st[i] In ['1','0'])  And (St[i+1]='=') And (St[i+2] In ['1','0'])
        And Not ( (i<>1) And Dans(i-1,'.^/')) And Not ( (i<>Length(St)-2) And Dans(i+3,'.^/')) Then
      Begin
        If St[i]=St[i+2] then St[i]:='1' Else St[i]:='0';
        Delete(St,i+1,2);
        Change:=True;
      End;
    End;
    l:=255;While (L<>Length(st)) And Not Change do
    Begin
      l:=length(st);
      For i:=1 to Length(st)-2 do If Not Change then If (st[i] In ['1','0']) And (St[i+1]='+') And (St[i+2] In ['1','0'])
        And Not ( (i<>1) And Dans(i-1,'.^/')) And Not ( (i<>Length(St)-2) And Dans(i+3,'.^/')) Then
      Begin
        If (St[i]='1') Or (St[i+2]='1') then St[i]:='1' else St[i]:='0';
        Delete(St,i+1,2);
        Change:=True;
      End;
    End;
    l:=255;While (L<>Length(st)) And Not Change do
    Begin
      l:=length(st);
      For i:=1 to Length(st)-2 do If Not Change then If (st[i] In ['1','0']) And (St[i+1]='*') And (St[i+2] In ['1','0'])
         And Not ( (i<>1) And Dans(i-1,'.^/')) And Not ( (i<>Length(St)-2) And Dans(i+3,'.^/')) Then
      Begin
        If (St[i]='1') XOr (St[i+2]='1') then St[i]:='1' else St[i]:='0';
        Delete(St,i+1,2);
        Change:=True;
      End;
    End;
    l:=255;While (L<>Length(st)) And Not Change do
    Begin
      l:=length(st);
      For i:=1 to Length(st)-2 do If Not Change then If (st[i] In ['1','0']) And (St[i+1]='^') And (St[i+2] In ['1','0'])
        And Not ( (i<>1) And Dans(i-1,'.^/')) And Not ( (i<>Length(St)-2) And Dans(i+3,'.^/')) Then
      Begin
        If (St[i]='1') Or (St[i+2]='1') then St[i]:='0' else St[i]:='1';
        Delete(St,i+1,2);
        Change:=True;
      End;
    End;
    l:=255;While (L<>Length(st)) And Not Change do
    Begin
      l:=length(st);
      For i:=1 to Length(st)-2 do If Not Change then If (st[i] In ['1','0']) And (St[i+1]='/') And Dans(i+2,'10')
        And Not ( (i<>1) And Dans(i-1,'.^/')) And Not ( (i<>Length(St)-2) And Dans(i+3,'.^/')) Then
      Begin
        If Not( (St[i]='1') And (St[i+2]='1')) then St[i]:='1'Else St[i]:='0';
        Delete(St,i+1,2);
        Change:=True;
      End;
    End;
  end;
  Evaluation:=(Length(st)=1);
End;


Begin
  memo:=form1.edit9.text;
  If Not Minuscule(memo) then Exit;
  nombre:=ord(Nbvariable)-ord('a')+1;
  If (nombre>8) or (nombre<1) then
  Begin
    form1.label1.caption:='Entre 1 et 8 Variables ! ';
    Exit;
  End;
  Trouve_Fin;
  For pour:=1 to Nombre do ident[pour]:=
  Le_Nom[char(ord('a')+pour-1)];
  for lay:=1 to finV do for lax:=1 to finh do
  begin
    for ch:='a' to'z' do La_Valeur[ch]:=false;
    if lay in [2,3,6,7,10,11,14,15] then La_Valeur['b']:=true;
    if lay in [3,4,5,6,11,12,13,14] then La_Valeur['d']:=true;
    if lay in [5..12] then La_Valeur['f']:=true;
    if lay in [9..16] then La_Valeur['h']:=true;
    if lax in [2,3,6,7,10,11,14,15] then La_Valeur['a']:=true;
    if lax in [3,4,5,6,11,12,13,14] then La_Valeur['c']:=true;
    if lax in [5..12] then La_Valeur['e']:=true;
    if lax in [9..16] then La_Valeur['g']:=true;
    ca:=memo;
    if evaluation(ca) then
    begin
      case ca[1] of
        '1':form1.stringgrid1.cells[lax,lay]:='1';
        '0':form1.stringgrid1.cells[lax,lay]:='0';
        else {son};
      end;
      with form1 do
      begin
        edit8.text:=ident[8];
        edit7.text:=ident[7];
        edit6.text:=ident[6];
        edit5.text:=ident[5];
        edit4.text:=ident[4];
        edit3.text:=ident[3];
        edit2.text:=ident[2];
        edit1.text:=ident[1];
      end;
      affiche_tableau;
    end;
  End;
  for pour:=1 to finv do for pour2 :=1 to finh do
    Case entre[pour,Pour2] of
      11,1:resultat[pour2,pour]:=1;
      10,0:resultat[pour2,pour]:=0;
    end;
End;

procedure execute;
var pour,pour2:smallint;
begin
  retirelesuns;
  For pour:=1 to 16 do for pour2 :=1 to 16 do
        if form1.stringgrid1.cells[pour,Pour2]='1' then resultat[pour2,pour]:=1
                                                   else resultat[pour2,pour]:=0;
      le_tableau;
      pourmonome:=0;
end;

procedure TForm1.Enregistrersous1Click(Sender: TObject);
Var Pour,pour2,ligne,colonne:Smallint;
    F:File;
    c:char;
    s:string;
Begin
  retirelesuns;
  If SaveDialog1.execute then
  Begin
    nomdefichier:=SaveDialog1.Filename;
    assignfile(F,nomdefichier);
    ReWrite(f,1);
    try
    BlockWrite(f,Nombre,SizeOf(Nombre));
    colonne:=stringgrid1.colcount;
    ligne:=stringgrid1.rowcount;
    Blockwrite(f,colonne,sizeof(colonne));
    Blockwrite(f,ligne,sizeof(ligne));
    For pour:=1 to 16 do for pour2 :=1 to 16 do
    begin
      s:=stringgrid1.cells[pour,pour2];
      c:=s[1];
      BlockWrite(f,c,1);
    end;
    BlockWrite(f,Ident,SizeOf(Ident));
    blockwrite(f,memomem,256);
    blockwrite(f,memo,256);
    finally
    Closefile(f);
    end;
  End;
End;

procedure TForm1.StringGrid1Click(Sender: TObject);
var ligne,colonne:smallint;
begin
   retirelesuns;
   ligne:=posx div 33;
   colonne:=posy div 17;
   if StringGrid1.cells[ligne,colonne]<>'1' then StringGrid1.cells[ligne,colonne]:='1'
                                            else StringGrid1.cells[ligne,colonne]:='0' ;
   execute;
end;

procedure TForm1.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   posx:=x;posy:=y;
end;
 procedure lecture;
Var Pour,pour2,ligne,colonne:Smallint;
    F:File;
    c:char;
begin
  ASSIGNfile(F,nomdefichier);
  ReSet(f,1);
  BlockRead(f,Nombre,SizeOf(Nombre));
  Blockread(f,colonne,sizeof(colonne));
  Blockread(f,ligne,sizeof(ligne));
  form1.stringgrid1.colcount:=colonne;
  form1.stringgrid1.rowcount:=ligne;
  For pour:=1 to 16 do for pour2 :=1 to 16 do
  begin
    BlockRead(f,c,1);
    form1.stringgrid1.cells[pour,pour2]:=c;
  end;
  BlockRead(f,Ident,SizeOf(Ident));
  blockRead(f,memomem,256);
  blockRead(f,memo,256);
  Closefile(f);
  with form1 do
  begin
     edit8.text:= ident[8];
     edit7.text:=ident[7];
     edit6.text:=ident[6];
     edit5.text:=ident[5];
     edit4.text:=ident[4];
     edit3.text:=ident[3];
     edit2.text:=ident[2];
     edit1.text:=ident[1];
     edit9.text:=memo;
  end;
  affiche_tableau;
  execute;
end;

procedure TForm1.FormCreate(Sender: TObject);
var ligne,colonne:smallint;
begin
  for ligne:=1 to 16 do for colonne:=1 to 16 do StringGrid1.cells[ligne,colonne]:='0';
  nombre:=1;
  Affiche_Tableau;
  evaluation1.enabled:=false;
  if  ParamCount>0 then
  begin
    NomdeFichier:=changefileext(ParamStr(1),'.kaw');
    Lecture;
    form1.Caption :='TABLEAU '+ExtractFilename(NomdeFichier);
  end;
end;

procedure TForm1.Inverser1Click(Sender: TObject);
var pour,pour2:Smallint;
Begin
  retirelesuns;
  for pour:=1 to form1.stringgrid1.colcount do for pour2 :=1 to form1.stringgrid1.rowcount do
    If form1.Stringgrid1.cells[pour,pour2]='1' then form1.Stringgrid1.cells[pour,pour2]:='0'
                                               else form1.Stringgrid1.cells[pour,pour2]:='1';
  Execute;
end;


procedure TForm1.Ouvrir1Click(Sender: TObject);

Begin
  if fichiermodifie then
  begin
     Dialogvaleur:=MessageDlg('Sauver le fichier ?', mtConfirmation,[mbYes,mbno,mbcancel], 0);
     Case dialogvaleur of
       id_yes:Enregistrersous1Click(Self);
       id_Cancel:exit
     end;
  end;
  if openDialog1.execute then
  Begin
    fichiermodifie:=false;
    nomdefichier:=OpenDialog1.Filename;
    lecture;
  End else exit;
end;

procedure TForm1.Quitter1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Monmeprcdent1Click(Sender: TObject);
begin
 retirelesuns;
 if nbcas=0 then exit;
 if pourmonome>1 then dec(pourmonome) else pourmonome:=nbcas;
 if Allumonome(pourmonome,true,true) then;
end;

procedure TForm1.Monmesuivant1Click(Sender: TObject);
begin
 retirelesuns;
 if nbcas=0 then exit;
 if pourmonome<nbcas then inc(pourmonome) else pourmonome:=1;
 if Allumonome(pourmonome,true,true) then;
end;

procedure TForm1.Evaluation1Click(Sender: TObject);
begin
   expression;
   if nombre>0 then execute;
end;

procedure TForm1.Edit9KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  memo1.lines.clear;
  memo1.lines.add('. : Et  + : Ou  * : Ou exclusif / : Nand ^ : Nor ~ : complémentaire = : Identité');
  memo1.lines.add('Exemple : v+(Z2~.Albert+b~+V).Les variables ne peuvent commencer par 0 ou par 1.');
  memo1.lines.add('Attention à la casse et aux parenthèses!');
 evaluation1.enabled:=(edit9.text<>'');
end;

procedure TForm1.Excute1Click(Sender: TObject);
begin
   execute;
end;

procedure TForm1.Session1Click(Sender: TObject);
var ligne,colonne:smallint;
    s:string;
begin
   Execute;
   memo1.lines.add(memo);
   memo1.Lines.add(Edit7.text+' '+Edit5.text+' '+Edit3.text+' '+Edit1.text);
   for ligne:=0 to stringgrid1.rowcount-1 do
   begin
     s:='';
     for colonne:=0 to stringgrid1.colcount-1 do s:=s+
     copy(stringgrid1.cells[colonne,ligne]+'      ',1,5)+#09;
     memo1.Lines.add(s);
   end;
   memo1.Lines.add(Edit8.text+' '+Edit6.text+' '+Edit4.text+' '+Edit2.text);
   memo1.selectAll;
   memo1.CopyToClipboard;
end;

procedure TForm1.Apropos1Click(Sender: TObject);
begin
  Aboutbox.showmodal;
end;

procedure TForm1.pressepapier1Click(Sender: TObject);
var ligne,colonne:smallint;
    s:string;
begin
   Execute;
   memo1.lines.add(memo);
   memo1.Lines.add(Edit7.text+' '+Edit5.text+' '+Edit3.text+' '+Edit1.text);
   for ligne:=0 to stringgrid1.rowcount-1 do
   begin
     s:='';
     for colonne:=0 to stringgrid1.colcount-1 do s:=s+
      copy(stringgrid1.cells[colonne,ligne]+'      ',1,5)+#09;
     memo1.Lines.add(s);
   end;
    memo1.Lines.add(Edit8.text+' '+Edit6.text+' '+Edit4.text+' '+Edit2.text);
    memo1.selectAll;
    memo1.CopyToClipboard;
end;

procedure TForm1.Nouveau1Click(Sender: TObject);
var pour,pour2:smallint;
    bad:boolean;
begin
    retirelesuns;
    Form2.caption:='TABLEAU';
    form2.Groupbox1.caption:='Combien de variables ?';
    form2.RadioButton3.checked:=true;
    Form2.showmodal;
    for pour:=1 to form1.stringgrid1.colcount do
   for pour2 :=1 to form1.stringgrid1.rowcount do
    form1.Stringgrid1.cells[pour,pour2]:='0';
    affiche_tableau;
    bad:=false;
    for pour:=1 to nombre do if ident[pour]='' then bad:=true;
    if bad then MessageDlg('ATTENTION : Nommez toutes les variables !',mtWarning,[mbYes],0)
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[1]:=copy(form1.edit1.text,1,3);execute;
end;

procedure TForm1.Edit3KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[3]:=copy(form1.edit3.text,1,3);execute;
end;

procedure TForm1.Edit4KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[4]:=copy(form1.edit4.text,1,3);execute;
end;

procedure TForm1.Edit2KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[2]:=copy(form1.edit2.text,1,3);execute;
end;

procedure TForm1.Edit6KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[6]:=copy(form1.edit6.text,1,3);execute;
end;

procedure TForm1.Edit8KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[8]:=copy(form1.edit8.text,1,3);execute;
end;

procedure TForm1.Edit7KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[7]:=copy(form1.edit7.text,1,3);execute;
end;

procedure TForm1.Edit5KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   ident[5]:=copy(form1.edit5.text,1,3);execute;
end;

end.
