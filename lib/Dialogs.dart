import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eight_queens_game/Theme.dart';
import 'dart:js' as js;

AlertDialog buildHowDialog(BuildContext context)
{
    return AlertDialog
    (
        title: Row
        (
            children:
            [
                Flexible
                (
                    child: Container
                    (
                        width: 60.0,
                        height: 60.0,
                        child: SvgPicture.asset("img/rules.svg")
                    )
                ),
                SizedBox(width: 20.0),
                Text("¿Cómo jugar?")
            ]
        ),

        content: Text("Coloca OCHO reinas en el siguiente tablero de ajedrez.\n\n• Las reinas no pueden atacarse mutuamente.\n• Las reinas atacan en cruz y en diagonal.\n• Haz clic sobre una casilla para colocar una reina."),
        actions:
        [
            Padding
            (
                padding: EdgeInsets.all(12.0),
                child: ElevatedButton
                (
                    onPressed: (){Navigator.of(context).pop();},
                    child: Padding(padding: EdgeInsets.all(8.0), child: Text("Entendido")),
                    style: ButtonStyle
                    (
                        backgroundColor: MaterialStateProperty.all(AppColors.appTheme),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        mouseCursor: MaterialStateMouseCursor.clickable
                    )
                )
            )
        ]
    );
}
AlertDialog buildInfoDialog(BuildContext context)
{
    return AlertDialog
    (
        title: Row
        (
            children:
            [
                Flexible
                (
                    child: Container
                    (
                        width: 40.0,
                        height: 40.0,
                        child: SvgPicture.asset("img/information.svg")
                    )
                ),
                SizedBox(width: 20.0),
                Text("Acerca de...")
            ]
        ),

        content: Text("Desarrollado por Alejandro Ramos | @arhcoder.\n\n• Agradecimiento especial a Sriram Thiagarajan.\n• Iconos sacados de Flaticon.com.\n• Desarrollado con Flutter."),

        actions:
        [
            Padding
            (
                padding: EdgeInsets.all(12.0),
                child: ElevatedButton
                (
                    onPressed: (){Navigator.of(context).pop();},
                    child: Padding(padding: EdgeInsets.all(8.0), child: Text("Entendido")),
                    style: ButtonStyle
                    (
                        backgroundColor: MaterialStateProperty.all(AppColors.appTheme),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        mouseCursor: MaterialStateMouseCursor.clickable
                    )
                )
            )
        ]
    );
}
AlertDialog buildGithubDialog(BuildContext context)
{
    return AlertDialog
    (
        title: Row
        (
            children:
            [
                Flexible
                (
                    child: Container
                    (
                        width: 40.0,
                        height: 40.0,
                        child: SvgPicture.asset("img/code.svg")
                    )
                ),
                SizedBox(width: 20.0),
                Text("Código fuente")
            ]
        ),

        content: Text("¿Quieres revisar el código fuente en Dart/Flutter de este proyecto?\n"),
        actions:
        [
            Padding
            (
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextButton
                (
                    onPressed: (){Navigator.of(context).pop();},
                    child: Text("No")
                )
            ),
            Padding
            (
                padding: EdgeInsets.only(right: 12.0, bottom: 12.0),
                child: ElevatedButton
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
            )
        ]
    );
}