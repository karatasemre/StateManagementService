import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class EditText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Container(
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
            labelText: 'Write...', border: OutlineInputBorder()),
        onChanged: (changed) => appState.setDisplayText(changed),
        onSubmitted: (submitted) => appState.setDisplayText(submitted),
      ),
    );
  }
}
