import 'package:equatable/equatable.dart';
import 'package:http/http.dart';

class TreePregnaacy extends Equatable {
  TreePregnaacy();
  // Blaze_in_The_Vagina
  Map tree = {
    "index": "A0",
    false: {
      "index": "B0",
      false: {
        "index": "C0",
        //"Change_on_color": {
        false: {
          "index": "D0",
          // "Acute itch": {
          false: {
            "index": "E0",
            //Proteinuria:{
            false: {
              "index": "F0",
              // "Blood exit": {
              false: {
                "index": "G0",
                // "Sugar blood": {
                //===============================================7
                false: "нормальный", //<=101
                true: "сахарная беременностьt", //>101
                // }
              },
              //===============================================6
              true: "Вагинальное кровотечение",
              // }
            },
            //===============================================5
            true: "Эклампсия",

            //}
          },
          //===============================================4
          true: "Грибок",
          //}
        },
        //===============================================3
        true: {
          //"Pregnancy_month":{
          "index": "D1",
          false: "Инфекция мочевыводящих путей (UTI)", //<=3.5
          true: "Застойные почки", //>3.5
          // }
        },
        // }
      },

      //===============================================2
      true: {
        "index": "C1",
        //  "Articulation_ache": {
        false: "Слабость Кровь",
        true: "Воспаление крови",
        //  }
      },
    },

    //===============================================1
    true: "Инфекция вагинального тракта"
  };

  List treeValue = [
    [
      "A0",
      "Изжога во влагалище ",
      "No",
      "Yes",
      false,
      "Есть ли изжога на моче ",
    ],
    [
      "B0",
      "Истощение ",
      "No",
      "Yes",
      false,
      "Покажите, страдают ли беременные от переутомления и переутомления или нет",
    ],
    [
      "C0",
      "Изменение цвета  ",
      "No",
      "Yes",
      false,
      "Есть ли изменение цвета мочи ",
    ],
    [
      "C1",
      "Артикуляционная боль ",
      "No",
      "Yes",
      false,
      "Показать результаты, страдают ли беременные от артикуляционной боли",
    ],
    [
      "D0",
      "Острый зуд ",
      "No",
      "Yes",
      false,
      "Есть ли острый зуд во влагалище"
    ],
    [
      "D1",
      "Месяц беременности ",
      "<=3.5",
      ">3.5",
      false,
      //  "Show the months of pregnancy ",
      "Месяц беременности больше 3 месяцев",
    ],
    [
      "E0",
      "протеинурия ",
      "No",
      "Yes",
      false,
      "Есть ли протеинурия после теста",
    ],
    [
      "F0",
      "Кровотечение ",
      "No",
      "Yes",
      false,
      "Показать все результаты по всем существующим случаям есть ли выход крови ",
    ],
    [
      "G0",
      "Уровень сахара в крови ",
      "<=101",
      ">101",
      false,
      //"Show the on paper test",
      "Сахар в крови выше 110"
    ],
  ];

  // ignore: non_constant_identifier_names
  String Diagnosis(
      {required Map<String, bool> valueDiagnosis,
      required String indexvalueDiagnosis}) {
    Map myTree = tree;
    while (myTree[valueDiagnosis[indexvalueDiagnosis]].length == 3) {
      myTree = myTree[valueDiagnosis[indexvalueDiagnosis]];
      indexvalueDiagnosis = myTree["index"];
    }
    return myTree[valueDiagnosis[indexvalueDiagnosis]].toString();
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
