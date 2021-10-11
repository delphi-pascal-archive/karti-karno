unit lesvariables;

interface
uses graphics;



type    str3=string[3];
        str10=String[10];
        str255=String[255];
        T_resultat=array[1..16,1..16] of integer;
        T_elementcas=array[1..9] of integer;

var nombre,finv,finh,vh,vv,pourmonome,nbcas,posx,posy:Smallint;
    nomdefichier:string;
    sauve:boolean;
    ident : Array [0..8] Of Str3;
    Resultat,Deja,entre:t_resultat;
    memo,memomem,memomemmonome:str255;
    element,element2:Array[1..8] of integer;
    Cas,ncas:Array[1..256] of t_elementcas;
    leplus,lepoint,drapeau,fichiermodifie:boolean;
    caszero:t_elementcas;
    dialogvaleur:integer;

implementation

end.
 