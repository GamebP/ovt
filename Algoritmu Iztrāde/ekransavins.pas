Program Ekransavins;

Uses
Crt;

Const
  Neizmantot = 66;
	
Var
  maxX, maxY, count: Integer;
  taustins: Char;
	
Label
	Starts;
	
Begin
Starts:
  Randomize;
  Clrscr;
  maxX := 100; // Iegûst loga platumu
  maxY := 26;  // Iegûst loga augstumu
  count := 0;

	TextColor(White);
  Write('Spied <Esc>, lai aizvçrtu, vai citu taustiòu, lai notîrîtu logu...');

	Repeat
    Gotoxy(Random(maxX) + 1, Random(maxY) + 1);
    // Pârvieto kursoru uz random X un Y pozîciju
    If Wherey = 1 Then
      Begin
        If Wherex <= Neizmantot Then
          continue;
        // Pâriet pie nâkamâ cikla soli, ja simbols ir aizliegts
      End;
			
    TextColor(Random(15) + 1); // Izvçlçto krâsu
    Write(Chr(Random(254 - 33) + 33)); // Random simbols no ASCII 33 lîdz 254
    Delay(300); // Aizkave 300 milisekundes (0.3 sekundes)
    Inc(count);
		
  Until (Keypressed); // Iziet no cikla, ja nospiests ESC vai ir sasniegts maksimâlais simbolu skaits
  taustins := Readkey;
  If Ord(taustins) = 27 Then Halt
  Else Goto Starts;
End.
