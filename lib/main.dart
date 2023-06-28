import 'package:Poson_Trffic_Plan/DownloadPage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor:
              Colors.white, // Set the background color of the app bar to white
        ),
      ),
      home: const LaunchScreen(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isTablet = mediaQuery.size.width > 600;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(isTablet ? 32.0 : 16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Text(
              'POSON TRAFFIC PLAN',
              style: GoogleFonts.poppins(
                color: const Color(0xff2596be),
                fontSize:
                    isTablet ? 40 : 30, // Adjust the font size for tablets
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'ANURADHAPURA | SRI LANKA',
              style: GoogleFonts.poppins(
                color: const Color(0xff8a8186),
                fontSize:
                    isTablet ? 20 : 16, // Adjust the font size for tablets
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Image.asset(
              'assets/LL.png',
              width: double.infinity,
              height: mediaQuery.size.height * 0.3,
            ),
            const SizedBox(height: 45),
            SizedBox(
              width: mediaQuery.size.width *
                  (isTablet ? 0.4 : 0.6), // Adjust the width as needed
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 47, 137, 87),
                      Color.fromARGB(255, 109, 186, 83)
                    ],
                    // [Color(0xff599c42), Color(0xff2596be)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    const url =
                        'https://www.google.com/maps/@8.3315682,80.4470286,17546m/data=!3m1!1e3!4m2!6m1!1s1cS3sdCdlqYHD1Kcvje5QZff_1czoVpU!5m1!1e1?entry=ttu'; // Replace with the desired URL
                    // ignore: deprecated_member_use
                    launch(url);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    elevation: 0,
                  ),
                  child: Text(
                    'Live Traffic',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: isTablet
                          ? 20
                          : 18, // Adjust the font size for tablets
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: mediaQuery.size.width *
                  (isTablet ? 0.4 : 0.6), // Adjust the width as needed
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 47, 137, 87),
                      Color.fromARGB(255, 109, 186, 83)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    const url =
                        'https://experience.arcgis.com/experience/3a7263b77b964a0c91f26a99a94a78ac'; // Replace with the desired URL
                    // ignore: deprecated_member_use
                    launch(url);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    elevation: 0,
                  ),
                  child: Text(
                    'Traffic Plan',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: isTablet
                          ? 20
                          : 18, // Adjust the font size for tablets
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: mediaQuery.size.width *
                  (isTablet ? 0.4 : 0.6), // Adjust the width as needed
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 47, 137, 87),
                      Color.fromARGB(255, 109, 186, 83)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    const url =
                        'https://storymaps.arcgis.com/stories/6edceb3f363d432fa72414e89c9467f1'; // Replace with the desired URL
                    // ignore: deprecated_member_use
                    launch(url);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    elevation: 0,
                  ),
                  child: Text(
                    'Sacred Places',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: isTablet
                          ? 20
                          : 18, // Adjust the font size for tablets
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: mediaQuery.size.width *
                  (isTablet ? 0.4 : 0.6), // Adjust the width as needed
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 47, 137, 87),
                      Color.fromARGB(255, 109, 186, 83)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DownloadPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    elevation: 0,
                  ),
                  child: Text(
                    'User Guide',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: isTablet ? 20 : 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: mediaQuery.size.width *
                  (isTablet ? 0.4 : 0.6), // Adjust the width as needed
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 47, 137, 87),
                      Color.fromARGB(255, 109, 186, 83)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    const url =
                        'https://arcg.is/0u9O9W'; // Replace with the desired URL
                    // ignore: deprecated_member_use
                    launch(url);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    elevation: 0,
                  ),
                  child: Text(
                    'Send Feedback',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: isTablet
                          ? 20
                          : 18, // Adjust the font size for tablets
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 40,
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            '© 2023 Center for Defence Research and Development, Ministry of Defence',
            style: TextStyle(
              fontSize: 10,
              color: Color(0xff8a8186),
              fontWeight: FontWeight.normal,
              fontFamily:
                  'GoogleFonts.poppins()', // Add the desired font family
            ),
          ),
        ),
      ),
    );
  }
}
