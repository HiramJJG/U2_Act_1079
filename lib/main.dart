import 'package:flutter/material.dart';
import 'package:Jurado1079/pantalla1079/panel1079/panel_pantalla1079.dart';

void main() => runApp(const MiAppInnovasport1079());

class MiAppInnovasport1079 extends StatelessWidget {
  const MiAppInnovasport1079({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Innovasport Jurado1079",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: const PanelPantalla1079(),
    );
  }
}
