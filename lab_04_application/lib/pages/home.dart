import 'package:flutter/material.dart';
import 'package:lab_04_application/services/AgifyService.dart';

class Home extends StatefulWidget {
  final AgifyService _agifyService;
  static const String routeName = '/';
  const Home({Key? key})
      : _agifyService = const AgifyService(),
        super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  int? _age;

  void onSubmit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final calculatedAge = await widget._agifyService.getAgeFromName(_name!);
      setState(() {
        _age = calculatedAge;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Agify')),
        body: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        // helperText: 'Name',
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter the name";
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        setState(() {
                          if (value != null) _name = value;
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: onSubmit,
                    child: const Text("Get Age"),
                  ),
                ],
              ),
            ),
            if (_age != null)
              Center(
                child: Text(
                  'Age is $_age',
                  style: Theme.of(context).textTheme.headline4,
                ),
              )
          ],
        ));
  }
}
