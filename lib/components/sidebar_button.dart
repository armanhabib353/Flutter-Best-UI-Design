import 'package:design_code/constants.dart';
import 'package:flutter/material.dart';

// SidebarButton Start
class SidebarButton extends StatelessWidget {
  const SidebarButton({
    required this.triggerAnimation,
    super.key,
  });

  final VoidCallback triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: triggerAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: const BoxConstraints(
        maxHeight: 40,
        maxWidth: 40,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16,
              ),
            ]),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
          color: kPrimaryLabelColor,
        ),
      ),
    );
  }
}
