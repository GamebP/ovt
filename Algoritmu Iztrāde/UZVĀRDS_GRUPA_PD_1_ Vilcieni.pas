Program Vilciens; {Programmas nosaukums}

Uses Crt; {Modula pieslegsana}

Var
	t:Integer; { Laiks 3 stundas }
	a:Integer; { Ievaditais km attalums }
	k:Integer; { Kludas kods }
	c:Real; { Atalums starp vilcieniem pec 3h }
	v:Real; { kilometri / stunda }
	txt:String; { Sakotnejai ievadisanai }

Label
	Starts,
	Beigas;

Begin
Starts:
	{ Ekrana notirisana kad atvers programu vai atkartos }
	ClrScr;
	
	{ Skaitla ierakstisana (cik km?) }
	Write('Ievadi attalumu starp vilcieniem (km - vesels skaitlis): ');
	{ Nolasa vai ir vesels skaitlis vai nav }
	Readln(txt);

	{ Konvercija par vilciena atrumu }
	Val(txt, a, k);
	{
		txt - Ko konverte (Teksts)
		a   - Uz ko konverte (Skaitlis)
		k   - Kludas kods (Ja nav kludas, k = 0)
	}

	{Kludu analize}
	if k = 0 Then
	{Kludas nav}
		Begin
			t := 3; { 3 stundas }
			a := Abs(a);
			c := Sqrt(a*a / 2); { Izrekina lai zinatu cik nobrauc vilciens}
			v := Abs(c / t); { stunda pieskir vertibu km }
			WriteLn;
			WriteLn('Pec 3 stundam vilcieni bus nobraukusi ', c:0:1 , ' km.');
			WriteLn('Vilcienu kustibas atrums ir ', v:0:1 , ' km/h.');
			WriteLn;
		End
	Else
	{Kludas ir}
		Begin
			WriteLn('Nav ievadits vesels skaitlis!');
			Goto Beigas;
		End;

		{Notika kluda, bet turpina bez problemam}
		Beigas:
		
		{Ko darit talak?}
		WriteLn('Spied <Esc>, lai beigtu programmas darbu,');
		WriteLn('       vai kadu citu taustinu, lai atkartotu...');
		
		{Nospiesta taustina analize }
		If Ord(ReadKey)<>27 Then
		{27 ir escape <Esc> decimalais kods}
			{Programa tiks turpinata no iezimes "Starts"}
			Goto Starts;
End.
	
	
	
	