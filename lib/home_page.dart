import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Screen of my apl",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            ContainerWidget(
              alignment: MainAxisAlignment.start,
            ),
            ContainerWidget(
              alignment: MainAxisAlignment.center,
            ),
            ContainerWidget(alignment: MainAxisAlignment.end,)
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  ContainerWidget({super.key, required this.alignment});
  MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: alignment,
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
          child: const Center(child: Text("1")),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
          child: const Center(child: Text("2")),
        ),
        Container(
          width: 120,
          height: 120,
          color: Colors.green,
          child: const Center(child: Text("3")),
        )
      ],
    );
  }
}
