Program RinkuLinija;

Uses Crt;    {Bibliotekas jeb modula pieslegsana}

Var
	R:Integer; {Rinka radiuss}
	C, 				 {Rinka linijas garums}
	S          {Rinka linijas laukums}
	:Real;

Label
	Starts;

Begin
	Starts:
		{Ekrana notirisana}
		ClrScr;
		
		{Datu ievadisana}
		Write('Ievadi rinka radiusu: ');
		Readln(R);

										 {Aprekinu veiksana}
		C:= 2 * Pi * R;  {Rinka linijas garums}
		S:= Pi * Sqr(R); {Rinka laukums}

										 {Rezultatu paradisana uz ekrana}
	  WriteLn;
		WriteLn('Rinka linijas garums ir ', C:0:2 ,' garuma vienibas');
		WriteLn('Rinka laukums ir ', S:0:2 ,' laukuma vienibas');
		WriteLn;

										 {Ko darit talak?}
	  WriteLn('Spied <Esc>, lai beigtu programmas darbu,');
		WriteLn('       vai kadu citu taustinu, lai atkartotu...');

										 {Nospiesta taustina analize}
	  If Ord(ReadKey)<>27 Then {27 ir escape <Esc> decimalais kods}
			Goto Starts; 	 {Programa tiks turpinata no iezimes "Starts"}
End.
	