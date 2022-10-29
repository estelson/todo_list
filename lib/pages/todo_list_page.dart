import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nome da tarefa",
                        hintText: "Ex. Estudar Flutter",
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00d7f3),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text("Tarefa 1"),
                    subtitle: Text("28/10/2022"),
                    leading: Icon(Icons.save, size: 30),
                    onTap: () {
                      print("Tarefa 1 clicada");
                    },
                  ),
                  ListTile(
                    title: Text("Tarefa 2"),
                    subtitle: Text("29/10/2022"),
                    leading: Icon(Icons.person, size: 30),
                    onTap: () {
                      print("Tarefa 2 clicada");
                    }
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Você possui 0 tarefa(s) pendente(s)",
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00d7f3),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Text("Limpar tudo"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
