import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final poppinsFontFamily = GoogleFonts.poppins().fontFamily;
    return MaterialApp(
      title: 'PDF Viewer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: poppinsFontFamily, // Set default font to Poppins
      ),
      home: const DownloadPage(),
    );
  }
}

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final poppinsFontFamily = GoogleFonts.poppins().fontFamily;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'View User Guide',
          style: GoogleFonts.poppins(
            // Set font to Poppins
            textStyle: TextStyle(
              color: Color(0xff2596be),
              fontWeight: FontWeight.bold,
              fontFamily: poppinsFontFamily,
            ),
          ),
        ),
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () async {
                  const pdfPath = 'assets/PTP Sinhala.pdf';
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PDFViewerPage(
                        pdfPath: pdfPath,
                        topic: 'Sinhala User Guide',
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(
                      120, 40), // Adjust the width as per your requirement
                ),
                child: Ink(
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
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 250, // Adjust the width as per your requirement
                      maxHeight: 40,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Sinhala',
                      style: GoogleFonts.poppins(
                        // Set font to Poppins
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: poppinsFontFamily,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  const pdfPath = 'assets/PTP English.pdf';
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PDFViewerPage(
                        pdfPath: pdfPath,
                        topic: 'English User Guide',
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(150, 40),
                ),
                child: Ink(
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
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 250, // Adjust the width as per your requirement
                      maxHeight: 40,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'English',
                      style: GoogleFonts.poppins(
                        // Set font to Poppins
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: poppinsFontFamily,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
               const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                    const url =
                        'https://www.youtube.com/watch?v=Dn-9zltMmGo'; // Replace with the desired URL
                    // ignore: deprecated_member_use
                    launch(url);
                  },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(150, 40),
                ),
                child: Ink(
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
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 250, // Adjust the width as per your requirement
                      maxHeight: 40,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Vedio Guide',
                      style: GoogleFonts.poppins(
                        // Set font to Poppins
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: poppinsFontFamily,
                        ),
                      ),
                    ),
                  ),
                ),
              ),


              const SizedBox(height: 100),
              // Added extra spacing for visibility
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: const Color.fromARGB(255, 255, 255, 255),
        alignment: Alignment.center,
        child: const Text(
          '© 2023 Center for Defence Research and Development, Ministry of Defence',
          style: TextStyle(
            fontSize: 10,
            color: Color(0xff8a8186),
            fontWeight: FontWeight.normal,
            fontFamily: 'GoogleFonts.poppins()',
          ),
        ),
      ),
    );
  }
}

class PDFViewerPage extends StatelessWidget {
  final String pdfPath;
  final String topic;

  const PDFViewerPage({Key? key, required this.pdfPath, required this.topic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          topic,
          style: const TextStyle(
            color: Color(0xff2596be),
            fontWeight: FontWeight.bold,
            fontFamily: 'GoogleFonts.poppins()',
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.grey, // Change the back arrow button color to gray
        ),
      ),
      body: SfPdfViewer.asset(pdfPath),
    );
  }
}
