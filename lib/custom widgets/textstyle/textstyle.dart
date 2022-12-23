import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle SubJudul() {
  TextStyle font = GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500);
  return font;
}

Text CustomText({required String text,required double size,required Color color, required FontWeight bold}) {
  return Text(text, style: GoogleFonts.poppins(fontSize: size,fontWeight: bold, color: color),);
}
