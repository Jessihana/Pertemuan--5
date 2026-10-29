program UAS;
uses crt;

var
    uas: array[1..10] of integer;
    n, i, j, temp: integer;

begin
    clrscr;
    // jumlah angka yang bisa dimasukkan
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);

    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
        readln(uas[i]);
    end;

  // Mengurutkan dari terendah ke tertinggi
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if uas[j] > uas[j + 1] then
      begin
        temp := uas[j];
        uas[j] := uas[j + 1];
        uas[j + 1] := temp;
      end;

  writeln('Nilai UAS setelah diurutkan (dari terendah ke tertinggi):');
  for i := 1 to n do
    write(uas[i], ' ');
  
  readln;
end.