import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom-container/circular_container.dart';
import 'package:shop/utils/helpers/helper_function.dart';
import '../../../utils/constants/color.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selection,
    this.onSelected,
  });
  final String text;
  final bool selection;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
          label: isColor ? const SizedBox() : Text(text),
          selected: selection,
          onSelected: onSelected,
          labelStyle: TextStyle(color: selection ? TColor.kWhiteColor : null),
          avatar: isColor
              ? CircularContainer(
                  height: 50,
                  width: 50,
                  backgroundColor: THelperFunctions.getColor(text)!,
                )
              : null,
          shape: isColor ? const CircleBorder() : null,
          labelPadding: isColor ? const EdgeInsets.all(0) : null,
          padding: isColor ? const EdgeInsets.all(0) : null,
          backgroundColor: isColor ? THelperFunctions.getColor(text)! : null),
    );
  }
}
