{ Programas nosaukums }
Program GadijumaKrasas;

{ Areja biblioteka }
Uses Crt;

Var
	k { Krasas kods }
	:Integer; { Vesels skaitlis }

{ Koda sakums }
Begin
	{ Gaidijuma skaitli generatora aktivizesana }
	Randomize;

	{
		Ekrana kursoru izslegsana - jalieto
		FreePascal kompilators
	}
	cursorOff;

	{
		Cikls ar nezinamu atkartojuma skaitu
		un nosacijumu parbauda beigas
	}
	
	{ Atkarto }
	Repeat

		{ Gaidijuma skaitlis no 1 lidz 15 }
		k := Random(15) + 1;

		{ Teksta krasas maina uz noradito kodu }
		textColor(k);

		{ Kursora novietosana ekranam pa vidu }
		GotoXY(32, 13);

		{ Write vai WriteLn }
		Write('Ogres Tehnikums');

		{ Pauze 0,5 sekundes }
		Delay(500);

	{ Lidz tiek nospiests taustins }
	Until KeyPressed;

	{
		Ekrana kursoru ieslegsana - jalieto
		FreePascal kompilators
	}
	cursorOn;
End.