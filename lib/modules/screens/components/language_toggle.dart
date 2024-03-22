import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../../../Core/localization/app_language.dart';
import '../../../../Utils/color_manager.dart';

class LanguageToggle extends StatefulWidget {
  const LanguageToggle({super.key});

  @override
  State<LanguageToggle> createState() => _LanguageToggleState();
}

class _LanguageToggleState extends State<LanguageToggle> {
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      fillColor: ColorManager.primaryColor,
      borderRadius: BorderRadius.circular(5),
      borderWidth: 0,
      selectedColor: Colors.white,
      onPressed: (int index) async {
        if (index == 0) {
          debugPrint('EN');
          Provider.of<AppLanguage>(context, listen: false)
              .changeLanguage(const Locale('en'));
        } else {
          debugPrint('AR');
          Provider.of<AppLanguage>(context, listen: false)
              .changeLanguage(const Locale('ar'));
        }
        setState(() {});
      },
      isSelected: [
        Provider.of<AppLanguage>(context, listen: false).appLocal ==
            const Locale('en'),
        Provider.of<AppLanguage>(context, listen: false).appLocal ==
            const Locale('ar'),
      ],
      children: const [
        Text(
          "EN",
          style: TextStyle(fontSize: 12),
        ),
        Text(
          "AR",
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
