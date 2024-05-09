import "package:babynames/BottomNavigationBar/likednames.dart";
import "package:babynames/BottomNavigationBar/matchesname.dart";
import "package:babynames/boy/boypage.dart";
import "package:babynames/girl/girlpage.dart";
import "package:babynames/settings/settings.dart";
import "package:flutter/material.dart";

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
// Index of the current page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA724F1),
        automaticallyImplyLeading: false,

        centerTitle: true,
        title: Image.asset(
            'assets/image/babynames.png'), // Adjust path accordingly
      ),
      backgroundColor: const Color(0xFFA724F1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 80,
                    right: 80,
                  ),
                  child: Image.asset('assets/image/gendertext.png'),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 300,
                    right: 40,
                  ),
                  child: Image.asset('assets/image/duck.png'),
                ),

                const SizedBox(height: 10), // Adjust spacing
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                              'assets/image/toy.png'), // Adjust path accordingly

                          // Add labels if needed
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BoypageWidget()),
                              );
                            },
                            icon: Image.asset(
                                'assets/image/boy.png'), // Adjust path accordingly
                          ),
                          // Add labels if needed
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30), // Adjust spacing
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Column(
                        children: [],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const GirlpageWidget()),
                              );
                            },
                            icon: Image.asset(
                                'assets/image/girl.png'), // Adjust path accordingly
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                              'assets/image/train.png'), // Adjust path accordingly
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Adjust spacing
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                              'assets/image/feeder.png'), // Adjust path accordingly
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                                'assets/image/notsure.png'), // Adjust path accordingly
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 120,
                        right: 40,
                      ),
                      child: Image.asset('assets/image/bell.png'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  _navigateToPage(0);
                },
                icon: Image.asset(
                  'assets/image/home.png',
                  width: 40,
                  height: 40,
                ),
              ),
              IconButton(
                onPressed: () {
                  _navigateToPage(1);
                },
                icon: Image.asset(
                  'assets/image/likes.png',
                  width: 40,
                  height: 40,
                ),
              ),
              IconButton(
                onPressed: () {
                  _navigateToPage(2);
                },
                icon: Image.asset(
                  'assets/image/matches.png',
                  width: 48,
                  height: 48,
                ),
              ),
              IconButton(
                onPressed: () {
                  _navigateToPage(3);
                },
                icon: Image.asset(
                  'assets/image/settings.png',
                  width: 44,
                  height: 44,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const GenderPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const likednamepage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const matchesnamepage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SettingsPage()),
        );
        break;
    }
  }
}
