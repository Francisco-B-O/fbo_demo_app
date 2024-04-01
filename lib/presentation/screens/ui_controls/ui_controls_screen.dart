import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Options { option1, option3, option2, option4 }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Options selectedOption = Options.option1;
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Hyper Mode'),
          subtitle: const Text('Additional controls'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Options'),
          subtitle: Text('$selectedOption'),
          children: [
            RadioListTile(
              title: const Text('Option1'),
              subtitle: const Text('Option1'),
              value: Options.option1,
              groupValue: selectedOption,
              onChanged: (value) => setState(() {
                selectedOption = Options.option1;
              }),
            ),
            RadioListTile(
              title: const Text('Option2'),
              subtitle: const Text('Option2'),
              value: Options.option2,
              groupValue: selectedOption,
              onChanged: (value) => setState(() {
                selectedOption = Options.option2;
              }),
            ),
            RadioListTile(
              title: const Text('Option3'),
              subtitle: const Text('Option3'),
              value: Options.option3,
              groupValue: selectedOption,
              onChanged: (value) => setState(() {
                selectedOption = Options.option3;
              }),
            ),
            RadioListTile(
              title: const Text('Option4'),
              subtitle: const Text('Option4'),
              value: Options.option4,
              groupValue: selectedOption,
              onChanged: (value) => setState(() {
                selectedOption = Options.option4;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('CheckBox1'),
          value: checkbox1,
          onChanged: (value) => setState(() {
            checkbox1 = !checkbox1;
          }),
        ),
        CheckboxListTile(
          title: const Text('Checkbox2'),
          value: checkbox2,
          onChanged: (value) => setState(() {
            checkbox2 = !checkbox2;
          }),
        ),
        CheckboxListTile(
          title: const Text('Checkbox3'),
          value: checkbox3,
          onChanged: (value) => setState(() {
            checkbox3 = !checkbox3;
          }),
        ),
      ],
    );
  }
}
