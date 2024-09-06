import 'dart:typed_data';
import 'package:automatic_pdf_maker/widgets/header_and_footer.dart';
import 'package:automatic_pdf_maker/widgets/image_link_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:printing/printing.dart';
import 'package:http/http.dart' as http;
import 'package:automatic_pdf_maker/text_.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  ///________________________ LOAD NETWORK IMAGE _____________________________
  Future<Uint8List> _loadNetworkImage(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception('Failed to load image');
    }
  }

  Future<Uint8List> myPdfView(PdfPageFormat format) async {
    final pdf = pw.Document();

    ///_______________TEXT __________________________________________\\
    String summary = AppConstants.summary;
    String summaryPointone = AppConstants.summaryPointone;
    String descriptionPoinOne = AppConstants.descriptionPoinOne;
    String editorialBasedMcq = AppConstants.editorialBasedMcq;
    String editorialBasedMainsQuestion =
        AppConstants.editorialBasedMainsQuestion;
    String questionOneMainsQuestion = AppConstants.questionOneMainsQuestion;
    String questionTwoMainsQuestion = AppConstants.questionTwoMainsQuestion;
    String answer = AppConstants.answer;
    String mainsConclusion = AppConstants.mainsConclusion;
    String mainsConclusionTwo = AppConstants.mainsConclusionTwo;
    String mainsChallenges = AppConstants.mainsChallenges;
    String mainsChallengesTwo = AppConstants.mainsChallengesTwo;
    String mainsOpportunities = AppConstants.mainsOpportunities;
    String mainsOpportunitiesTwo = AppConstants.mainsOpportunitiesTwo;
    String introduction = AppConstants.introduction;
    String mainsIntroductionTwo = AppConstants.mainsIntroductionTwo;
    String mainsIntroduction = AppConstants.mainsIntroduction;
    String pyqPrelimsQuestionOne = AppConstants.pyqPrelimsQuestionOne;
    String pyqPrelimsQuestionTwo = AppConstants.pyqPrelimsQuestionTwo;
    String pyqPrelimsQuestionTwod = AppConstants.pyqPrelimsQuestionTwod;
    String pyqOptions = AppConstants.pyqOptions;
    String pyqStatementOne = AppConstants.pyqStatementOne;
    String pyqStatementTwo = AppConstants.pyqStatementTwo;
    String mainsPyqQuestionOne = AppConstants.mainsPyqQuestionOne;
    String mainsPyqQuestionTwo = AppConstants.mainsPyqQuestionTwo;
    String mainsPyqQuestionYearOne = AppConstants.mainsPyqQuestionYearOne;
    String mainsPyqQuestionYearTwo = AppConstants.mainsPyqQuestionYearTwo;

    ///______________ IMAGES ______________________________________________

    const imageUrl1 =
        'https://epaperarchives.telegraphindia.com/epaperimages//04112017//4112017-ce-fr-2l.jpg';
    const imageUrl2 =
        'https://cdn.pixabay.com/photo/2016/11/14/03/22/elephant-1822481_640.jpg';
    const imageUrl3 = 'https://i.postimg.cc/4xVz3VxC/Group-1716.png';
    final image1 = await _loadNetworkImage(imageUrl1);
    final image2 = await _loadNetworkImage(imageUrl2);
    final logo = await _loadNetworkImage(imageUrl3);

    ///_______________________ URL LAUNCHER _______________________________
    void _launchURL() async {
      const url = 'https://www.example.com';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    /// ___________________ HEADER___________________________________________

    pw.Widget _buildHeader() {
      return pw.Container(
        height: 40,
        width: double.infinity,
        color: const PdfColor.fromInt(0xff00A19B),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            if (logo != null) pw.Image(pw.MemoryImage(logo), height: 30),
            pw.SizedBox(width: 12),
          ],
        ),
      );
    }

    ///_________________________ Bullet Points __________________________________________
    pw.Widget _buildBulletPoint(String text) {
      return pw.Container(
        margin: const pw.EdgeInsets.symmetric(vertical: 2),
        child: pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.SizedBox(width: 10),
            pw.Padding(
              padding: const pw.EdgeInsets.only(top: 5),
              child: pw.Container(
                width: 5,
                height: 5,
                decoration: const pw.BoxDecoration(
                  shape: pw.BoxShape.circle,
                  color: PdfColors.black,
                ),
              ),
            ),
            pw.SizedBox(width: 5),
            pw.Expanded(
              child: pw.Text(
                text,
                textAlign: pw.TextAlign.justify,
                style: pw.TextStyle(
                    fontSize: 12, fontWeight: pw.FontWeight.normal),
              ),
            ),
          ],
        ),
      );
    }

    ///_________________ ABOUT PAPER CONTAINER ___________________________________________
    pw.Widget _aboutPaper() {
      return pw.Container(
        width: 300,
        decoration: pw.BoxDecoration(
            color: const PdfColor.fromInt(0xffD6F0EF),
            borderRadius: pw.BorderRadius.circular(6),
            border: pw.Border.all(
                color: const PdfColor.fromInt(0xff00A19B), width: 2)),
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Container(
                height: 28,
                decoration: const pw.BoxDecoration(
                    borderRadius: pw.BorderRadius.only(
                      topRight: pw.Radius.circular(6),
                      topLeft: pw.Radius.circular(6),
                    ),
                    color: PdfColor.fromInt(0xff00A19B)),
                child: pw.Align(
                  alignment: pw.Alignment.centerLeft,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                    child: pw.Text(
                      'General Studies Paper: ',
                      style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 12,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'Topics :',
                      style: pw.TextStyle(
                        fontSize: 12,
                        fontWeight: pw.FontWeight.normal,
                        color: const PdfColor.fromInt(0xff000000),
                      ),
                    ),
                    pw.SizedBox(width: 8),
                    pw.Expanded(
                        child: pw.Container(
                      padding: const pw.EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      decoration: pw.BoxDecoration(
                        color: const PdfColor.fromInt(0xffD6F0EF),
                        border: pw.Border.all(
                            color: const PdfColor.fromInt(0xff00A19B)),
                        borderRadius: pw.BorderRadius.circular(4.0),
                      ),
                      child: pw.Text(
                        AppConstants.topicname,
                        style: pw.TextStyle(
                          fontSize: 12.0,
                          fontWeight: pw.FontWeight.normal,
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'Paper :',
                      style: pw.TextStyle(
                        fontSize: 12,
                        fontWeight: pw.FontWeight.normal,
                        color: const PdfColor.fromInt(0xff000000),
                      ),
                    ),
                    pw.SizedBox(width: 8),
                    pw.Expanded(
                      child: pw.Container(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 6),
                        decoration: pw.BoxDecoration(
                          color: const PdfColor.fromInt(0xff00A19B),
                          border: pw.Border.all(
                              color: const PdfColor.fromInt(0xff00A19B)),
                          borderRadius: pw.BorderRadius.circular(4.0),
                        ),
                        child: pw.Text(
                          AppConstants.paperName,
                          style: pw.TextStyle(
                            fontSize: 12.0,
                            color: PdfColors.white,
                            fontWeight: pw.FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(height: 6),
              pw.Divider(color: const PdfColor.fromInt(0xff00A19B)),
              pw.SizedBox(height: 6),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        'OPTIONAL SUBJECT:  ',
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                          color: const PdfColor.fromInt(0xff00A19B),
                        ),
                      ),
                      pw.SizedBox(height: 4),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: AppConstants.optionalSubjects
                            .map((subject) => _buildBulletPoint(subject))
                            .toList(),
                      ),
                    ]),
              ),
              pw.SizedBox(height: 10),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        'EASSY TOPICS :  ',
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                          color: const PdfColor.fromInt(0xff00A19B),
                        ),
                      ),
                      pw.SizedBox(height: 4),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: AppConstants.eassyTopics
                            .map((subject) => _buildBulletPoint(subject))
                            .toList(),
                      ),
                    ]),
              ),
              pw.SizedBox(height: 20),
            ]),
      );
    }

    ///_______________________ KEY POINTS _______________________________________________
    pw.Widget _keyPoints() {
      return pw.Container(
        width: double.infinity,
        decoration: pw.BoxDecoration(
            color: const PdfColor.fromInt(0xffD6F0EF),
            borderRadius: pw.BorderRadius.circular(6),
            border: pw.Border.all(
                color: const PdfColor.fromInt(0xff00A19B), width: 2)),
        child: pw.Column(
          children: [
            pw.Container(
              height: 28,
              decoration: const pw.BoxDecoration(
                  borderRadius: pw.BorderRadius.only(
                    topRight: pw.Radius.circular(6),
                    topLeft: pw.Radius.circular(6),
                  ),
                  color: PdfColor.fromInt(0xff00A19B)),
              child: pw.Align(
                alignment: pw.Alignment.centerLeft,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                  child: pw.Text(
                    'KEY POINTS : ',
                    style: pw.TextStyle(
                      color: PdfColors.white,
                      fontSize: 12,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            pw.Padding(
              padding:
                  const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: AppConstants.keyPoints
                    .map((subject) => _buildBulletPoint(subject))
                    .toList(),
              ),
            )
          ],
        ),
      );
    }

    ///============================================= TEXT : (WIDGET) ==============================///
    //___________________________________ TITLE TEXT 1 _________________________________

    pw.Widget _titleTextOne(String titleOne) {
      return pw.Text(
        titleOne,
        style: pw.TextStyle(
          color: const PdfColor.fromInt(0xFF00A19B),
          fontSize: 15,
          fontWeight: pw.FontWeight.bold,
        ),
      );
    }

    pw.Widget _descriptionTextOne(String descriptionOne) {
      return pw.Text(descriptionOne,
          textAlign: pw.TextAlign.justify,
          style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.black));
    }

    pw.Widget blackTitle(String blackTitle) {
      return pw.Text(blackTitle,
          textAlign: pw.TextAlign.justify,
          style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black));
    }

    ///______________________________MCQ____________________________________
    pw.Widget _buildMCQ(Map<String, dynamic> mcq, int index) {
      return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(height: 30),
          pw.Text(
            'MCQ ${index + 1} :', // Dynamic title based on index
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: const PdfColor.fromInt(0xff00A19B),
            ),
          ),
          pw.SizedBox(height: 30),
          pw.Text(
            mcq['statement'],
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10, top: 5),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: List.generate(mcq['statementOptions'].length, (index) {
                return pw.Text(
                  '${index + 1}. ${mcq['statementOptions'][index]}',
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.black,
                  ),
                );
              }),
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            mcq['question'],
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10, top: 5),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: List.generate(mcq['options'].length, (index) {
                String optionLabel =
                    String.fromCharCode('a'.codeUnitAt(0) + index);
                return pw.Text(
                  '$optionLabel) ${mcq['options'][index]}',
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.black,
                  ),
                );
              }),
            ),
          ),
          pw.SizedBox(height: 8),
          pw.Text(
            'Correct Answer: ${mcq['correctAnswer']}',
            style: pw.TextStyle(
              fontSize: 12,
              fontStyle: pw.FontStyle.italic,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 10),
          pw.Text(
            'Explanation:',
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            mcq['explanation'],
            textAlign: pw.TextAlign.justify,
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 10),
        ],
      );
    }

    ///______________________________MCQ2____________________________________
    pw.Widget _buildMCQTwo(Map<String, dynamic> mcq, int index) {
      return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(height: 30),
          pw.Text(
            'MCQ ${index + 1} :', // Dynamic title based on index
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: const PdfColor.fromInt(0xff00A19B),
            ),
          ),
          pw.SizedBox(height: 30),
          pw.Text(
            mcq['statement'],
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10, top: 5),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: List.generate(mcq['statementOptions'].length, (index) {
                return pw.Text(
                  '${index + 1}. ${mcq['statementOptions'][index]}',
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.black,
                  ),
                );
              }),
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            mcq['question'],
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10, top: 5),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: List.generate(mcq['options'].length, (index) {
                String optionLabel =
                    String.fromCharCode('a'.codeUnitAt(0) + index);
                return pw.Text(
                  '$optionLabel) ${mcq['options'][index]}',
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.black,
                  ),
                );
              }),
            ),
          ),
          pw.SizedBox(height: 8),
          pw.Text(
            'Correct Answer: ${mcq['correctAnswer']}',
            style: pw.TextStyle(
              fontSize: 12,
              fontStyle: pw.FontStyle.italic,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 10),
          pw.Text(
            'Explanation:',
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            mcq['explanation'],
            textAlign: pw.TextAlign.justify,
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 10),
        ],
      );
    }

    ///______________________________MCQ-3____________________________________
    pw.Widget _buildMCQThree(Map<String, dynamic> mcq, int index) {
      return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(height: 30),
          pw.Text(
            'MCQ ${index + 1} :', // Dynamic title based on index
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: const PdfColor.fromInt(0xff00A19B),
            ),
          ),
          pw.SizedBox(height: 30),
          pw.Text(
            mcq['statement'],
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10, top: 5),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: List.generate(mcq['statementOptions'].length, (index) {
                return pw.Text(
                  '${index + 1}. ${mcq['statementOptions'][index]}',
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.black,
                  ),
                );
              }),
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            mcq['question'],
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10, top: 5),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: List.generate(mcq['options'].length, (index) {
                String optionLabel =
                    String.fromCharCode('a'.codeUnitAt(0) + index);
                return pw.Text(
                  '$optionLabel) ${mcq['options'][index]}',
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.black,
                  ),
                );
              }),
            ),
          ),
          pw.SizedBox(height: 8),
          pw.Text(
            'Correct Answer: ${mcq['correctAnswer']}',
            style: pw.TextStyle(
              fontSize: 12,
              fontStyle: pw.FontStyle.italic,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 10),
          pw.Text(
            'Explanation:',
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            mcq['explanation'],
            textAlign: pw.TextAlign.justify,
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 10),
        ],
      );
    }

    /// ___________________ FOOTER ___________________________________________
    pw.Widget _buildFooter(int pageNumber, Uint8List logo) {
      void _launchURL() async {
        const url = 'https://paigpt.ai/download/';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      }

      return pw.Container(
        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
        height: 40,
        width: double.infinity,
        color: const PdfColor.fromInt(0xff00A19B),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            if (logo != null) pw.Image(pw.MemoryImage(logo), height: 30),

            // pw.GestureDetector(
            //   onTap: _launchURL, // Call _launchURL function on tap
            //   child: pw.Text(
            //     'https://paigpt.ai/download/',
            //     style: pw.TextStyle(
            //       color: PdfColors.white,
            //       fontSize: 12,
            //       fontWeight: pw.FontWeight.normal,
            //       decoration: pw.TextDecoration.underline,
            //     ),
            //   ),
            // ),
            pw.Text(
              '$pageNumber',
              style: pw.TextStyle(
                color: PdfColors.white,
                fontSize: 12,
                fontWeight: pw.FontWeight.bold,
              ),
            )
          ],
        ),
      );
    }

    ///_________________________PAGE 1 : ____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(children: [
          _buildHeader(),
          pw.Column(children: [
            pw.SizedBox(height: 20),
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 20),
              child: pw.Column(children: [
                pw.Text(
                  AppConstants.mainTitle,
                  style: pw.TextStyle(
                    decoration: pw.TextDecoration.underline,
                    decorationColor: const PdfColor.fromInt(0xff00A19B),
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                    color: const PdfColor.fromInt(0xff00A19B),
                  ),
                ),
                pw.SizedBox(height: 20),
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      _aboutPaper(),
                      pw.SizedBox(width: 20),
                      pw.Column(children: [
                        if (image1 != null)
                          pw.Image(pw.MemoryImage(image1),
                              height: 300, width: 230, fit: pw.BoxFit.fill),
                        pw.SizedBox(height: 10),
                        pw.Text(
                          'Click here to view full Image',
                          style: const pw.TextStyle(
                            color: PdfColor.fromInt(0xff00A19B),
                            decoration: pw.TextDecoration.underline,
                            decorationColor: PdfColor.fromInt(0xff00A19B),
                          ),
                        ),
                      ])
                    ]),
                pw.SizedBox(height: 20),
                _keyPoints(),
              ]),
            ),
            pw.SizedBox(height: 12),
          ]),
          _buildFooter(1, logo),
        ]),
      ),
    );

    ///__________________________ PAGE 2 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 10),
                  _titleTextOne(summary),
                  pw.SizedBox(height: 5),
                  _titleTextOne(summaryPointone),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(descriptionPoinOne),
                  pw.SizedBox(height: 5),
                  _titleTextOne(summaryPointone),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(descriptionPoinOne),
                  pw.SizedBox(height: 5),
                  _titleTextOne(summaryPointone),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(descriptionPoinOne),
                  pw.SizedBox(height: 5),
                  _titleTextOne(summaryPointone),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(descriptionPoinOne),
                  pw.SizedBox(height: 5),
                  _titleTextOne(summaryPointone),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(descriptionPoinOne),
                  pw.SizedBox(height: 5),
                  _titleTextOne(summaryPointone),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(descriptionPoinOne),
                  pw.SizedBox(height: 5),
                  _titleTextOne(summaryPointone),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(descriptionPoinOne),
                ],
              ),
            ),
            _buildFooter(2, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 3 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 10),
                  _titleTextOne(editorialBasedMcq),
                  pw.SizedBox(height: 5),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: AppConstants.mcqs.asMap().entries.map((entry) {
                      int index = entry.key;
                      Map<String, dynamic> mcq = entry.value;
                      return _buildMCQ(mcq, index);
                    }).toList(),
                  ),
                ],
              ),
            ),
            _buildFooter(3, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 4 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: AppConstants.mcqs.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, dynamic> mcq = entry.value;
                  return _buildMCQTwo(mcq, index);
                }).toList(),
              ),
            ),
            _buildFooter(4, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 5 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: AppConstants.mcqs.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, dynamic> mcq = entry.value;
                  return _buildMCQThree(mcq, index);
                }).toList(),
              ),
            ),
            _buildFooter(5, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 6 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 10),
                  _titleTextOne(editorialBasedMainsQuestion),
                  pw.SizedBox(height: 10),
                  blackTitle(questionOneMainsQuestion),
                  blackTitle(answer),
                  pw.SizedBox(height: 20),
                  _titleTextOne(introduction),
                  pw.SizedBox(height: 10),
                  _descriptionTextOne(mainsIntroduction),
                  pw.SizedBox(height: 15),
                  _titleTextOne('Body:'),
                  pw.SizedBox(height: 8),
                  _titleTextOne('Challenges :'),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(mainsChallenges),
                  pw.SizedBox(height: 5),
                  _titleTextOne('Opportunities :'),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(mainsOpportunities),
                  pw.SizedBox(height: 5),
                  _titleTextOne('Conclusion :'),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(mainsConclusion),
                  pw.SizedBox(height: 5),
                ],
              ),
            ),
            _buildFooter(6, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 7 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 10),
                  blackTitle(questionTwoMainsQuestion),
                  blackTitle(answer),
                  pw.SizedBox(height: 20),
                  _titleTextOne(introduction),
                  pw.SizedBox(height: 10),
                  _descriptionTextOne(mainsIntroductionTwo),
                  pw.SizedBox(height: 15),
                  _titleTextOne('Body:'),
                  pw.SizedBox(height: 8),
                  _titleTextOne('Challenges :'),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(mainsChallengesTwo),
                  pw.SizedBox(height: 5),
                  _titleTextOne('Opportunities :'),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(mainsOpportunitiesTwo),
                  pw.SizedBox(height: 5),
                  _titleTextOne('Conclusion :'),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(mainsConclusionTwo),
                  pw.SizedBox(height: 5),
                ],
              ),
            ),
            _buildFooter(7, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 8 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 10),
                  _titleTextOne('PYQ'),
                  pw.SizedBox(height: 10),
                  blackTitle('Prelims'),
                  pw.SizedBox(height: 10),
                  blackTitle('Question 1 :'),
                  pw.SizedBox(height: 10),
                  _descriptionTextOne(pyqPrelimsQuestionOne),
                  pw.SizedBox(height: 10),
                  blackTitle('Options :'),
                  pw.SizedBox(height: 10),
                  _descriptionTextOne(pyqOptions),
                  pw.SizedBox(height: 10),
                  blackTitle('Answer: 2 only'),
                  pw.SizedBox(height: 10),
                  blackTitle('Explanation:  '),
                  pw.SizedBox(height: 5),
                  blackTitle('Statement 1:   '),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(pyqStatementOne),
                  pw.SizedBox(height: 10),
                  blackTitle('Statement 1:   '),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(pyqStatementTwo),
                ],
              ),
            ),
            _buildFooter(8, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 9 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 10),
                  blackTitle('Question 2 :'),
                  pw.SizedBox(height: 5),
                  blackTitle(pyqPrelimsQuestionTwo),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(pyqPrelimsQuestionTwod),
                  pw.SizedBox(height: 10),
                  blackTitle('Question 1 :'),
                  pw.SizedBox(height: 10),
                  _descriptionTextOne(pyqPrelimsQuestionOne),
                  pw.SizedBox(height: 10),
                  blackTitle('Options :'),
                  pw.SizedBox(height: 10),
                  _descriptionTextOne(pyqOptions),
                  pw.SizedBox(height: 10),
                  blackTitle('Answer: 2 only'),
                  pw.SizedBox(height: 10),
                  blackTitle('Explanation:  '),
                  pw.SizedBox(height: 5),
                  blackTitle('Statement 1:   '),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(pyqStatementOne),
                  pw.SizedBox(height: 10),
                  blackTitle('Statement 1:   '),
                  pw.SizedBox(height: 5),
                  _descriptionTextOne(pyqStatementTwo),
                ],
              ),
            ),
            _buildFooter(9, logo),
          ],
        ),
      ),
    );

    ///__________________________ PAGE 10 : _____________________________________
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.only(top: 20, bottom: 20),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
          children: [
            _buildHeader(),
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25),
              height: 720,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 10),
                  pw.SizedBox(height: 5),
                  _titleTextOne('Mains PYQs'),
                  pw.SizedBox(height: 10),
                  blackTitle('Question  1 :'),
                  pw.SizedBox(height: 10),
                  pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        _descriptionTextOne(mainsPyqQuestionOne),
                        blackTitle(mainsPyqQuestionYearOne),
                      ]),
                  pw.SizedBox(height: 20),
                  blackTitle('Question  2 :'),
                  pw.SizedBox(height: 10),
                  pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        _descriptionTextOne(mainsPyqQuestionTwo),
                        blackTitle(mainsPyqQuestionYearTwo),
                      ]),
                  pw.SizedBox(height: 10),
                ],
              ),
            ),
            _buildFooter(10, logo),
          ],
        ),
      ),
    );
    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (format) => myPdfView(format),
      ),
    );
  }
}
