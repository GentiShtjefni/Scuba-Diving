import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpandedSectionAutonomie2 extends StatefulWidget {
  final Widget child;
  final int height;
  final bool expand;
  int sectionHeight;

  ExpandedSectionAutonomie2({this.expand = false, this.child, this.height});

  @override
  _ExpandedSectionAutonomie2State createState() =>
      _ExpandedSectionAutonomie2State();
}

class _ExpandedSectionAutonomie2State extends State<ExpandedSectionAutonomie2>
    with SingleTickerProviderStateMixin {
  AnimationController expandController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedSectionAutonomie2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axisAlignment: 1.0,
        sizeFactor: animation,
        child: Container(
          padding: EdgeInsets.only(bottom: 5),
          constraints: BoxConstraints(
            //minHeight: 100,
              minWidth: double.infinity,
              maxHeight: widget.height > 5
                  ? 360
                  : widget.height == 1
                  ? 55
                  : widget.height * 50.0),
          child: Padding(
              padding: const EdgeInsets.only(bottom: 5), child: widget.child),
        ));
  }
}
