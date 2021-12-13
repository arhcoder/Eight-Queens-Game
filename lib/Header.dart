import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eight_queens_game/Theme.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'generated/l10n.dart';

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

    actions:
    [
        LanguagesMenu()
    ],

    elevation: 0
);


// IDIOMAS //
changeLanguage(String languageCode)
{
    Get.updateLocale(Locale(languageCode));
    S.load(Locale(languageCode));
    Get.appUpdate();
}
class LanguageItem extends StatelessWidget
{
    final String svgPath;
    final String text;
    final String languageCode;

    LanguageItem({Key key, this.svgPath, this.text, this.languageCode}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Row
        (
            children:
            [
                Container
                (
                    width: 24.0,
                    height: 24.0,
                    child: SvgPicture.asset(svgPath)
                ),                            

                SizedBox(width: 10.0),
                
                Text
                (
                    text,
                    style: TextStyle
                    (
                        color: Color(0xFF403844)
                    )
                )
            ]
        );
    }
}
class LanguagesMenu extends StatefulWidget
{
    @override
    LanguagesMenuState createState() => LanguagesMenuState();
}
class LanguagesMenuState extends State <LanguagesMenu>
{
    // Decide el valor que toma el menú de lenguajes.
    String currentLanguage =
    Get.deviceLocale.languageCode != "es"? "en": "es";

    @override
    Widget build(BuildContext context)
    {
        // Menú de idiomas //
        return
        PopupMenuButton
        (
            icon: Icon(Icons.translate),
            iconSize: 28.0,
            padding: EdgeInsets.only(right: 20.0),

            // Desplazamiento de la lista de idiomas //
            offset: Offset
            (
                // Eje x //
                0,

                // Eje y //
                (currentLanguage == "es")

                // Si se escogió la primer opción //
                ? kToolbarHeight + 4
                // Se se escogió la segunda (útlima) opción //
                : kToolbarHeight + 53
            ),

            shape: RoundedRectangleBorder(),

            tooltip: "Idiomas",
            initialValue: currentLanguage,

            onSelected: (languageCode)
            {
                changeLanguage(languageCode);
                setState(()
                {
                    currentLanguage = languageCode;
                });
            },

            itemBuilder: (context) =>
            [
                // Español //
                PopupMenuItem
                (
                    value: "es",
                    child: LanguageItem
                    (
                        svgPath: "img/spanish.svg",
                        text: "Español"
                    )
                ),

                // Inglés //
                PopupMenuItem
                (
                    value: "en",
                    child: LanguageItem
                    (
                        svgPath: "img/english.svg",
                        text: "English"
                    )
                )
            ]
        );
    }
}