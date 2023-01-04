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
                false: "Natural", //<=101
                true: "Sugar pregnant", //>101
                // }
              },
              //===============================================6
              true: "Vaginal bleeding",
              // }
            },
            //===============================================5
            true: "Eclampsia",

            //}
          },
          //===============================================4
          true: "Fungus",
          //}
        },
        //===============================================3
        true: {
          //"Pregnancy_month":{
          "index": "D1",
          false: "Urinary tract infection (UTI)", //<=3.5
          true: "Congestion kidneys", //>3.5
          // }
        },
        // }
      },

      //===============================================2
      true: {
        "index": "C1",
        //  "Articulation_ache": {
        false: "Weakness Blood",
        true: "Inflammation Of Blood",
        //  }
      },
    },

    //===============================================1
    true: "Vaginal Tract Infection"
  };

  List treeValue = [
    [
      "A0",
      "Blaze in the vagina ",
      "No",
      "Yes",
      false,
      "Is there a blaze on urine ",
    ],
    [
      "B0",
      "Exhaustion ",
      "No",
      "Yes",
      false,
      "Show whether the pregnant suffer from tucker and overstrain or not",
    ],
    [
      "C0",
      "Change on color  ",
      "No",
      "Yes",
      false,
      "Is there a change on urine color ",
    ],
    [
      "C1",
      "Articulation ache ",
      "No",
      "Yes",
      false,
      "Show the results whether the pregnant suffer from Articulation ache ",
    ],
    [
      "D0",
      "Acute itch ",
      "No",
      "Yes",
      false,
      "Is there acute itch on vagina",
    ],
    [
      "D1",
      "Pregnancy month ",
      "<=3.5",
      ">3.5",
      false,
      //  "Show the months of pregnancy ",
      "The month of pregnancy is greater then 3 months",
    ],
    [
      "E0",
      "Proteinuria ",
      "No",
      "Yes",
      false,
      "Is there a proteinuria after the test",
    ],
    [
      "F0",
      "Blood Exit ",
      "No",
      "Yes",
      false,
      "Show the whole results for all the existing cases are there a blood exit ",
    ],
    [
      "G0",
      "Sugar blood ",
      "<=101",
      ">101",
      false,
      //"Show the on paper test",
      "Blood sugar is greater then 110"
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
