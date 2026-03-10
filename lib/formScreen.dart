import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Formscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Formscreen();
}

class _Formscreen extends State<Formscreen> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController gmailController = TextEditingController();
  TextEditingController passWController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.padding_rounded),
        title: const Text("Forms"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              /// EMAIL FIELD
              TextFormField(
                controller: gmailController,

                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "example@gmail.com",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Enter email";
                  }

                  RegExp emailPattern = RegExp(
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

                  if (!emailPattern.hasMatch(value)) {
                    return "Enter valid email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              /// PASSWORD FIELD
              TextFormField(
                controller: passWController,
                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Enter password";
                  }

                  if (value.length < 8) {
                    return "Password must be 8 characters";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {

                  if (_formKey.currentState!.validate()) {

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Form Submitted Successfully"),
                        duration: Duration(seconds: 3),
                      ),
                    );

                  }

                },
                child: const Text("Submit"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
