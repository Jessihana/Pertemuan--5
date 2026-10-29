program Matriks;
uses crt;

var 
    A, B, C: array[1..5, 1..5] of integer;
    r1, k1, r2, k2, i, j: integer;

begin
clrscr;
    // Input ukuran matriks dari user
    write('Masukkan baris & kolom matriks 1 (misal: 2 2): '); 
    readln(r1, k1);
    write('Masukkan baris & kolom matriks 2 (misal: 2 2): '); 
    readln(r2, k2);

    if (r1 = r2) and (k1 = k2) then
    begin
        // Input elemen matriks 1
        writeln('Masukkan elemen Matriks 1:');
        for i := 1 to r1 do 
          for j := 1 to k1 do 
            readln(A[i,j]);

        // Input elemen matriks 2
        writeln('Masukkan elemen Matriks 2:');
        for i := 1 to r2 do 
          for j := 1 to k2 do 
            readln(B[i,j]);

        // Proses penjumlahan dan cetak hasil
        writeln('Hasil Penjumlahan:');
        for i := 1 to r1 do 
        begin
            for j := 1 to k1 do 
            begin
                C[i,j] := A[i,j] + B[i,j];
                write(C[i,j]:4);
            end;
        writeln;
    end;

    else 
        writeln('Ukuran matriks tidak sama, tidak dapat dijumlahkan!');

    readln;
end.