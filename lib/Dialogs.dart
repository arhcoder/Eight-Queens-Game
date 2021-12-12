import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:eight_queens_game/Theme.dart';
import 'generated/l10n.dart';

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
                Text(S.current.howToPlay_title)
            ]
        ),

        content: Text(S.current.howToPlay_description),
        actions:
        [
            Padding
            (
                padding: EdgeInsets.all(12.0),
                child: ElevatedButton
                (
                    onPressed: (){ Navigator.of(context).pop(); },
                    child: Padding(padding: EdgeInsets.all(8.0), child: Text(S.current.howToPlay_button)),
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
                Text(S.current.about_title)
            ]
        ),

        content: Text(S.current.about_description),

        actions:
        [
            Padding
            (
                padding: EdgeInsets.all(12.0),
                child: ElevatedButton
                (
                    onPressed: (){ Navigator.of(context).pop(); },
                    child: Padding(padding: EdgeInsets.all(8.0), child: Text(S.current.about_button)),
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
                Text(S.current.github_title)
            ]
        ),

        content: Text(S.current.github_description),
        actions:
        [
            Padding
            (
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextButton
                (
                    onPressed: (){ Navigator.of(context).pop(); },
                    child: Text(S.current.github_noButton)
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

                    child: Padding(padding: EdgeInsets.all(8.0), child: Text(S.current.github_yesButton)),
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