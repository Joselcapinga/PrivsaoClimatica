import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/clima.dart';

class ClimaDetalhesPage extends StatefulWidget {
  Clima clima;

  ClimaDetalhesPage({Key? key, required this.clima}) : super(key: key);

  @override
  // State<ClimaDetalhesPage> createState() => _ClimaDetalhesPage();
  _ClimaDetalhesPage createState() => _ClimaDetalhesPage();
}

class _ClimaDetalhesPage extends State<ClimaDetalhesPage> {
  final _form = GlobalKey<FormState>();
  final _dataClima = TextEditingController();

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
            ),
          ),
          Form(
            key: _form,
            child: TextFormField(
              controller: _dataClima,
              style: TextStyle(fontSize: 22),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Informa Hora',
                prefixIcon: Icon(Icons.timer_sharp),
                suffix: Text(
                  'Número inteiro',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              validator: (value) {
                if (value!.isEmpty) {
                  return "Informe o valor do campo";
                } else if (int.parse(value) < 0 && int.parse(value) > 24) {
                  return "hora invalida";
                }
                return null;
              },
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
