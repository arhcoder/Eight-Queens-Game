import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eight_queens_game/Theme.dart';

List buildPanel(
    VoidCallback resetMethod,
    VoidCallback solveMethod,
    VoidCallback howMethod,
    VoidCallback infoMethod,
    VoidCallback githubMethod
)
{
    final List <Widget> panel =
    [
        Container
        (
            width: 50.0,
            height: 50.0,

            child: FloatingActionButton
            (
                backgroundColor: AppColors.takenBox,
                tooltip: "Reiniciar",
                hoverElevation: 10,
                onPressed: resetMethod,
                child: Icon
                (
                    Icons.refresh,
                    size: 26.0
                )
            )
        ),

        SizedBox(width: 8.0, height: 8.0),

        Container
        (
            width: 44.0,
            height: 44.0,

            child: FloatingActionButton
            (
                backgroundColor: AppColors.takenBox,
                tooltip: "Solucionar",
                hoverElevation: 10,
                onPressed: solveMethod,
                child: Icon
                (
                    Icons.star,
                    size: 20.0
                )
            )
        ),

        SizedBox(width: 8.0, height: 8.0),

        Container
        (
            width: 44.0,
            height: 44.0,

            child: FloatingActionButton
            (
                backgroundColor: AppColors.appTheme,
                tooltip: "¿Cómo jugar?",
                hoverElevation: 10,
                onPressed: howMethod,
                child: Center
                (
                    child: Container
                    (
                        width: 20.0,
                        height: 20.0,
                        child: SvgPicture.asset("img/how.svg")
                    )
                )
            )
        ),

        SizedBox(width: 8.0, height: 8.0),

        Container
        (
            width: 44.0,
            height: 44.0,

            child: FloatingActionButton
            (
                backgroundColor: AppColors.appTheme,
                tooltip: "Acerca de...",
                hoverElevation: 10,
                onPressed: infoMethod,
                child: Center
                (
                    child: Container
                    (
                        width: 20.0,
                        height: 20.0,
                        child: SvgPicture.asset("img/info.svg")
                    )
                )
            )
        ),

        SizedBox(width: 8.0, height: 8.0),
        
        Container
        (
            width: 44.0,
            height: 44.0,

            child: FloatingActionButton
            (
                backgroundColor: AppColors.appTheme,
                tooltip: "Código fuente",
                hoverElevation: 10,
                onPressed: githubMethod,
                child: Center
                (
                    child: Container
                    (
                        width: 20.0,
                        height: 20.0,
                        child: SvgPicture.asset("img/github.svg")
                    )
                )
            )
        )
    ];

    return panel;
}