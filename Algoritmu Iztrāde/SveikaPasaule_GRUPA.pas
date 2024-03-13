Program SveikaPasaule; {Programas nosaukums}

Uses Crt; {Modula piesleksana}

Begin
	{Kursora novietosana ekrana vidu}
	GotoXY(32,13);
	{Teksta krasas maina uz dzeltenu}
	textColor(14);
	{Atelosana ekrana teksts "Sveika pasaule!" }
	WriteLn('Sveika, Pasaule!');
	{Novietot originalo krasu kas bija ieprieks}
	textColor(15);
	{Tuksa rinda}
	WriteLn;
	{Raksta uz konsoles lai nospiez taustinu}
	WriteLn('Nospied taustinu...');
	{Klausities jebkuru taustinu, lai programa beigots}
	ReadKey
End.