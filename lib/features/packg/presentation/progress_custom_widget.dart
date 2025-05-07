import 'package:flutter/material.dart';

class ProgressLine extends StatefulWidget {
  final double value; // Progress value between 0.0 and 1.0
  final double height; // Height of the progress line
  final Color bgColor; // Color of the progress line
  final Color backgroundColor; // Background color

  const ProgressLine({
    required this.value,
    required this.height,
    required this.bgColor,
    required this.backgroundColor,
  });

  @override
  _ProgressLineState createState() => _ProgressLineState();
}

class _ProgressLineState extends State<ProgressLine> {
  double _currentValue = 0.0;
  double _leftPercent = 0.0;
  double _rightPercent = 100.0;

  @override
  void initState() {
    super.initState();
    _animateProgress();
  }

  void _animateProgress() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _currentValue = widget.value;
        _leftPercent = widget.value * 100;
        _rightPercent = (1 - widget.value) * 100;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: _leftPercent),
          duration: const Duration(seconds: 1),
          builder: (context, percentValue, child) {
            return Text(
              "${percentValue.toStringAsFixed(0)}%",
              style: TextStyle(fontSize: 16, color: widget.bgColor),
            );
          },
        ),
        Expanded(
          child: Container(
            height: widget.height,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: _currentValue,
              child: TweenAnimationBuilder<Color?>(
                tween: ColorTween(
                  begin: Colors.grey,
                  end: widget.bgColor,
                ),
                duration: const Duration(seconds: 1),
                builder: (context, color, child) {
                  return Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
          ),
        ),

        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 100, end: _rightPercent),
          duration: const Duration(seconds: 1),
          builder: (context, percentValue, child) {
            return Text(
              "${percentValue.toStringAsFixed(0)}%",
              style: TextStyle(fontSize: 16, color: widget.bgColor),
            );
          },
        ),
      ],
    );
  }
}
