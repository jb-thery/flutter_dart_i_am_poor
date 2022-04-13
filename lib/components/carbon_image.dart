import 'package:flutter/material.dart';

class CarbonImage extends StatefulWidget {
  final double size;

  const CarbonImage({Key? key, required this.size}) : super(key: key);

  @override
  State<CarbonImage> createState() => _CarbonImageState();
}

class _CarbonImageState extends State<CarbonImage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.size,
      duration: const Duration(milliseconds: 200),
      child: const Image(
        image: AssetImage('images/poor_car.png'),
      ),
    );
  }
}
