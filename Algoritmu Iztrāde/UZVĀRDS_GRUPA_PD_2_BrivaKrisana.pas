Program BrivaKrisana;

Uses crt;

Var
	s:String;     {Sakuma ievadei}
	tMax:Integer; {Ievaditais laiks}
	k:Integer;    {KLudas kods}
	t:Integer;    {Cikla mainigais}
	v:Real;       {Krisanas atrums m/s}
	vKm:Real;     {Krisanas atrums km/h}

Const g = 9.81843;

Label
	Starts, Beigas;
	
Begin
Starts:
	ClrScr; {Notira ekranu}

	{Skaitlu ievadisana}
	Write('Ievadi kermena krisanas ilgumu (1lidz 22 sekundes): ');
	Readln(s); {Sakotnejas veritbu pieskirsana}

	{Konvertesana}
	Val(s,tMax,k); {s- teksts ko konverte
									tMax- uz ko konverte
									k- kludas kods, ja nav kludas (k=0) }
	{Kludas analize}
	If (k<>0) or (tMax<1) or (tMax>22) Then
		Begin
			WriteLn('Ievaditais skaitlis neatbilst nosacijumiem.');
			Goto Beigas; {Programma tiks turpinata no gramatzimes "Beigas"}
		End;
	For t:=1 to tMax Do
		Begin
			v:=t*g; {Iegustam brivas krisanas atrumu}
			vKm:=v*3.6; {Iegustam brivas krisanas atrumu km/h}
			WriteLn('Atrums pec ',t,' sekundes ir ',v:0:1, 'm/s, jeb ',vKm:0:2, 'Km/h.');	 
		End;

Beigas:
	{Ko darit talak?}
	WriteLn; {Tuksa rinda}
	WriteLn('Spied <Esc>, lai beigtu programmas darbu,');
	WriteLn('      vai kadu citu taustinu, lai atkartotu...');

	{Nospiesta taustina analize}
	If ord(Readkey)<>27 then{27 ir escape decimalais kods}
	Goto Starts; {Programma tiks turpinata no gramatzimes "Starts"}
End.