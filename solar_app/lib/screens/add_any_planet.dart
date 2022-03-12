import 'package:flutter/material.dart';

class AddAnyPlanet extends StatefulWidget {
  const AddAnyPlanet({Key? key}) : super(key: key);

  @override
  State<AddAnyPlanet> createState() => _AddAnyPlanetState();
}

class _AddAnyPlanetState extends State<AddAnyPlanet> {
  final TextEditingController _radiusController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _remotenessController = TextEditingController();
  final TextEditingController _rotationalSpeedController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Добавление планет"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _radiusController,
            decoration: const InputDecoration(labelText: "Радиус"),
          ),
          TextField(
            controller: _colorController,
            decoration: const InputDecoration(labelText: "Цвет"),
          ),
          TextField(
            controller: _remotenessController,
            decoration: const InputDecoration(labelText: "Удаленность"),
          ),
          TextField(
            controller: _rotationalSpeedController,
            decoration: const InputDecoration(labelText: "Скорость вращения"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 18.0, 0, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Добавить"),
            ),
          ),
        ],
      ),
    );
  }
}