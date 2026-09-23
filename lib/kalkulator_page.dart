import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: "Angka 1")),

            TextField(decoration: const InputDecoration(labelText: "Angka 2")),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: null, child: const Text("+")),
                ElevatedButton(onPressed: null, child: const Text("-")),
                ElevatedButton(onPressed: null, child: const Text("x")),
                ElevatedButton(onPressed: null, child: const Text("/")),
              ],
            ),

            const SizedBox(height: 20),

            const Text("Hasil: 0", style: TextStyle(fontSize: 20)),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: null, child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}
