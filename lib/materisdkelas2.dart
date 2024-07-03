import 'package:flutter/material.dart';
import 'package:frontend/data/sdkls2.dart';

class sdkls2 extends StatefulWidget {
  const sdkls2({Key? key}) : super(key: key);

  @override
  State<sdkls2> createState() => _sdkls1State();
}

class _sdkls1State extends State<sdkls2> {
  final List<Map<String, dynamic>> sds =
      sd2['data']; // Menggunakan data dari sd1.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Materi Kelas 2 SD",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Color.fromARGB(255, 169, 214, 240),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: sds.length,
          itemBuilder: (context, index) {
            final sd_nama = sds[index]['name'] ?? '';
            final sd_image =
                sds[index]['image']?.toString() ?? 'placeholder_image.png';
            final sd_description = sds[index]['description'] ?? '';
            return Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      sd_image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          sd_nama,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          sd_description,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
