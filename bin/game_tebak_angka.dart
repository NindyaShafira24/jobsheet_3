import 'dart:io';
import 'dart:math';

void main() {
  print('=== Game Tebak Angka ===');
  print('Saya telah memilih angka antara 1 sampai 100.');
  print('Coba tebak angkanya!\n');

  int angkaRahasia = Random().nextInt(100) + 1;
  int tebakan = 0;
  int percobaan = 0;

  while (tebakan != angkaRahasia) {
    stdout.write('Masukkan tebakanmu: ');
    tebakan = int.parse(stdin.readLineSync()!);
    percobaan++;

    if (tebakan < angkaRahasia) {
      print('Terlalu kecil! Coba lagi.\n');
    } else if (tebakan > angkaRahasia) {
      print('Terlalu besar! Coba lagi.\n');
    } else {
      print('\n Selamat! Kamu berhasil menebak angkanya.');
      print('Angka rahasia: $angkaRahasia');
      print('Jumlah percobaan: $percobaan kali.');
    }
  }

  print('\n=== Game Selesai ===');
}
