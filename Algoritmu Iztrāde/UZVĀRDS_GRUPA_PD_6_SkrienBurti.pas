program SkrienBurti;

uses
  Crt;

var
  S, SkrejienaRinda: string;
  Garums: integer; {teksta garums}
  Taustins: char; {nospiesto taustinu}
  i, j: integer; {teksa apstrade}

label
  Starts;

begin
  repeat
Starts:
    ClrScr;
    Write('Ievadiet tekstu (garums no 5 lidz 80 simboliem): ');
    Readln(S);

    i := 1;
    // Atrast pirmo atstarpes simbolu no sakuma
    while (i <= Length(S)) and (S[i] = ' ') do
      Inc(i);
    // Atrast pedejo atstarpes simbolu no beigam
    j := Length(S);
    while (j > 0) and (S[j] = ' ') do
      Dec(j);
    // Izgustam jaunu virkni, kas sastav no simboliem no i lidz j
    S := Copy(S, i, j - i + 1);
    Garums := Length(S);

    if (Garums < 5) or (Garums > 80) then
    begin
      Writeln('Ievaditais teksts neatbilst prasitajam garumam!');
      Writeln('Ludzu, ievadiet tekstu velreiz.');
      Goto Starts;
    end;

    SkrejienaRinda := S + ' ';

    CursorOff;
    repeat
      // Paradit noradito tekstu pirms ClrScr komandas
      Writeln('Esc - beigt, jebkurs cits taustins - jauns teksts...');
      Writeln;
      Writeln;

      Write(SkrejienaRinda);
      Delay(300);
      ClrScr;

      SkrejienaRinda := Copy(SkrejienaRinda, 2, Length(SkrejienaRinda) - 1) + SkrejienaRinda[1];
    until KeyPressed;

    CursorOn;

    Taustins := Readkey;
    if Taustins = #27 then
      Break;

  until False;
end.
