import 'package:flutter/material.dart';

class WavingHand extends StatefulWidget {
  const WavingHand({super.key});

  @override
  State<WavingHand> createState() => _WavingHandState();
}

class _WavingHandState extends State<WavingHand>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..repeat(reverse: true);

    _rotation = Tween(begin: -0.05, end: 0.08)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _rotation,
        builder: (context, child) {
          return Transform(
            alignment: Alignment.bottomCenter,
            transform: Matrix4.rotationZ(_rotation.value),
            child: child,
          );
        },
        child: const Text(
          "👋",
          style: TextStyle(fontSize: 36, color: Colors.purple),
        ));
  }
}
