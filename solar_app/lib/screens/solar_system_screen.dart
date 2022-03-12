import 'package:flutter/material.dart';
import 'package:solar_app/screens/add_any_planet.dart';

class SolarSystem extends StatefulWidget {
  const SolarSystem({Key? key}) : super(key: key);

  @override
  State<SolarSystem> createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem>
    with TickerProviderStateMixin {
  late final AnimationController _controller0;
  late final AnimationController _controller1;
  late final AnimationController _controller2;

  @override
  void initState() {
    _controller0 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _controller1 =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            builder: (context, snapshot) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Positioned(
                  // top: ,
                  // bottom: ,
                  // left: ,
                  // right: ,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                  ),
                ),
              );
            },
            animation: _controller0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 1.3,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.orange),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddAnyPlanet()));
        },
      ),
    );
  }
}
