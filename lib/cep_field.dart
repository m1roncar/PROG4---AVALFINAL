import 'package:flutter/material.dart';

class CEPField extends StatefulWidget {
  const CEPField({super.key});

  @override
  State<StatefulWidget> createState() => CEPFieldState();
}

class CEPFieldState extends State<CEPField> {
  Text postalText(String postal) {
    if (postal.length != 8) {
      debugPrint('CEP Inválido');
      return const Text('CEP Inválido');
    } else {
      return Text(postal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Buscar CEP :'),
          SizedBox(
              width: 300,
              child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CEP',
                  ),
                  onSubmitted: (text) => postalText(text)))
        ],
      ),
    );
  }
}
