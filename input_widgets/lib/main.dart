import 'package:flutter/material.dart';
import 'package:input_widgets/text_form_field.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFormFieldKull(),
    );
  }
}

class TextFieldsIslemleri extends StatefulWidget {
  final String title;
  const TextFieldsIslemleri({Key? key, required this.title}):super(key: key);

  @override
  State<TextFieldsIslemleri> createState() => _TextFieldsIslemleriState();
}

class _TextFieldsIslemleriState extends State<TextFieldsIslemleri> {
  late TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: 'baray@baray.com');
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autofocus: true,
              maxLines: 1,
              maxLength: 20,
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                labelText: 'Label Text',
                hintText: 'E-mail',
                icon: Icon(Icons.add),
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.access_alarm_outlined),
                filled: true,
                fillColor: Colors.orange,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.00))
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _emailController.text = 'oztrurk@ozturk.com';
          });
        },
        child: Icon(Icons.edit),
        ),
    );
  }
}