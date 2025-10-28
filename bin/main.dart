import 'dart:io';

void main() {
  print('=== Program Cek Bilangan Prima & Faktorial ===\n');

  stdout.write('Masukkan bilangan bulat positif: ');
  int n = int.parse(stdin.readLineSync()!);

  // Percabangan untuk validasi input
  if (n <= 0) {
    print('Input tidak valid! Masukkan angka lebih dari 0.');
  } else {
    // Perulangan untuk mengecek bilangan prima
    bool prima = true;
    if (n == 1) {
      prima = false;
    } else {
      for (int i = 2; i <= n ~/ 2; i++) {
        if (n % i == 0) {
          prima = false;
          break;
        }
      }
    }

    print('\n=== Hasil Pengecekan ===');
    if (prima) {
      print('$n adalah bilangan prima');
    } else {
      print('$n bukan bilangan prima');
    }

    //Tambahan baru: Menampilkan semua bilangan prima dari 1 hingga n
    print('\nBilangan prima dari 1 hingga $n:');
    for (int i = 2; i <= n; i++) {
      bool isPrima = true;
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          isPrima = false;
          break;
        }
      }
      if (isPrima) stdout.write('$i ');
    }
    print('');

    // Perulangan untuk menghitung faktorial
    int faktorial = 1;
    for (int i = 1; i <= n; i++) {
      faktorial *= i;
    }

    print('Nilai faktorial dari $n adalah: $faktorial');
  
    // Tambahan baru: faktorial versi while
    int faktorialWhile = 1;
    int i = 1;
    while (i <= n) {
      faktorialWhile *= i;
      i++;
    }
    print('Nilai faktorial (versi while) dari $n adalah: $faktorialWhile');
  }
  
  print('\n=== Program Selesai ===');
}
