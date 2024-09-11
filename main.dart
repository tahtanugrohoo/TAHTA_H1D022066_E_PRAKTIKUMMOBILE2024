import 'dart:io';
import 'dart:math';

void main() {
  var choices = ['batu', 'gunting', 'kertas'];
  var random = Random();

  print('Pilih salah satu: batu, gunting, atau kertas:');
  String? userChoice = stdin.readLineSync()?.toLowerCase();

  if (!choices.contains(userChoice)) {
    print('Pilihan tidak valid. Silakan pilih antara batu, gunting, atau kertas.');
    return;
  }

  String computerChoice = choices[random.nextInt(choices.length)];
  print('Komputer memilih: $computerChoice');

  if (userChoice == computerChoice) {
    print('Hasilnya seri!');
  } else if ((userChoice == 'batu' && computerChoice == 'gunting') ||
             (userChoice == 'gunting' && computerChoice == 'kertas') ||
             (userChoice == 'kertas' && computerChoice == 'batu')) {
    print('Kamu menang!');
  } else {
    print('Kamu kalah!');
  }
}
