import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'generated/l10n.dart';

class MyTitle extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Text(S.current.title, style: GoogleFonts.staatliches(fontSize: 26.0));
    }
}