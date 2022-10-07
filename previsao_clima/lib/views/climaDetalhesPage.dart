import 'package:flutter/material.dart';

import '../models/clima.dart';

class ClimaDetalhesPage extends StatefulWidget {
  Clima clima;

  ClimaDetalhesPage({Key? key, required this.clima}) : super(key: key);

  @override
  // State<ClimaDetalhesPage> createState() => _ClimaDetalhesPage();
  _ClimaDetalhesPage createState() => _ClimaDetalhesPage();
}

class _ClimaDetalhesPage extends State<ClimaDetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.clima.cidade + ' ' + widget.clima.data),
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset(widget.clima.icon),
                    width: 60,
                  ),
                  Container(width: 10),
                  Text(
                    widget.clima.descricao,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -1,
                        color: Colors.green),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
