import 'package:eight_queens_game/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Header.dart';
import 'Chess.dart';

void main()
{
    runApp(MyApp());

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            systemNavigationBarColor: AppColors.closedBox
        )
    );
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
            )
        );
    }
}