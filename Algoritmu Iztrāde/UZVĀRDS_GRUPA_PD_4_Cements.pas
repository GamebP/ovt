Program Cements;

Uses Crt;

var
  { Cementa krajums sakuma (tonnas) }
  c: Real;

  { Cementa daudzums, izlietots pirmaja darba diena (tonnas) }
  primaDiena: Real;

  { Pieauguma procentualais daudzums katra nakamaja darba dienâ }
  procenti: Real;
  decimalProcents: Real;

  { Cik pilnam darba dienam pietika cementa }
  pilnasDienas: Integer;

  { Cik tonnas cementa atlikusas nepilnajai darba dienai }
  atlikusaisCements: Real;

  { Teksta mainigais konvertacijai }
  txt: String;

  { Kludas kods (Ja nav kludas, k = 0) }
  k: Integer;

Label
     Starts;

Begin
Starts:
  ClrScr;

  repeat
    Write('Ievadiet sakuma cementa krajumu (tonnas): ');
    Readln(txt);

    { Parbauda, vai ievaditais teksts ir pareizi konvertajams par skaitli }
    Val(txt, c, k);

    { Parbauda, vai bija kluda parveidojot tekstu par skaitli }
    if k <> 0 then
    begin
      { Izvada kludas pazinojumu un lidz lietotajam ievadit pareizu vertibu }
      WriteLn('Kluda: Nepareiza vertiba. Ludzu, ievadiet pozitivu skaitli.');
      ReadLn;

      { Notira ekranu, lai atkartoti paraditu ievades jautajumu }
      ClrScr;

      { Pâreja uz sakumu, lai atkartoti iegutu pareizu ievadi }
      Goto Starts;
    end;
  until c > 0;

  primaDiena := 2.3;
  pilnasDienas := 0;
  atlikusaisCements := c;

  repeat
    Randomize;
    procenti := 1 + Random(4);
    decimalProcents := procenti / 100;
    primaDiena := primaDiena * (1 + procenti / 100);

    if primaDiena <= atlikusaisCements then
    begin
      atlikusaisCements := atlikusaisCements - primaDiena;
      pilnasDienas := pilnasDienas + 1;
    end;
  until primaDiena > atlikusaisCements;

  WriteLn('Pietika cementa pilnam darba dienam: ', pilnasDienas);
  WriteLn('Atlikusais cementa daudzums nepilnajai darba dienai (tonnas): ', atlikusaisCements:0:2);
	WriteLn('Izmantoto procentu skaits no 0 lidz 5: ', procenti:0:2, ' jeb ', decimalProcents:0:2);
  WriteLn;
  WriteLn('Nospiediet <Esc>, lai izietu, vai citu taustinu, lai atkartotu.');
  repeat until KeyPressed;
  { #27 atbilst <Esc> taustinam }
  if ReadKey = #27 then
  { Iziet no programmas, ja nospiests <Esc> }
    Halt
  Else
  { Cits taustins nozime ka atgriezties pie sakuma }
    goto Starts;
End.
