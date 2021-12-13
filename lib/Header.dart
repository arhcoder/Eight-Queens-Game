import 'package:flutter/material.dart';
import 'package:eight_queens_game/Theme.dart';

import 'MyTitle.dart';

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
            // El título se separó del AppBar debido a que para obtener
            // una traducción del texto, necesita un ancestro en su contexto.
            child: MyTitle()
        )
    ),
    centerTitle: true,

    backgroundColor: AppColors.closedBox,

    elevation: 0
);