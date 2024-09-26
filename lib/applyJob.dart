import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApplyFormPage(),
    );
  }
}

class ApplyFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 280,
            padding: const EdgeInsets.all(16),
            color: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60),
                      Text(
                        'Highspeed Studios',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Senior Software\nEngineer',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Image.asset('assets/logo4.png',
                        height: 150, width: 150),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60, // adjust the size of the circle
                      width: 60, // adjust the size of the circle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            Colors.grey[200], // adjust the color of the circle
                      ),
                      child: const Icon(Icons.arrow_back,
                          size: 28,
                          color: Colors.grey), // adjust the color of the icon
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      'Apply Form',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: Colors.grey[300]!,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('+ Upload Resume'),
                      Icon(Icons.file_upload, color: Colors.blue[600]),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 60, // set the height
                  width: double.infinity, // set the width to full screen
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          border: InputBorder.none,
                        ),
                        readOnly: true, // make the text field read-only
                        controller: TextEditingController(
                            text: 'Guru Prasad'), // set the initial text
                        style: const TextStyle(fontSize: 16), // increase the font size
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue[600]!),
                    ),
                  ),
                  controller:
                      TextEditingController(text: 'henrykanwil@mail.com'),
                ),
                const SizedBox(height: 16),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        border: InputBorder.none,
                      ),
                      readOnly: true, // make the text field read-only
                      controller: TextEditingController(
                          text: 'Phone number'), // set the initial text
                      style: const TextStyle(fontSize: 16,color: Colors.grey), // increase the font size
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 530,height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text(
                      'APPLY JOB',
                      style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
