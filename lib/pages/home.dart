import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget header() {
    return Padding(
      padding: EdgeInsets.only(right: 10, left: 10, top: 36, bottom: 20),
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
    return Column(
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
              width: 72,
              height: 72,
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
          width: 24,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffC7F466),
              ),
              width: 72,
              height: 72,
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
          width: 24,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff4DCCC1),
              ),
              width: 72,
              height: 72,
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
          width: 24,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFF696B),
              ),
              width: 72,
              height: 72,
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

  Widget content(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
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
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F6F6)
                      ),
                      child: Image.asset('assets/konsultasi.png'),
                    ),
                    SizedBox(height: 8,),
                    Text('Konsultasi', style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(width: 24,),
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F6F6)
                      ),
                      child: Image.asset('assets/meditasi.png', ),
                    ),
                    SizedBox(height: 8,),
                    Text('Meditasi', style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(width: 24,),
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F6F6)
                      ),
                      child: Image.asset('assets/bubble_breath.png', ),
                    ),
                    SizedBox(height: 8,),
                    Text('Bubble Breath', style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(width: 24,),
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F6F6)
                      ),
                      child: Image.asset('assets/tips.png', ),
                    ),
                    SizedBox(height: 8,),
                    Text('Tips', style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),)
                  ],
                ),
              ],
            )
          ],
        ));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: SafeArea(
          child: ListView(
            children: [
              header(),
              content()
            ],
          ),
        ));
  }
}
