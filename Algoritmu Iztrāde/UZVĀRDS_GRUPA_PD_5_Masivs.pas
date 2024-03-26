{Programmas nosaukums}
program Masivs;

{Izmantota biblioteka}
uses
  Crt;

{Konstante, kas norada masuva garumu}
const
  MasivaGarums = 1000;

var
	{Masivs, kas glabas veselus skaitlus}
  m: array[1..1000] of integer;
	{Mainigie, kas izmantoti ciklu un skaitosanas nolukos}
  i, dalasAr9, paraSkaitli: integer;
	{Mainigais, kas saglabas lietotaja izveli}
  izvele: char;

label
	{Iezimes, kas tiks izmantotas programmas plusmas kontroles}
  Starts, Beigas;

begin
Starts:

	{Notira ekranu}
  ClrScr;
	
  Randomize;
	{Nejauss skaitku generators}

	repeat

		{Aizpilda masivu ar gadijuma skaitliem no 1 lidz 1000}
    for i := 1 to MasivaGarums do
      m[i] := Random(1000) + 1;

		{Sakuma nav skaitlu, kas dalas ar 9}
    dalasAr9 := 0;

		{Parada masiva elementus, kas dalas ar 9}
		writeln('Masiva elementi, kas dalas ar 9:');
    for i := 1 to MasivaGarums do
    begin
      if m[i] mod 9 = 0 then
      begin
        writeln('Indekss: ', i, ', Vertiba: ', m[i]);
        dalasAr9 := dalasAr9 + 1;
      end;
    end;
		
		{Sakuma nav paru skaitlu}
    paraSkaitli := 0;
		
		{Saskaita para skaitlus masina}
    for i := 1 to MasivaGarums do
    begin
      if m[i] mod 2 = 0 then
        paraSkaitli := paraSkaitli + 1;
    end;
		
		{Parada kopskaitu paru skaitlus un skaitlus, kas dalas ar 9}
    writeln('Kopejais para skaitlu skaits: ', paraSkaitli);
    writeln('Kopejais skaitlu skaits, kas dalas ar 9: ', dalasAr9);

		{Lietotajam jaizvelas, vai turpinat vai beigt programmu}
    writeln('Vai turpinat (nospiediet jebkuru taustinu), vai beigt (nospiediet <Esc>)?');

		{Nolasa lietotaja ievadito taustinu}
    izvele := readkey;

		{Parbauda, vai nav nospiesta taustina <Esc>}
    if ord(izvele) <> 27 then
      goto Starts // Jump back to Starts label if not Esc key
    else
		{Beidz programmu, ja nospiests taustins <Esc>}
      goto Beigas; // Exit the program if Esc key is pressed
  until False;

Beigas:
end.
