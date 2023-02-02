import 'dart:io';

main() {
  var mainLesson = "Ders";
  var fail = "kesr";
  int alihendeseTotal = 48;
  int alicebrTotal = 65;
  int algoritmTotal = 65;
  int programlamaTotal = 86;
  int midterm = 0;
  int presentation = 0;
  int exam = 0;
  var lesson = "";

  print("Unibook sistemimize xosh geldiniz...");
  print("*********************************************");
  mainGreek:
  while (true) {
    stdout.write("Fennin adini daxil edin: ");
    String? lesson1 = stdin.readLineSync();
    lesson = lesson1.toString().toLowerCase().replaceAll(' ', '');

    if (lesson != "alicebr" &&
        lesson != "alihendese" &&
        lesson != "programlama" &&
        lesson != "algoritm") {
      print("Xaish edirik fenin adini dogru daxil edesiniz...");
      continue mainGreek;
    }
    print("******************************************************");
    break;
  }

  // derslerimiz 1.alihendese 2.alicebr 3.algoritm 4.programlama

  switch (lesson) {
    case "alihendese":
      print("Alihendese fenninin krediti 4'e beraberdir");
      mainLesson = "alihendese";
      break;
    case "alicebr":
      print("Alicebr fenninin krediti 6'ya beraberdir");
      mainLesson = "alicebr";
      break;
    case "algoritm":
      print("Algoritm fenninin krediti 6'ya beraberdir");
      mainLesson = "algoritm";
      break;
    case "programlama":
      print("Programlama fenninin krediti 8'e beraberdir");
      mainLesson = "programlama";
      break;
    default:
      print("Xaish edirik fennin adini duzgun daxil edesiniz");
      break;
  }
  if (lesson == "alihendese" ||
      lesson == "alicebr" ||
      lesson == "algoritm" ||
      lesson == "programlama") {
    greek1:
    while (true) {
      print("Midterm 30 balliq skala ile qiymetlendirilir... ");
      stdout.write("Midterm balinizi daxil edin : ");
      int? inputMidterm = int.parse(stdin.readLineSync()!);
      midterm = inputMidterm;
      if (inputMidterm > 30) {
        continue greek1;
      }
      print("******************************************************");
      break;
    }
    greek2:
    while (true) {
      print("Teqdimat 20 balliq skala ile qiymetlendirilir... ");
      stdout.write("Teqdimat balinizi daxil edin : ");
      int? inputPresentation = int.parse(stdin.readLineSync()!);
      presentation = inputPresentation;
      if (inputPresentation > 20) {
        continue greek2;
      }

      print("******************************************************");
      break;
    }

    greek3:
    while (true) {
      print("Imtahan 50 balliq skala ile qiymetlendirilir... ");
      stdout.write("Imtahan  balinizi daxil edin : ");
      int? inputExam = int.parse(stdin.readLineSync()!);
      exam = inputExam;
      if (inputExam > 50) {
        continue greek3;
      }
      print("******************************************************");
      break;
    }

    // inputMidterm + inputExam + inputPresentation;
    var totalPoint = midterm + presentation + exam;
    if (totalPoint >= 51 && totalPoint <= 60) {
      print("Siz son netice olaraq E almisiniz");
    } else if (totalPoint >= 61 && totalPoint <= 70) {
      print("Siz son netice olaraq D almisiniz");
    } else if (totalPoint >= 71 && totalPoint <= 80) {
      print("Siz son netice olaraq C almisiniz");
    } else if (totalPoint >= 81 && totalPoint <= 90) {
      print("Siz son netice olaraq B almisiniz");
    } else if (totalPoint >= 91) {
      print("Siz son netice olaraq A almisiniz");
    } else if (totalPoint <= 50) {
      print("Siz imtahandan kesilmisiniz");
      print(
          "Bu halda siz\n1.25% imtahani\n2.Yay mektebi\n3.Alt qrupa muraciet etmelisiniz...");
      stdout.write("Kesrinizi hansi ile baglamaq isteyirsiniz : ");
      int? fail = int.parse(stdin.readLineSync()!);
      print("***********************************************");
      switch (fail) {
        case 1:
          print(
              "Hemin fenninin kesr mebleginin 25% ni odeyib imtahana daxil olmalisiniz");
          if (lesson == "alihendese") {
            print(
                "alihendese ucun odemeli olacaginiz mebleg: ${alihendeseTotal * 0.25}");
          } else if (lesson == "alicebr") {
            print(
                "alihendese ucun odemeli olacaginiz mebleg: ${alicebrTotal * 0.25}");
          } else if (lesson == "programlama") {
            print(
                "alihendese ucun odemeli olacaginiz mebleg: ${programlamaTotal * 0.25}");
          } else if (lesson == "algoritm") {
            print(
                "alihendese ucun odemeli olacaginiz mebleg: ${algoritmTotal * 0.25}");
          }
          print(
              "Zehmet olmasa odenisi edib cek ile patok tutorunuza yaxinlasasiniz....");
          break;
        case 2:
          print("Bunun ucun fennin tam meblegini odemelisiniz...");
          print(
              "Odenisi edib tutora ceki apardiqdan sonra gmailinize qosulacaginiz yay qrupu barede butun melumatlar gonderilecek...");
          break;
        case 3:
          print("Bunun ucun fennin tam meblegini odemelisiniz...");
          print(
              "Odenisi edib tutora ceki apardiqdan sonra gmailinize qosulacaginiz alt qrup barede butun melumatlar gonderilecek...");
          break;
        default:
          print("Yanlish daxil etdiniz...");
          break;
      }
    }
  }
  
}
