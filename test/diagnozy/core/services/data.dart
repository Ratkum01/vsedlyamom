const List<Map<String, dynamic>?> myData = [
  {
    "title": "Диагноз",
    "body": [],
  },
  {
    "title": "Заболевание во время беременности",
    "body": [
      'Анемия при беременности',
      'Астма во время беременности ',
      'Аутоиммунные нарушения при беременности',
      'Рак во время беременности',
      'COVID-19 во время беременности',
      'Сахарный диабет при беременности',
      'Лихорадка во время беременности',
      'Фибромы при беременности',
      'Заболевания сердца при беременности',
      'Заболевания печени при беременности',
      'Гипертония при беременности ',
      'Инфекционное заболевание при беременности ',
      'Почечная недостаточность при беременности',
      'Судорожные расстройства во время беременности',
      'Заболевания, требующие хирургического вмешательства во время беременности ',
      'Тромбоэмболические нарушения при беременности ',
      'Заболевания щитовидной железы при беременности ',
      'Инфекция мочевыводящих путей при беременности',
    ],
  },
  {
    "title": "Инфекционные агенты могут нанести вред во время беременности.",
    "body": [
      'Chicken pox (varicella zoster virus)',
      'Coccidioidomycosis (Valley Fever) ',
      'Cytomegalovirus (CMV)',
      'Ebola virus ',
      'Hepatitis B virus (HBV) ',
      'Hepatitis C virus (HCV)',
      'Hepatitis E virus (HEV)',
      'Human Immunodeficiency Virus (HIV)',
      'Herpes  ',
      'Influenza ',
      'Listeria ',
      'Malaria  ',
      'Measles',
      'Parvovirus B19 (Fifth disease)',
      'Rubella (German measles) ',
      'Toxoplasmosis ',
      'Zika Virus',
    ],
  },
  {
    "title": "Conditions That Can Affect a Pregnancy ",
    "body": [
      'Diabetes ',
      'Obesity ',
      'High blood pressure ',
      'Age ',
      'Epilepsy',
    ],
  },
  {
    "title": "Drug Use during Pregnancy",
    "body": [
      'Vaccines During Pregnancy ',
      'Drugs Used to Treat Heart and Blood Vessel Disorders During Pregnancy',
      'Antidepressants During Pregnancy',
      'Antiviral Drugs During Pregnancy',
      'Social Drugs During Pregnancy',
      'Illicit Drugs During Pregnancy',
      'Drugs Used During Labor and Delivery ',
    ],
  },
  {
    "title": "Drug Use during Breastfeeding",
    "body": [
      'Drugs That Are Relatively Safe During Breastfeeding',
      'Drugs That Require a Doctor’s Supervision During Breastfeeding',
      'Drugs That Should Not Be Taken While Breastfeeding',
    ],
  },
];

const Map<String, dynamic> bodyInfromation = {
  "Anemia in Pregnancy": {
    "Prograph1": """
 Normally during pregnancy, erythroid hyperplasia of the marrow occurs, and red blood cell (RBC) mass increases. However,
 a disproportionate increase in plasma volume results in hemodilution (hydremia of pregnancy): hematocrit (Hct) decreases 
 from between 38% and 45% in healthy women who are not pregnant to about 34% during late single pregnancy and to 30% during
 late multifetal pregnancy. The following hemoglobin (Hb) and Hct levels are classified as anemic: 
       """,
    "Points1": [
      '1st trimester: Hb < 11 g/dL; Hct < 33%',
      '2nd trimester: Hb < 10.5 g/dL; Hct < 32%',
      '3rd trimester: Hb < 11 g/dL; Hct < 33%',
    ],
    "Prograph2": """
If Hb is < 11.5 g/dL at the onset of pregnancy, women may be treated prophylactically because subsequent hemodilution usually reduces Hb to < 10 g/dL. Despite hemodilution, oxygen-carrying capacity remains normal throughout pregnancy. Hct normally increases immediately after birth.
    """,
    "Prograph3":
        "Anemia occurs in up to one third of women during the 3rd trimester. The most common causes ar",
    "Points2": [
      "Iron deficiency ",
      "Folate deficiency ",
    ],
    "Prograph4":
        "Obstetricians, in consultation with a perinatologist, should evaluate anemia in pregnant Jehovah's Witness patients (who are likely to refuse blood transfusions) as soon as possible.",
    "Header1": "Symptoms and Signs of Anemia in Pregnancy ",
    "Prograph5":
        "Early symptoms of anemia are usually nonexistent or nonspecific (eg, fatigue, weakness, light-headedness, mild dyspnea during exertion). Other symptoms and signs may include pallor and, if anemia is severe, tachycardia or hypotension. ",
    "Prograph6": "Anemia increases risk of ",
    "Points3": [
      "Preterm delivery ",
      " Low birth weight ",
      " Postpartum maternal infections"
    ],
    "Header2": "Diagnosis of Anemia in Pregnancy ",
    "Prograph7":
        " Complete blood count (CBC), followed by testing based on mean corpuscular value (MCV) value ",
    "Prograp8":
        'Diagnosis of anemia begins with CBC; usually, if women have anemia, subsequent testing is based on whether the MCV is low (< 79 fL) or high (> 100 fL): ',
    "Points4": [
      'For microcytic anemias: Evaluation includes testing for iron deficiency (measuring serum ferritin) and hemoglobinopathies (using hemoglobin electrophoresis). If these tests are nondiagnostic and there is no response to empiric treatment, consultation with a hematologist is usually warranted.',
      'For macrocytic anemias: Evaluation includes serum folate and vitamin B12 levels.',
      'For anemia with mixed causes: Evaluation for both types is required.',
    ],
    "Header3": "Treatment of Anemia in Pregnancy ",
    "Points5": [
      "Treatment to reverse the anemia",
      "Transfusion as needed for severe symptoms or fetal indications",
    ],
    "Prograp9":
        """Treatment of anemia during pregnancy is directed at reversing the anemia (see below). 
Transfusion is usually indicated for any anemia if severe constitutional symptoms (eg, light-headedness, weakness, fatigue) or cardiopulmonary symptoms or signs (eg, dyspnea, tachycardia, tachypnea) are present; the decision is not based on the Hct """,
  },
};
