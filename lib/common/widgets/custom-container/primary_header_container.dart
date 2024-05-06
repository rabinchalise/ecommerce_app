import 'package:flutter/material.dart';

import 'circular_container.dart';
import '../custom-shape/curver_edges_widget.dart';
import '../../../utils/constants/color.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
        child: Container(
      color: TColor.kPrimaryColor,
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(
            top: -150,
            right: -250,
            child: CircularContainer(
              backgroundColor: TColor.kTextWhiteColor.withOpacity(0.1),
            ),
          ),
          Positioned(
            top: 100,
            right: -300,
            child: CircularContainer(
              backgroundColor: TColor.kTextWhiteColor.withOpacity(0.1),
            ),
          ),
          child
        ],
      ),
    ));
  }
}
