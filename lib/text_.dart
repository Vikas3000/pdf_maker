import 'package:flutter/material.dart';

// constants.dart

class AppConstants {
  static const String mainTitle =
      "'Economic Decoupling and its implications on Global Economy',";
  static const String paperName =
      "GS Paper III (Economic Development, Technology, Biodiversity, Environment, Security and Disaster Management)";
  static const String subtitle = "This is a subtitle for my app";
  static const String answer = "Answer :";
  static const String introduction = "Introduction: ";
  static const String bodytext = "Body : ";
  static const String challenges = "Challenges : ";
  static const String opportunities = "Opportunities : ";
  static const String conclusion = "Conclusion : ";
  static const String pyq = "PYQ";
  static const String prelims = "Prelims";
  static const String mainsPYQs = "Mains PYQs ";
  static const String topicname = "This is the Topic section ";
  static const String body =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
      "Pellentesque hendrerit varius lacus, nec laoreet erat pulvinar sed.";
  static final List<String> options = [
    "Public Health",
    "economy",
    "Social issue",
    "Topic"
  ];
  static final List<String> optionalSubjects = [
    'Public Administration',
    'Political Science & International Relations',
    'Sociology',
  ];
  static final List<String> Paper = [
    "GS Paper III (Economic Development, Technology, Biodiversity, Environment, Security and Disaster Management)",
    "GS Paper II (Governance, Constitution, Polity, Social Justice and International relations)",
  ];
  static final List<String> eassyTopics = [
    'Health and Economy',
    '  and Economy',
    'Social Challenges',
  ];
  static final List<String> keyPoints = [
    'Infrastructure development will  focus on highways, airports, ports, and logistical parks, as well as the use of technology to improve quality and safety. The National      Infrastructure Pipeline will be given renewed emphasis.',
    'Narendra Modis priorities for his third term as Prime Minister of India include boosting the economy  through infrastructure development, supporting micro, small and medium  enterprises, and economic diversification.',
    'Manufacturing will be a key focus with the "Make in India 2.0" initiative, which includes      advanced manufacturing technologies and the development of specialized      manufacturing clusters.',
    'Job creation will be promoted through skill development, particularly in futuristic areas, and the expansion of the Skill India Mission.',
    'Other priorities include financial sector reforms, tax reforms, public expenditure on social  infrastructure, and export promotion. Digital India 2.0, space sector      advancements, and logistics and port infrastructure upgradation are also expected.'
  ];

  //------------------------------------------  Titles  ----------------------------------
  static const String summary = 'Summary : ';
  static const String summaryPointone =
      'Disapproval of the Prime Ministers Hubris and Religious Statements :';
  static const String descriptionPoinOne =
      'The 2024 national election results can be interpreted as a disapproval of Prime Minister Narendra Modis  hubris, particularly his statement that he was sent by God to accomplish a divine mission. This statement, made after his consecration at the Ram temple, was seen as an inappropriate mix of religion and politics for  a non-theocratic state. However, despite losing over 60 seats, Modis BJP party presented his first postelection appearance as a historic victory celebration.';

//---------------------------------------------- Editorial-Based MCQs ---------------------------------------------

  static const String editorialBasedMcq = 'Editorial-Based MCQs';
  static final List<Map<String, dynamic>> mcqs = [
    {
      "statement":
          "Consider the following statements based on the article \"The idea of India reborn\":",
      "statementOptions": [
        "The BJP lost the parliamentary seat of Barmer in Rajasthan during the elections mentioned.",
        "The elections expressed a yearning for the defense of constitutional values and citizen dignity.",
      ],
      "options": [
        "1 only",
        "2 only",
        "Both 1 and 2",
        "Neither 1 nor 2",
      ],
      "correctAnswer": "c) Both 1 and 2",
      "question": "Which of the above statements is/are correct?",
      "explanation":
          "The article mentions that priests in the Ram temple played a widely publicized role in addressing a controversial statement by the prime minister, which became significant in the election campaign."
    },
    {
      "statement": "",
      "statementOptions": [],
      "options": [
        "Inflation",
        "Unemployment ",
        "The prime ministers public statement ",
        "The necessity of a non-theocratic state",
      ],
      "correctAnswer": "C. The prime ministers public statement ",
      "question":
          "According to the article, which issue did the priests in the Ram temple address in January, whichbecame significant in the election campaign? ",
      "explanation":
          "The article mentions that priests in the Ram temple played a widely publicized role in addressing a controversial statement by the prime minister, which became significant in the election campaign."
    },
  ];
  static final List<Map<String, dynamic>> mcqPpageTwo = [
    {
      "statement": "",
      "statementOptions": [],
      "options": [
        "Authentic Idea of India ",
        "Pseudo-secularism ",
        "Nehruvian imposition",
        "Cultural appropriation ",
      ],
      "correctAnswer": "C. Nehruvian imposition",
      "question":
          "Which term do Hindu nationalists resent, according to the article?",
      "explanation":
          "Hindu nationalists have always resented the term Nehruvian imposition, associating it with the idea that it represents a historical and cultural imposition that is not authentic to India. "
    },
    {
      "statement":
          "In the context of the article, which of the following are reasons for BJP's electoral losses mentioned?",
      "statementOptions": [
        " Failure to handle economic issues effectively",
        "Anti-Muslim rhetoric",
        "Inability to deliver on promises related to Ayodhya temple",
        "Failure to address social justice concerns"
      ],
      "options": [
        "Only one",
        "Only two ",
        "Only three ",
        "All four ",
      ],
      "correctAnswer": "B. Only two ",
      "question": "How many of the above statements are correct? ",
      "explanation":
          "The correct statements are 2 and 4. The article mentions the anti-Muslim rhetoric and the failure to  address social justice concerns as reasons for the BJP's electoral losses. It does not specifically cite the  failure to handle economic issues effectively or the inability to deliver on promises related to the   Ayodhya temple as reasons for the losses in the context provided. "
    },
  ];
  static final List<Map<String, dynamic>> mcqsPageThree = [
    {
      "statement":
          "What significant electoral comparison does the article make regarding the BJP's performance in UPbetween 2014 and 2019?",
      "statementOptions": [
        "The BJP's vote share in UP fell by half. "
            "The BJP's vote share in UP doubled. "
            "The BJP's vote share in UP fell by as much as eight percentage points. "
            "The BJP's vote share in UP remained unchanged."
      ],
      "options": [
        "Authentic Idea of India ",
        "Pseudo-secularism ",
        "Nehruvian imposition",
        "Cultural appropriation ",
      ],
      "correctAnswer":
          " C. The BJP's vote share in UP fell by as much as eight percentage points. ",
      "question": "",
      "explanation":
          "The article mentions that the BJP's vote share in UP fell by as much as eight percentage points compared to2019. These questions should help to test the understanding of key points from the article and the broader politicalcontext it addresses."
    },
  ];

  //------------------------------------------------------Editorial-Based Mains Question & Answer----------------------------------
  static const String editorialBasedMainsQuestion =
      'Editorial-Based Mains Question & Answer';
  static const String questionOneMainsQuestion =
      'Question 1. Examine the impact of economic issues on recent electoral outcomes in India. ';
  static const String questionTwoMainsQuestion =
      'Question 2. Discuss the effectiveness of Indian elections in upholding democratic principles amids rising challenges. ';
  static const String mainsIntroduction =
      'The 2024 Indian national elections have resulted in various interpretations, with economic issues playing a significant role in the electoral outcomes. This essay will examine the challenges and opportunities that economic concerns presented during the elections and their impact on the final results. ';
  static const String mainsIntroductionTwo =
      'Indian elections have long been regarded as the cornerstone of democratic governance in the worlds largest democracy. However, in recent years, the effectiveness of Indian elections in upholding democratic  principles has come under scrutiny due to rising challenges. This essay will discuss these challenges and  the opportunities for strengthening Indias democratic processes.';
  static const String mainsOpportunities = "1. Economic Inequalities: The steeply rising economic inequalities in India, where a few becamemonumentally rich, and millions were without jobs, fueled discontent among voters. This economicdisparity led to a yearning for affirmative action and citizen dignity \n\n 2. Uncertainty about Affirmative Action: The uncertainty surrounding affirmative action policies and theirimplementation added to the challenges that economic issues posed during the elections. This concern wasparticularly evident among educated Dalits and OBCs. ";
  static const String mainsOpportunitiesTwo = "1. Economic Inequalities: The steeply rising economic inequalities in India, where a few becamemonumentally rich, and millions were without jobs, fueled discontent among voters. This economicdisparity led to a yearning for affirmative action and citizen dignity \n\n 2. Uncertainty about Affirmative Action: The uncertainty surrounding affirmative action policies and theirimplementation added to the challenges that economic issues posed during the elections. This concern wasparticularly evident among educated Dalits and OBCs. ";
  static const String mainsChallenges =
      '1. Concern for Constitutional Values: Economic issues, especially those related to affirmative action and   citizen dignity, became an election pitch for the Opposition. The presence of a copy of the Constitution in  Rahul Gandhis hands during campaign speeches signified the importance of these concerns. \n\n 2. Re-emergence of the Idea of India: The re-birth of the idea of India, which had been heavily suppressed in recent years, was evident in the elections. This re-emergence was primarily driven by concerns about  economic justice, equality, and dignity. ';
  static const String mainsChallengesTwo =
      '1. Concern for Constitutional Values: Economic issues, especially those related to affirmative action and   citizen dignity, became an election pitch for the Opposition. The presence of a copy of the Constitution in  Rahul Gandhis hands during campaign speeches signified the importance of these concerns. \n\n 2. Re-emergence of the Idea of India: The re-birth of the idea of India, which had been heavily suppressed in recent years, was evident in the elections. This re-emergence was primarily driven by concerns about  economic justice, equality, and dignity. ';
  static const String mainsConclusion =
      'In conclusion, economic issues presented both challenges and opportunities during the 2024 Indian national   elections. While economic inequalities and uncertainties about affirmative action policies fueled discontent  and a yearning for change, these same concerns provided an opportunity for the Opposition to turn the  "elite idea" of India into an election pitch. Ultimately, the 2024 elections represented a re-birth of the idea  of India, with a renewed focus on constitutional values, affirmative action, and citizen dignity. ';
 static const String mainsConclusionTwo =
      'In conclusion, economic issues presented both challenges and opportunities during the 2024 Indian national   elections. While economic inequalities and uncertainties about affirmative action policies fueled discontent  and a yearning for change, these same concerns provided an opportunity for the Opposition to turn the  "elite idea" of India into an election pitch. Ultimately, the 2024 elections represented a re-birth of the idea  of India, with a renewed focus on constitutional values, affirmative action, and citizen dignity. ';

//----------------------------------------- PYQ Prelims ----------------------------------------------------------------------
static const String pyqPrelimsQuestionOne  = "Consider the following statements: \n\n  1. The 44th Amendment to the Constitution of India introduced an Article placing the election of the  Prime Minister beyond judicial review.\n\n2. The Supreme Court of India struck down the 99th Amendment to the Constitution of India as being  violative of the independence of judiciary.  Which of the statements given above is/are correct? [2019]";
static const String pyqOptions = "a. 1 only\nb. 2 only\nc. Both 1 and 2\nd. Neither 1 nor 2 ";
static const String pyqStatementOne = "The Thirty-ninth Amendment of the Constitution of India, enacted on 10 August 1975,   placed the election of the President, the Vice President, the Prime Minister and the Speaker of the Lok  Sabha beyond the scrutiny of the Indian courts. It was passed during the Emergency of 1975–1977.";
static const String pyqStatementTwo = " 99th CA would have established the National Judicial Appointments Commission. But, in   2015, the Constitution Bench of Supreme Court by 4:1 Majority upheld the collegium system and struck  down the NJAC as unconstitutional.";

static const String pyqPrelimsQuestionTwo = "Consider the following statements: ";
static const String pyqPrelimsQuestionTwod = "1. In the election for Lok Sabha or State Assembly, the winning candidate must get at least 50 percent   of the votes polled, to be declared elected. \n 2. According to the provisions laid down in the Constitution of India, in Lok Sabha, the Speaker’s post  goes to the majority party and the Deputy Speaker’s to the Opposition. \n\nWhich of the statements given above is/are correct? [2017] ";


//--------------------------------------------------Mains PYQs -----------------------------------------------------------------------


static const String mainsPyqQuestionOne = "Clarify how mid-eighteenth century India was beset with the spectre of a fragmented polity.";
static const String mainsPyqQuestionTwo = " The Indian party system is passing through a phase of transition which looks to be full of   contradictions an paradoxes. Discuss. ";
static const String mainsPyqQuestionYearOne = "[2017]   [paper: 1] ";
static const String mainsPyqQuestionYearTwo = " [2016]   [paper: 2]";

}
