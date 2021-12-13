import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eight_queens_game/Theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

import 'Header.dart';
import 'Chess.dart';

void main()
{
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            systemNavigationBarColor: AppColors.darkBox
        )
    );

    runApp(MyApp());
}

class MyApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp
        (
            debugShowCheckedModeBanner: false,

            title: '♟ Ocho Reinas | Juego online',
            home: Scaffold
            (
                appBar: buildAppBar(),

                body: SingleChildScrollView
                (
                    child: Center
                    (
                        child: Center
                        (
                            child: Container
                            (
                                margin: EdgeInsets.only(top: 30),
                                child: ChessTable()
                            )
                        )
                    )
                )
            ),

            localizationsDelegates:
            [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
            ],

            supportedLocales: S.delegate.supportedLocales
        );
    }
}