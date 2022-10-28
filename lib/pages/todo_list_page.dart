import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                ),
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
              ElevatedButton(
                onPressed: login,
                child: const Text("Entrar"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
    emailController.text = "Estelson";
  }

  void onChanged(String text) {
    print("onChanged: $text");
  }

  void onSubmitted(String text) {
    print("onSubmitted: $text");
  }
}
