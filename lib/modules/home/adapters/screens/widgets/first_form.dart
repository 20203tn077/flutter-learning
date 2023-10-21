import 'package:flutter/material.dart';
import 'package:flutter_learning/kernel/theme/colors_app.dart';
import 'package:flutter_learning/kernel/validations/validations_app.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _fullname = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _age = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registro')),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/logo-utez.png',
                  width: 300,
                ),
              ),
              Form(
                key: _formKey,
                onChanged: () {
                  setState(() {
                    _isButtonDisabled = !_formKey.currentState!.validate();
                  });
                },
                  child: Column(
                children: <Container>[
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Nombre completo*'),
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Debes ingresar tu nombre UwU'
                            : null;
                      },
                      controller: _fullname,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Correo electrónico*'),
                      validator: (value) {
                        var regex = RegExp(ValidationApp.email);
                        return 
                          value!.isEmpty ? 'Ingresa tu correo lptm' :
                          !regex.hasMatch(value) ? 'Formato incorrecto' :
                          null;
                      },
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Edad*'),
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Qué tan vieja estás?'
                            : null;
                      },
                      controller: _age,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: _isButtonDisabled ? null : () {

                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50),
                          backgroundColor: ColorsApp.success),
                      child: const Text('Registrarse'),
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
