Program Krasas;

Uses Crt;

Var
	k:Integer; { Krasas kods un cikla mainigais, jeb atkartojuma skaititajs }

Begin
	{ Cikls ar zinamu atkartojuma skaitu visu krasu atrasanai, iegusanai }
	For k := 1 To 15 Do
		Begin
				textColor(k); { Teksta krasas maina }
				WriteLn('Ogres tehnikums');
		End;

	{ Programmas nobeigums }
	WriteLn; { Tuksa rinda }
	textColor(lightgray); { Noklusejuma (Default) krasa }
	WriteLn('Nospied kadu taustinu...');
	ReadKey;
End.