import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me_doc/custom%20widgets/textstyle/textstyle.dart';
import 'package:me_doc/pages/home.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../custom widgets/colors/colors.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({Key? key}) : super(key: key);

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Mood Tracker",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "<",
                      size: 24,
                      color: Colors.black,
                      bold: FontWeight.w500),
                  Text("Agustus 2022", style: SubJudul()),
                  CustomText(
                      text: ">",
                      size: 24,
                      color: Colors.black,
                      bold: FontWeight.w500),
                ],
              ),
              Text(
                "Grafik Moodmu",
                style: SubJudul(),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [],
                    ),
                    Container(
                      child: Expanded(
                        child: SfCartesianChart(
                          tooltipBehavior: TooltipBehavior(
                              enable: true,
                              header: "Mood",
                              format: "tanggal point.y kamu point.x",
                              animationDuration: 500,
                              duration: 3000,
                              canShowMarker: true,
                              color: maincolor()),
                          isTransposed: true,
                          primaryXAxis: CategoryAxis(),
                          series: <LineSeries<EmotionData, String>>[
                            LineSeries<EmotionData, String>(
                              dataSource: <EmotionData>[
                                EmotionData(1, "Senyum", Colors.green),
                                EmotionData(2, "Senyum", Colors.green),
                                EmotionData(3, "Sad", Colors.blueAccent),
                              ],
                              markerSettings: MarkerSettings(
                                isVisible: true,
                              ),
                              pointColorMapper: (EmotionData data, _) =>
                                  data.color,
                              xValueMapper: (EmotionData data, _) => data.hari,
                              yValueMapper: (EmotionData data, _) => data.day,
                            ),
                          ],
                          // primaryYAxis: NumericAxis( isVisible: false, ),
                          // primaryYAxis: CategoryAxis(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Pelajari Setiap Moodmu",
                style: SubJudul(),
              ),
              SizedBox(
                height: 10,
              ),
              SelesaiList(context,
                  color: Color(0xffEF5DA8),
                  icon: "assets/happy_face.png",
                  text1: "Senang",
                  text2: "Jumlah mood : 4"),
              SizedBox(
                height: 5,
              ),
              SelesaiList(context,
                  color: Color(0xffC7F466),
                  icon: "assets/poker_face.png",
                  text1: "Biasa",
                  text2: "Jumlah mood : 4"),
              SizedBox(
                height: 5,
              ),
              SelesaiList(context,
                  color: Color(0xff4DCCC1),
                  icon: "assets/sad_face.png",
                  text1: "Sedih",
                  text2: "Jumlah mood : 4"),
              SizedBox(
                height: 5,
              ),
              SelesaiList(context,
                  color: Color(0xffFF696B),
                  icon: "assets/angry_face.png",
                  text1: "Marah",
                  text2: "Jumlah mood : 4"),
              SizedBox(height: 20,),
              Text("Rekomendasi Meditasi", style: SubJudul(),),
              SizedBox(height: 10,),
              Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  child: MeditationList()),

            ],
          ),
        ),
      ),
    );
  }
}

class EmotionData {
  EmotionData(this.day, this.hari, this.color);

  final int day;
  final String hari;
  final Color color;
}

Widget SelesaiList(
  BuildContext context, {
  required Color color,
  required String icon,
  required String text1,
  required String text2,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 11,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffF6F6F6), width: 2)),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 8,
          height: MediaQuery.of(context).size.width / 8,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
          child: Image.asset(
            icon,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              text2,
              style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9B9B9B)),
            ),
          ],
        ),
        Spacer(),
        Text(
          ">",
          style: GoogleFonts.poppins(fontSize: 18, color: maincolor()),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
        ),
      ],
    ),
  );
}
