import 'package:flutter/material.dart';
import 'package:ui_kit_07_01_2026/ui_kit_07_01_2026.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BigButtonWidget.filled(text: 'text', onTap: (){}, theme: theme),
          BigButtonWidget.filled(text: 'text', onTap: null, theme: theme),
          BigButtonWidget.outline(text: 'text', onTap: (){}, theme: theme),
          BigButtonWidget.simple(text: 'text', onTap: (){}, theme: theme),
          InputWidget(
            label: 'label',
            hint: 'hint',
            error: '',
            controller: TextEditingController(),
          ),
          InputWidget(
            label: 'label',
            hint: '',
            error: '',
            controller: TextEditingController(),
          ),
          InputWidget(
            label: 'label',
            hint: 'hint',
            error: 'error',
            controller: TextEditingController(),
          ),
          InputWidget(
            label: 'label',
            hint: 'hint',
            error: 'error',
            controller: TextEditingController(),
          ),
        ],
      ),
    );
  }
}
