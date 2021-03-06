import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eight_queens_game/Theme.dart';
import 'generated/l10n.dart';

import 'Panel.dart';
import 'Dialogs.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

class ChessTable extends StatefulWidget
{
    // Variables globales //
    int chessTableLenght = 8;
    int queens = 0;
    bool instructionsForFistTime = true;

    @override
    ChessTableState createState() => ChessTableState();
}

class ChessTableState extends State <ChessTable>
{
    // Tablero //
    List <List <String> > chessTable =
    [
        ['', '', '', '', '', '', '', ''],
        ['', '', '', '', '', '', '', ''],
        ['', '', '', '', '', '', '', ''],
        ['', '', '', '', '', '', '', ''],
        ['', '', '', '', '', '', '', ''],
        ['', '', '', '', '', '', '', ''],
        ['', '', '', '', '', '', '', ''],
        ['', '', '', '', '', '', '', ''],
    ];

    Widget buildChessTable()
    {
        return Column
        (
            children: <Widget>
            [
                AspectRatio
                (
                    aspectRatio: 1.0,
                    child: Container
                    (
                        decoration: BoxDecoration
                        (
                            border: Border.all(color: AppColors.closedBox, width: 12),
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow:
                            [
                                BoxShadow
                                (
                                    color: Colors.grey.withOpacity(0.4),
                                    offset: Offset(4, 6),
                                    blurRadius: 6.0,
                                    spreadRadius: 2.0
                                )
                            ]
                        ),
                        child: GridView.builder(

                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                            (
                                crossAxisCount: widget.chessTableLenght
                            ),
                            itemBuilder: buildTable,
                            itemCount: widget.chessTableLenght * widget.chessTableLenght
                        )
                    )
                )
            ]
        );
    }

    Widget buildTable(BuildContext context, int index)
    {
        int chessTableLength = chessTable.length;
        int row, column = 0;
        row = (index / chessTableLength).floor();
        column = (index % chessTableLength);

        return GestureDetector
        (
            onTap: () => putAQueen(row, column),
            child: GridTile
            (
                child: Container
                (
                    decoration: BoxDecoration
                    (
                        border: Border.all(color: AppColors.closedBox, width: 2.88)
                    ),
                    
                    child: Center
                    (
                        child: MouseRegion
                        (
                            cursor: MaterialStateMouseCursor.clickable,
                            child: buildGridItems(row, column)
                        )
                    )
                )
            )
        );
    }

    void putAQueen(int row, int column)
    {
        // Si el espacio est?? libre //
        if(chessTable[row][column] == '')
        {
            // Coloca una reina //
            chessTable[row][column] = 'Q';
            print("Queen: [$row, $column];");
            widget.queens++;

            int i;
            int j;

            // Cierra todas las casillas en diagonal de la reina //
            // Diagonal superior derecha //
            i = row - 1;
            j = column + 1;
            while (i >= 0 && j < widget.chessTableLenght)
            {
                chessTable[i][j] = 'X';
                i--;
                j++;
            }
            // Diagonal inferior izquierda //
            i = row + 1;
            j = column - 1;
            while (i < widget.chessTableLenght && j >= 0)
            {
                chessTable[i][j] = 'X';
                i++;
                j--;
            }
            // Diagonal inferior derecha //
            i = row + 1;
            j = column + 1;
            while (i < 8 && j < 8)
            {
                chessTable[i][j] = 'X';
                i++;
                j++;
            }
            // Diagonal superior izquierda //
            i = row - 1;
            j = column - 1;
            while (i >= 0 && j >= 0)
            {
                chessTable[i][j] = 'X';
                i--;
                j--;
            }

            // Cierra todas las casillas en cruz de la reina //
            for (i = 0; i < widget.chessTableLenght; i++)
            {
                // Cierra su fila //
                if (i != column)
                {
                    chessTable[row][i] = 'X';
                }
                // Cierra su columna //
                if (i != row)
                {
                    chessTable[i][column] = 'X';
                }
            }
        }

        print(widget.queens);
        if (widget.queens == widget.chessTableLenght)
        {
            showWinMessage();
        }
        setState((){});
    }

    bool isSnackbarActive = false;
    void showWinMessage()
    {
        // Muestra el mensaje de victoria si no hay SnackBars activas //
        if (!isSnackbarActive)
        {
            isSnackbarActive = true;
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar
                (
                    content: Padding
                    (
                        padding: EdgeInsets.symmetric(vertical: 6.88),
                        child: Text
                        (
                            S.current.winMessage,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16)
                        )
                    ),
                    backgroundColor: AppColors.closedBox,
                    duration: Duration(milliseconds: 2888),
                )
            )
            .closed
            .then((SnackBarClosedReason reason)
            {
                isSnackbarActive = false;
            });
        }
    }

    Widget buildGridItems(int row, int column)
    {
        switch (chessTable[row][column])
        {
            // Casilla vac??a //
            case '':
                return Container
                (
                    color: ( (row % 2 == 0 && column % 2 == 0) || (row % 2 != 0 && column % 2 != 0))
                    ? AppColors.darkBox
                    : AppColors.lightBox
                );
            break;

            // Casilla cerrada //
            case 'X':
                return Container
                (
                    color: AppColors.closedBox
                );
            break;

            // Casilla con reina //
            case 'Q':
                return Container
                (
                    color: AppColors.takenBox,
                    width: double.infinity,
                    height: double.infinity,
                    child: Center
                    (
                        child: Container
                        (
                            child: FractionallySizedBox
                            (
                                alignment: Alignment.center,
                                widthFactor: 0.80,
                                heightFactor: 0.80,
                                child: SvgPicture.asset("img/queen.svg")
                            )
                        )
                    )
                );
            break;

            default:
                return Text(chessTable[row][column].toString());
            break;
        }
    }

    void reset()
    {
        for(int i = 0; i < widget.chessTableLenght; i++)
        {
            for(int i2 = 0; i2 < widget.chessTableLenght; i2++)
            {
                chessTable[i][i2] = '';
            }
        }
        widget.queens = 0;
        setState((){});
    }

    void solve()
    {
        /// Obtiene de una API personal, una soluci??n aleatoria del problema.
        /// y le expresa en el tablero.
        
        // Limpia el tablero.
        reset();

        // Obtiene un n??mero aleatorio entre 0 y 92 - 1; para seleccionar
        // aleatoriamente una de las 92 posibles soluciones del problema.
        int randomSolution = Random().nextInt(92 - 1);

        // Obtiene la informaci??n de la API.
        final apiURL = "https://arhcoder.github.io/eight-queens-solver/eight-queens-solutions.json";
        http.get(Uri.parse(apiURL)).then((http.Response response)
        {

            // Obtiene el cuerpo de soluciones.
            final APIMap = jsonDecode(response.body);

            // Lee una soluci??n aleatoria y la dibuaja en el tablero.
            for (var i = 0; i < 8; i++)
            {
                putAQueen(i, int.parse(APIMap["solutions"][randomSolution][i]));
            }
        });
    }

    @override
    Widget build(BuildContext context)
    {
        // Instrucciones del juego al iniciar //
        if (widget.instructionsForFistTime)
        {
            Future.delayed(Duration.zero, ()
            {
                showDialog(
                    context: context,
                    builder: (context) => buildHowDialog(context)
                );
            });
        }
        widget.instructionsForFistTime = false;

        return (MediaQuery.of(context).size.width >= 600)?

        // Escritorio //
        Row
        (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children:
            [
                // Margen izquierdo para centrar el tablero sin contar el panel de botones //
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),

                // Tablero de ajedrez //
                Container
                (
                    width: 488,
                    height: 488,
                    child: buildChessTable()
                ),

                SizedBox(width: 14.0),

                // Panel vertical de botones //
                Column
                (
                    children: buildPanel(
                        reset,
                        solve,
                        (){
                            showDialog(
                                context: context,
                                builder: (context) => buildHowDialog(context)
                            );
                        },
                        (){
                            showDialog(
                                context: context,
                                builder: (context) => buildInfoDialog(context)
                            );
                        },
                        (){
                            showDialog(
                                context: context,
                                builder: (context) => buildGithubDialog(context)
                            );
                        }
                    )
                )
            ]
        ):

        // Tel??fono //
        Column
        (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children:
            [
                // Tablero //
                Container
                (
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.width * 0.90,
                    child: buildChessTable()
                ),

                SizedBox(height: 14.0),

                // Panel horizontal de botones //
                Row
                (
                    children:
                    [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                        Row
                        (
                            children: buildPanel(
                                reset,
                                solve,
                                (){
                                    showDialog(
                                        context: context,
                                        builder: (context) => buildHowDialog(context)
                                    );
                                },
                                (){
                                    showDialog(
                                        context: context,
                                        builder: (context) => buildInfoDialog(context)
                                    );
                                },
                                (){
                                    showDialog(
                                        context: context,
                                        builder: (context) => buildGithubDialog(context)
                                    );
                                }
                            )
                        )
                    ]
                )
            ]
        );
    }
}