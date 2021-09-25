import 'package:flutter/material.dart';
import 'package:eight_queens_game/Theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

AppBar buildAppBar() => AppBar
(
    
    title: MouseRegion
    (
        cursor: MaterialStateMouseCursor.clickable,
        child: GestureDetector
        (
            onTap: () async
            {
                String link = "https://github.com/arhcoder/";
                js.context.callMethod('open', [link]);
            },
            onLongPress: () async
            {
                String link = "https://github.com/arhcoder/eight-queens-game/";
                js.context.callMethod('open', [link]);
            },

            child: Text("Juego de las Ocho Reinas", style: GoogleFonts.staatliches(fontSize: 26.0))
        )
    ),
    centerTitle: true,

    backgroundColor: AppColors.closedBox,

    elevation: 0
);