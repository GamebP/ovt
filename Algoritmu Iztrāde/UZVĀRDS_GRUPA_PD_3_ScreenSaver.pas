// Programmas nosaukums
Program Ekransavins;

Uses
	Crt;

Var
  taustins: Char;

Label
	Starts,
	Beigas;

Begin
Starts:
	// Izvelas nejausi
  Randomize;
	
	// Notira ekranu
  Clrscr;

	// Kursoru nerada
	CursorOff; 

	// Nomaina tekstu uz baltu 
	TextColor(White);
  Write('Spied <Esc>, lai aizvertu, vai citu taustinu, lai notiritu logu... ');

	Repeat
    Gotoxy(Random(WindMaxX) + 1, Random(WindMaxY) + 1);
    // Parvieto kursoru uz nejausu X un Y poziciju
    If WindMaxY = 1 Then
      Begin
				// Nevar izmantot pirmos 66 burtus
        If WindMaxX <= 66 Then
				// Pariet pie nakama cikla soli, ja simbols ir aizliegts 
          continue;
      End;

		// Nejausi izveleta krasa 
    TextColor(Random(15) + 1);
		// Nejauss izvelets simbols no ASCII 33 lidz 255
    Write(Chr(Random(255 - 33) + 33));
		// 300 milisekundes (0.3 sekundes)
    Delay(300);

	// Gaida kad kads taustins bus uzpiests
  Until (Keypressed);
  taustins := Readkey;
	// Iziet no cikla, ja nospiests <ESC>
  If Ord(taustins) = 27 Then
		// Ir nospiests <ESC>?, tad iet uz beigam
		Goto Beigas
  else
		// Nav nospiest <ESC>, bet ir nospiests cits taustins
		// Tad pariet uz startu
		Goto Starts;
	Beigas:
End.