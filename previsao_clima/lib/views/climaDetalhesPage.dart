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
        title: Text(widget.clima.cidade),
      ),
    );
  }
}
