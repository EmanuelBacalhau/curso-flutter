import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFull ? 'Não pode entrar' : 'Pode entrar',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 34),
              Text(
                '$count',
                style: const TextStyle(fontSize: 92, color: Colors.white),
              ),
              const SizedBox(height: 34),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: isEmpty ? null : decrement,
                      style: TextButton.styleFrom(
                        fixedSize: const Size(100, 100),
                        backgroundColor: isEmpty ? Colors.grey : Colors.white,
                        padding: const EdgeInsets.all(16),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        overlayColor: Colors.black,
                      ),
                      child: const Text(
                        'Saida',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(width: 24),
                  TextButton(
                      onPressed: isFull ? null : increment,
                      style: TextButton.styleFrom(
                        fixedSize: const Size(100, 100),
                        backgroundColor: isFull ? Colors.grey : Colors.white,
                        padding: const EdgeInsets.all(16),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        overlayColor: Colors.black,
                      ),
                      child: const Text(
                        'Entrou',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
