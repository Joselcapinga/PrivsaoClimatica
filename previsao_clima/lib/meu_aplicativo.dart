import 'package:flutter/material.dart';
// import 'package:cripto_moeda/pages/climaPage.dart';
import 'package:previsao_clima/views/climaPage.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ClimaPage(),
    );
  }
}
