import 'package:flutter/material.dart';

void main() {
  runApp(const JobRecommendationApp());
}

class JobRecommendationApp extends StatelessWidget {
  const JobRecommendationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JobRecommendationScreen(),
    );
  }
}

class JobRecommendationScreen extends StatelessWidget {
  const JobRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/menu.png',height: 23,width: 22,),
          onPressed: () {},
        ),
        // Search Bar
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 16),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search ',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://imgd.aeplcdn.com/1280x720/n/bw/models/colors/ducati-select-model-white-riosso-livery-1598428332689.jpg"), // Profile image
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Recommended Jobs Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recommended Jobs \nfor you',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                IconButton(
                  icon:  Image.asset('assets/filter.png',height: 24,
                    width: 24,),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 50),

            // View All Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                GestureDetector(
                  onTap: () {
                    // View all functionality
                  },
                  child: const Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Job Cards
            Expanded(
              child: ListView(
                children: const [
                  JobCard(
                    companyName: 'Lunar Djaja Corp.',
                    position: 'Database\nEngineer',
                    data: 'assets/database_logo.png',
                    salaryRange: '\$500 - \$1,000',

                    percentage: 'assets/logo.png', percentage2: '', percentage3: '', // company logo
                  ),
                  JobCard(
                    companyName: 'Lion Bajaj final.',
                    position: 'Database\nEngineer',
                    data: 'assets/database_logo.png',
                    salaryRange: '\$500 - \$1,000',
                    percentage: 'assets/logo2.png', percentage2: '', percentage3: '',
                  ),
                  JobCard(
                    companyName: 'Highspeed Studios',
                    position: 'Junior Software\nEngineer',
                    data: 'assets/database_logo.png',
                    salaryRange: '\$500 - \$1,000',
                    percentage: 'assets/logo3.png', percentage2: '', percentage3: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Interviews'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String companyName;
  final String position;
  final String data;
  final String salaryRange;
  final String percentage,percentage2,percentage3;

  const JobCard(
      {super.key,
      required this.companyName,
      required this.position,
      required this.salaryRange,
      required this.percentage, required this.percentage2, required this.percentage3, required this.data,});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Company Logo


            // Job Details
            Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: const TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        position,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset('assets/database_logo',height: 10,width: 10,),

                              Text(
                                salaryRange,
                                style:
                                    const TextStyle(color: Colors.black, fontSize: 14),
                              ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(width: 140),
                  IconButton(
                    icon:  Image.asset('assets/logo.png',height: 100,
                      width: 100,),
                    onPressed: () {},
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
