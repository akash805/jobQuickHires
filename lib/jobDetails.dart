import 'package:flutter/material.dart';

void main() {
  runApp(const JobDetailApp());
}

class JobDetailApp extends StatelessWidget {
  const JobDetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JobDetailScreen(),
    );
  }
}

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    Colors.grey[200], // Set the background color of the circle
              ),
              padding: const EdgeInsets.all(8.0),
              // Padding to make the circle larger
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            onPressed: () {
              // Your back button functionality
            },
          ),
          title: const Text(
            "Job Details",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_border_rounded,
                  color: Colors.purple),
              onPressed: () {},
            ),
            const SizedBox(width: 5),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Job Details Section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Highspeed Studios',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Senior Software\nEngineer',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50, // increase the height
                    width: 50, // increase the width
                    child: Image.asset('assets/logo4.png'),
                  )
                  // Placeholder for company logo
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Job Type Tags
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JobTag(text: 'Fulltime'),
                SizedBox(width: 65),
                JobTag(text: 'Remote Working'),
                SizedBox(width: 65),
                JobTag(text: 'Hourly'),
              ],
            ),
            const SizedBox(height: 100),
            // Salary and Location
            Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[
                          200], // Adjust the border color and width as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      // Add some padding to separate the image from the border
                      child: Image.asset('assets/database2.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Salary',
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                    Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          '\$500 - \$1,000/monthly',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[
                          200], // Adjust the border color and width as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      // Add some padding to separate the image from the border
                      child: Image.asset('assets/locationBeg.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Location',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          'Medan, Indonesia',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 90),
            // Job Description
            const Text(
              'Job Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 10),
            // Bullet Points
            const Column(
              children: [
                BulletPoint(
                  text: 'Sed ut perspiciatis unde omnis',),
                BulletPoint(text: 'Doloremque laudantium'),
                BulletPoint(text: 'Ipsa quae ab illo inventore'),
                BulletPoint(text: 'Architecto beatae vitae dicta'),
              ],
            ),
            const Spacer(),
            // Apply Job Button

            Row(
              children: [
                const SizedBox(width: 60),
                IconButton(
                  icon: Container(
                    height: 50,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white54, // background color
                    ),
                    child: const Icon(Icons.bookmark_border_rounded, color: Colors.indigoAccent,size: 50,), // icon color
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                Container(
                  width: 260,height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text(
                      'APPLY JOB',
                      style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class JobTag extends StatelessWidget {
  final String text;

  const JobTag({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Text(
        text,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.blue, size: 16),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}
