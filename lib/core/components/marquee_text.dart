import 'package:flutter/material.dart';

class MarqueeText extends StatefulWidget {
  final Widget child;
  final Duration animationDuration, backDuration, pauseDuration;

  const MarqueeText(
      {super.key,
      required this.child,
      this.animationDuration = const Duration(milliseconds: 6000),
      this.backDuration = const Duration(milliseconds: 800),
      this.pauseDuration = const Duration(milliseconds: 800)});

  @override
  State<MarqueeText> createState() => _MarqueeTextState();
}

class _MarqueeTextState extends State<MarqueeText> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 50.0);
    WidgetsBinding.instance.addPostFrameCallback(scroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scroll(_) async {
    while (_scrollController.hasClients) {
      await Future.delayed(widget.pauseDuration);
      if (_scrollController.hasClients) {
        await _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: widget.animationDuration,
            curve: Curves.ease);
      }
      await Future.delayed(widget.pauseDuration);
      if (_scrollController.hasClients) {
        await _scrollController.animateTo(0.0,
            duration: widget.backDuration, curve: Curves.easeOut);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      child: widget.child,
    );
  }
}
