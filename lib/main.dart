import 'package:flutter/material.dart';
import 'Header.dart';
import 'Chess.dart';

void main()
{
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
            title: 'Ocho reinas Juego',
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