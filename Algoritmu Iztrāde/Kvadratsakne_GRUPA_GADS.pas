Program Kvadratsakne;

Uses Crt;       		 {Bibliotekas jeb modula pieslegsana}

Var
	n:Integer;    		 {Ievaditais skaitlis}
	r:Real; 	    		 {Kvadratsakne no "n"}
	txt:String;   		 {Sakotnejai ievadisanai}
	k:Integer;    		 {Kludas konvertesanas kods}

Label
	Starts,
	Beigas;

Begin
	Starts:
		ClrScr;     		 {Ekrana notirisana}
		            		 {Skaitla ievadisana}
		Write('Ievadi veselu skaitli: ');
		Readln(txt);		 {Sakuma veribu pieskiram String tipa mainigajam}
										 {Konvertesana}
		Val(txt, n, k);
										 {
								 			 txt - Ko konverte (Teksts)
								 			 n   - Uz ko konverte (Skaitlis)
								 			 k   - Kludas kods (Ja nav kludas, k = 0)
										 }
										 {Kludas analize}
		if k = 0 Then 	 {Kludas nav}
			Begin
				n := Abs(n); {Parvers skaitli pozitiva}
				r := Sqrt(n);{Skaitla "n" kvadratsakne}
				WriteLn('Kvadratsakne no skaitla ', n ,' ir ', r:0:2);
			End
		Else
			Begin
				WriteLn('Nav ievadits vesels skaitlis!');
				Goto Beigas;
			End;
	Beigas:
										 {Ko darit talak?}
	WriteLn('Spied <Esc>, lai beigtu programmas darbu,');
	WriteLn('       vai kadu citu taustinu, lai atkartotu...');
										 {Nospiesta taustina analize}
	If Ord(ReadKey)<>27 Then
										 {27 ir escape <Esc> decimalais kods}
		Goto Starts;		 {Programa tiks turpinata no iezimes "Starts"}
End.