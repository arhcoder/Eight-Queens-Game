import 'package:flutter/material.dart';
import 'package:eight_queens_game/Theme.dart';
import 'dart:js' as js;

AlertDialog buildHowDialog(BuildContext context)
{
    return AlertDialog
    (
        title: Text("¿Cómo se juega?"),
        content: Text("En el siguiente tablero de ajedrez, coloca OCHO reinas de modo que no puedan atacarse mutuamente.\nHaz clic sobre una casilla para colocar una reina."),
        actions:
        [
            ElevatedButton
            (
                onPressed: (){Navigator.of(context).pop();},
                child: Padding(padding: EdgeInsets.all(8.0), child: Text("Okay")),
                style: ButtonStyle
                (
                    backgroundColor: MaterialStateProperty.all(AppColors.appTheme),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    mouseCursor: MaterialStateMouseCursor.clickable
                )
            )
        ]
    );
}
AlertDialog buildInfoDialog(BuildContext context)
{
    return AlertDialog
    (
        title: Text("Más Información"),
        content: Text("Desarrollado por Alejandro Ramos | @arhcoder.\nEste es un mero ejercicio de práctica hecho por entretenimiento.\nAgradecimiento especial a Sriram Thiagarajan."),
        actions:
        [
            ElevatedButton
            (
                onPressed: (){Navigator.of(context).pop();},
                child: Padding(padding: EdgeInsets.all(8.0), child: Text("Okay")),
                style: ButtonStyle
                (
                    backgroundColor: MaterialStateProperty.all(AppColors.appTheme),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    mouseCursor: MaterialStateMouseCursor.clickable
                )
            )
        ]
    );
}
AlertDialog buildGithubDialog(BuildContext context)
{
    return AlertDialog
    (
        title: Text("Código fuente"),
        content: Text("¿Quieres revisar el código fuente en Dart/Flutter, de este proyecto?\n"),
        actions:
        [
            TextButton
            (
                onPressed: (){Navigator.of(context).pop();},
                child: Text("No")
            ),
            ElevatedButton
            (
                onPressed: () async
                {
                    String link = "https://github.com/arhcoder/eight-queens-game/";
                    js.context.callMethod('open', [link]);
                    Navigator.of(context).pop();
                },

                child: Padding(padding: EdgeInsets.all(8.0), child: Text("Ver código")),
                style: ButtonStyle
                (
                    backgroundColor: MaterialStateProperty.all(AppColors.appTheme),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    mouseCursor: MaterialStateMouseCursor.clickable
                )
            )
        ]
    );
}