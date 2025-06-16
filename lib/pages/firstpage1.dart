import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int _counter = 0; // ตัวแปรเก็บค่าจำนวนนับ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jirapat")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // จัดกลางแนวตั้ง
          children: [
            Text(
              "Counter : $_counter",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างข้อความกับปุ่ม
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // จัดกลางแนวนอน
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter--; // ลดค่าจำนวนนับ
                    });
                  },
                  child: Text("Decrease -"),
                ),
                SizedBox(width: 10), // ระยะห่างระหว่างปุ่ม
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++; // เพิ่มค่าจำนวนนับ
                    });
                  },
                  child: Text("Increase +"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter = 0; // รีเซตค่าจำนวนนับ
                    });
                  },
                  child: Text("Reset"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
