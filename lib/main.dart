import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
bool value = true;
const Color btn = Color.fromRGBO(11, 107, 254, 0.5);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ЭФБО-02-22',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
              child: Text(
                'Авторизация',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              //padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              color: Color.fromRGBO(240, 239, 244, 1), width: 360, height: 50,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(240, 239, 244, 1),
                      ),
                    ),
                  hintText: 'Логин',
                  ),
                ),
              ),
            ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              color: Color.fromRGBO(240, 239, 244, 1), width: 360, height: 50,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(240, 239, 244, 1),
                    ),
                  ),
                  hintText: 'Пароль',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    tristate: true, // Example with tristate
                    value: value,
                    onChanged: (bool? newValue) {
                      value = !value;
                    },
                  ),
                  Text(
                    'Запомнить меня',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
                margin: const EdgeInsets.all(6.0),
                width: 360,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(11, 107, 254, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ),
                ),
                child: Text(
                  'Войти',
                  style: TextStyle(
                  color: Colors.white,
                  ),
                )
              )
            )
          ),
          Center(
              child: Container(
                  margin: const EdgeInsets.all(6.0),
                  width: 360,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        side: BorderSide(
                          width: 1.0,
                          color: Colors.blue,
                        ),
                      ),   //styleFrom
                      onPressed: (){},
                      child: Text('Регистрация',style: TextStyle(
                        color: Color.fromRGBO(11, 107, 254, 1),
                      ),
                      )
                  )
              )
          ),
          Center(
            child: Container( width: 360,
            child: TextButton(
                onPressed: (){},
                child: Text(
                    'Восстановить пароль',
                    style: TextStyle(
                      color: Colors.grey,
                    )
                )
            ),
            ),
          )
        ],
      ),
    );
  }
}

