Program RandomSymbols;

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
  maxX := 100; // Ieg�st loga platumu
  maxY := 26;  // Ieg�st loga augstumu
  count := 0;

	TextColor(White);
  Write('Spied <Esc>, lai aizv�rtu, vai citu tausti�u, lai not�r�tu logu...');

	Repeat
    Gotoxy(Random(maxX) + 1, Random(maxY) + 1);
    // P�rvieto kursoru uz random X un Y poz�ciju
    If Wherey = 1 Then
      Begin
        If Wherex <= Neizmantot Then
          continue;
        // P�riet pie n�kam� cikla soli, ja simbols ir aizliegts
      End;
			
    TextColor(Random(15) + 1); // Izv�l�to kr�su
    Write(Chr(Random(254 - 33) + 33)); // Random simbols no ASCII 33 l�dz 254
    Delay(300); // Aizkave 300 milisekundes (0.3 sekundes)
    Inc(count);
		
  Until (Keypressed); // Iziet no cikla, ja nospiests ESC vai ir sasniegts maksim�lais simbolu skaits
  taustins := Readkey;
  If Ord(taustins) = 27 Then Halt
  Else Goto Starts;
End.
