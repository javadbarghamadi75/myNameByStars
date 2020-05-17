import 'dart:io';

import 'package:myNameByStars/myNameByStars.dart' as myNameByStars;

//void main(List<String> arguments) {
//  print('Hello world: ${myNameByStars.calculate()}!');
//}

void main() {
  _drawJ(int size) {
    var middle = (size % 2 == 0) ? size / 2 : (size + 1) / 2;

    for (var i = 0; i < size; i++) {
      for (var j = 0; j <= size; j++) {
        if (j == middle ||
            i == 0 ||
            (j >= 0 && j <= (middle - 1) && i == (size - 1)) ||
            (j == 0 && i >= (size - 4) && i <= (size - 1))) {
          stdout.write(' ** ');
        } else {
          stdout.write('    ');
        }
      }
      stdout.writeln();
    }
    stdout.writeln();
    stdout.writeln();
    stdout.writeln();
  }
//    for (var i = -middle; i < middle; i++) {
//      for (var j = -middle; j <= middle; j++) {
//        if ((j == 0 || i == -middle) ||
//            (j >= -middle && j <= middle && i == (size - 1)) ||
//            (j == 0 && i >= (size - 4) && i <= (size - 1))) {
//          stdout.write(' * ');
//        } else {
//          stdout.write('   ');
//        }
//      }
//      stdout.writeln();
//    }

  _drawA(int size) {
    var middle = (size % 2 == 0) ? size / 2 : (size + 1) / 2;

    for (var i = middle; i >= -middle; i--) {
      for (var j = -middle; j <= middle; j++) {
        if (i == (2 * j + 5) ||
            i == (-2 * j + 5) ||
            ((j >= (i - 5) / 2) && (j <= (i - 5) / -2) && i == 0)) {
          stdout.write(' ** ');
        } else {
          stdout.write('    ');
        }
      }
      stdout.writeln();
    }
    stdout.writeln();
    stdout.writeln();
    stdout.writeln();
  }

  _drawV(int size) {
    var middle = (size % 2 == 0) ? size / 2 : (size + 1) / 2;

    for (var i = -middle; i <= middle; i++) {
      for (var j = -middle; j <= middle; j++) {
        if (i == (2 * j + 5) || i == (-2 * j + 5)) {
          stdout.write(' ** ');
        } else {
          stdout.write('    ');
        }
      }
      stdout.writeln();
    }
    stdout.writeln();
    stdout.writeln();
    stdout.writeln();
  }

  _drawD(int size) {
    var middle = (size % 2 == 0) ? size / 2 : (size + 1) / 2;

    for (var i = -middle; i <= middle; i++) {
      for (var j = -middle; j <= middle; j++) {
        if ((j == -middle && i >= -middle && i <= middle) ||
            (i == middle && j >= -middle && j <= middle - 1) ||
            (i == -middle && j >= -middle && j <= middle - 1) ||
            (j == middle && i >= -middle + 1 && i <= middle - 1)) {
          stdout.write(' ** ');
        } else {
          stdout.write('    ');
        }
      }
      stdout.writeln();
    }
    stdout.writeln();
    stdout.writeln();
    stdout.writeln();
  }

  _drawJ(10);
  _drawA(10);
  _drawV(10);
  _drawA(10);
  _drawD(10);
}
