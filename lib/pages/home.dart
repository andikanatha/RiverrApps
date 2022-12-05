import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me_doc/custom%20widgets/colors/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget header() {
    return Padding(
      padding: EdgeInsets.only(right: 0, left: 0, top: 36, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          welcome_txt(),
          SizedBox(
            height: 16,
          ),
          expression(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget welcome_txt() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Selamat Pagi, User',
                  style: GoogleFonts.poppins(
                      color: const Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 5,
              ),
              Text('Bagaimana Perasaanmu Hari ini ?',
                  style: GoogleFonts.poppins(
                      color: const Color(0xff000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w400))
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color(0xff42CCC9),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12))
          ),
          child: Center(child: Image.asset("assets/lonceng.png")),
        )
      ],
    );
  }

  Widget expression() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffEF5DA8),
              ),
              // width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height / 13,
              padding: EdgeInsets.all(12),
              child: Image.asset('assets/happy_face.png'),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Senang',
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 18,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffC7F466),
              ),
              // width: 72,
              height: MediaQuery.of(context).size.height / 13,
              padding: EdgeInsets.all(12),
              child: Image.asset('assets/poker_face.png'),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Biasa',
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 18,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff4DCCC1),
              ),
              // width: 72,
              height: MediaQuery.of(context).size.height / 13,
              padding: EdgeInsets.all(12),
              child: Image.asset('assets/sad_face.png'),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Sedih',
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 18,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFF696B),
              ),
              // width: 72,
              height: MediaQuery.of(context).size.height / 13,
              padding: EdgeInsets.all(12),
              child: Image.asset('assets/angry_face.png'),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Marah',
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ],
    );
  }

  Widget main_content() {
    return ListView(
      children: [
        Text(
          'Mengatasi Gangguan Kesehatan Mental',
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Widget content() {
    final String about_svg = 'assets/about.svg';
    final Widget svgabout = SvgPicture.asset(about_svg);
    final String meditation_svg = 'assets/meditation.svg';
    final Widget svgMeditation = SvgPicture.asset(
      meditation_svg,
    );
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mengatasi gangguan kesehatan mental',
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(18),
                      // width: 64,
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 12,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(8),
                              // BorderRadius.all(Radius.elliptical(200, 800)
                          color: Color(0xffF3F6F6)),
                      child: Image.asset('assets/konsultasi.png'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Konsultasi',
                      style: GoogleFonts.poppins(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 18,
                ),
                Column(
                  children: [
                    Container(
                      // width: 64,
                      // height: 64,
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 12,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F6F6)),
                      child: Image.asset(
                        'assets/meditasi.png',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Meditasi',
                      style: GoogleFonts.poppins(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 18,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 12,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F6F6)),
                      child: Image.asset(
                        'assets/bubble_breath.png',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bubble Breath',
                      style: GoogleFonts.poppins(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 18,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 12,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F6F6)),
                      child: Image.asset(
                        'assets/tips.png',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Tips',
                      style: GoogleFonts.poppins(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F6F6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(child: svgabout),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tentang Kesehatan Mental",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Edukasi tentang kesehatan Mental",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9B9B9B)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                      color: Color(0xff4DCCC1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          height: MediaQuery.of(context).size.height / 8,
                          decoration: BoxDecoration(
                              color: Color(0xffCBCBCB).withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.circular(20))),
                        ),
                      ),
                      Spacer(),
                      Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Kesehatan Mental ?",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text(
                                  "Cari Tau tentang pentingnya kesehatan mental",
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 25,
                                width: MediaQuery.of(context).size.width / 4.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Center(
                                  child: Text(
                                    "Cari Tau !",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff4DCCC1)),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Image.asset("assets/orang_puzzle.png")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F6F6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(child: svgMeditation),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rekomendasi Meditasi",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: Text(
                        "Beberapa edukasi berdasarkan suasana hati mu saat ini",
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9B9B9B)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 4.5,
                child: MeditationList()),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F6F6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(child: svgMeditation),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selesaikan Meditasi",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Lanjutkan meditasi yang belum selesai",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9B9B9B)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SelesaiList(context,
                color: maincolor(),
                icon: 'assets/meditation_list1.png',
                text1: 'Menerima Diri',
                text2: 'Durasi Sesi 24 Menit'),
            SizedBox(
              height: 5,
            ),
            SelesaiList(context,
                color: Color(0xffEF5DA8),
                icon: 'assets/meditation_list2.png',
                text1: 'Berhenti Overthinking',
                text2: 'Durasi Sesi 54 Menit'),
            SizedBox(
              height: 5,
            ),
            SelesaiList(context,
                color: maincolor(),
                icon: 'assets/meditation_list1.png',
                text1: 'Hilangkan Stressmu',
                text2: 'Durasi Sesi 47 Menit'),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F6F6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(child: SvgPicture.asset("assets/article.svg")),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artikel",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Artikel mengenai kesehatan mental",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9B9B9B)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Container(
                height: MediaQuery.of(context).size.height / 5.5,
                child: ArtikelList()),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: SafeArea(
          child: ListView(
            children: [header(), content()],
          ),
        ));
  }
}

class MeditationList extends StatelessWidget {
  const MeditationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 5.0),
        // shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3.2,
                    height: MediaQuery.of(context).size.height / 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF3F6F6),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.6,
                    child: Text("Hilangkan Overthinking",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.6,
                    child: Text("7 - 10 menit | Seri",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff999999),
                        )),
                  ),
                ],
              ),
            ),
          );
        });
  }
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
              color: btncolor(), borderRadius: BorderRadius.circular(100)),
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

class ArtikelList extends StatelessWidget {
  const ArtikelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 5.0),
// shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF3F6F6),
                  ),
                  child: Image.asset("assets/mental.png"),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text("Apa itu Kesehatan Mental?",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          );
        });
  }
}
