import 'dart:io';

void main(List<String> arguments) {
  int c = 0; //counter kata
  print('Input: \nKata: ');
  String kata = stdin.readLineSync()!;
  int k = kata.length;
  print('Jumlah: ');
  int x = int.parse(stdin.readLineSync()!);
  print('\nOutput: \n');

  if (x % 2 == 1) {
    for (int i = 0; i < x / 2 - 1; i++) //setengah atas
    {
      for (int j = 0; j < x / 2; j++) //kiri atas
      {
        if (i + j == x / 2 - 0.5)
          stdout.write('+');
        else if (i + j < x / 2 - 0.5)
          stdout.write(' ');
        else {
          stdout.write(kata[c]);
          c++;
          if (c >= kata.length) //reset counter
            c = 0;
        }

        stdout.write(' ');
      }

      for (int j = 0; j < x / 2 - 1; j++) //kanan atas
      {
        if (i - j == 1)
          stdout.write('+');
        else if (i - j < 1)
          stdout.write(' ');
        else {
          stdout.write(kata[c]);
          c++;
          if (c >= kata.length) //reset counter
            c = 0;
        }

        stdout.write(' ');
      }

      print('n');
    }

    for (int j = 0; j < x; j++) //baris tangah
    {
      if (j == 0 || j == x - 1)
        stdout.write('+');
      else {
        stdout.write(kata[c]);
        c++;
        if (c >= kata.length) //reset counter
          c = 0;
      }

      stdout.write(' ');
    }

    print('n');
  } else {
    stdout.write(kata + '\n');
  }
}
