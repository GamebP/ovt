program brivikritienaaturums;

uses
  crt;

var
  ilgums: Integer;
  atrums_mps, atrums_kmph: Real;
  t: Integer;
  taustins: Char;

begin
  while True do
  begin
    clrscr;

    repeat
      Write('Ievadiet brivi kritiena ilgumu (1 lidz 22 sekundes): ');
      Readln(ilgums);
      if (ilgums < 1) or (ilgums > 22) then
        Writeln('Ludzu, ievadiet skaitli no 1 lidz 22.');
    until (ilgums >= 1) and (ilgums <= 22);

    for t := 1 to ilgums do
    begin
      atrums_mps := 9.8 * t;
      atrums_kmph := atrums_mps * 3.6;
      WriteLn('Âtrums pçc ', t, ' sekundes ir ', atrums_mps:1:1, ' m/s jeb ', atrums_kmph:1:2, ' km/h.');
    end;

    WriteLn;

    WriteLn('Lai partrauktu programmu, nospiediet <Esc>, vai nospiediet jebkuru citu taustinu, lai atkartotu...');
    taustins := ReadKey;
    if taustins = #27 then
      Break;
  end;
end.