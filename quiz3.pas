program Kelulusan;
uses crt;

var 
    tugas, kuis, uts, uas: array[1..5] of real;
    rata: array[1..5] of real;
    n, i: integer;

begin
clrscr;
  
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);
  
    for i := 1 to n do begin
        writeln('Mahasiswa ke-', i);
        write('masukkan nilai Tugas, Kuis, UTS, UAS (pisahkan menggunakan spasi): '); 
        readln(tugas[i], kuis[i], uts[i], uas[i]);
        rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    // penilaian akhir
    for i := 1 to n do begin
        write('Mhs ', i, ' | Rata-rata: ', rata[i]:0:2, ' | Status: ');
        if rata[i] >= 70 then
        writeln('Lulus') 

        else
        writeln('Tidak Lulus');
    end;

  readln;
end.