import 'package:flutter/material.dart';
import 'package:calculator/button_page.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var expr = '', userInput = '', result;
  @override
  void initState() {
    super.initState();
  }

  void equalPressed() {
    String finaluserinput = expr;
    finaluserinput = expr.replaceAll('×', '*');
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    result = eval.toString();
    expr = result;
  }

  void clear() {
    setState(() {
      expr = '';
      result = '';
      userInput = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.brown[900],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$userInput',
              textAlign: TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.brown[400],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              result == null ? '' : '$result',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w600,
                color: Colors.grey[400],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        text: 'C',
                        color: Colors.grey[400],
                        onPressed: clear,
                      ),
                      NumberButton(
                        text: '%',
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            expr += '%';
                            userInput += '%';
                          });
                        },
                      ),
                      NumberButton(
                        text: '±',
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                      NumberButton(
                        text: '÷',
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            expr += '/';
                            userInput += '÷';
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        text: '7',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '7';
                            userInput += '7';
                          });
                        },
                      ),
                      NumberButton(
                        text: '8',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '8';
                            userInput += '8';
                          });
                        },
                      ),
                      NumberButton(
                        text: '9',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '9';
                            userInput += '9';
                          });
                        },
                      ),
                      NumberButton(
                        text: '×',
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            expr += '×';
                            userInput += '×';
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        text: '4',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '4';
                            userInput += '4';
                          });
                        },
                      ),
                      NumberButton(
                        text: '5',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '5';
                            userInput += '5';
                          });
                        },
                      ),
                      NumberButton(
                        text: '6',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '6';
                            userInput += '6';
                          });
                        },
                      ),
                      NumberButton(
                        text: '-',
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            expr += '-';
                            userInput += '-';
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        text: '1',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '1';
                            userInput += '1';
                          });
                        },
                      ),
                      NumberButton(
                        text: '2',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '2';
                            userInput += '2';
                          });
                        },
                      ),
                      NumberButton(
                        text: '3',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '3';
                            userInput += '3';
                          });
                        },
                      ),
                      NumberButton(
                        text: '+',
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            expr += '+';
                            userInput += '+';
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        text: '0',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '0';
                            userInput += '0';
                          });
                        },
                      ),
                      NumberButton(
                        text: '.',
                        color: Colors.brown[900],
                        onPressed: () {
                          setState(() {
                            expr += '.';
                            userInput += '.';
                          });
                        },
                      ),
                      NumberButton(
                        text: '=',
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, left: 10),
                        child: RoundIconButton(
                          icon: Icons.backspace,
                          onPressed: () {
                            setState(() {
                              expr = expr.substring(0, expr.length - 1);
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(10),
      child: Icon(
        icon,
        size: 30,
        color: Colors.black,
      ),
      onPressed: onPressed,
      elevation: 5,
      shape: CircleBorder(),
      fillColor: Colors.grey[400],
      constraints: BoxConstraints.tightFor(width: 63, height: 65),
    );
  }
}
