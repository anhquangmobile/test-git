import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/counter_page.dart';

final helloWorldProvider = Provider((ref) {
  return "Hello Flutter";
});

final counterProvider = StateProvider((ref) => 0);

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(home: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to counter page"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CounterPage(),
            ));
          },
        ),
      ),
    );
  }
}
