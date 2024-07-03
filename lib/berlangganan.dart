import 'package:flutter/material.dart';

import 'snakbar.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Berlangganan'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Berlangganan.show(context);
          },
          child: Text('Tampilkan Dialog'),
        ),
      ),
    );
  }
}

class Berlangganan {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        bool _cbbelangganan = false;
        List<String> harga = [
          'Pengguna baru\n\nRp 29.000',
          '1 Bualan\n\nRp 50.000',
          '3 Bulan\n\nRp 75.000',
          'Penggan VIP\n\nRp 100.000',
        ];
        List<bool> _checked = List<bool>.filled(harga.length, false);
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text("Berlangganan Sekarang..!!"),
              content: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Dapatkan akses ke fitur premium dengan berlangganan sekarang. Untuk menikmati pembelajaran dengan guru, video terbaru',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Geser ke samping untuk melihat harga",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            selected: _cbbelangganan,
                            value: _cbbelangganan,
                            onChanged: (val) {
                              setState(() {
                                _cbbelangganan = val!;
                              });
                            },
                            title: Text('Saya setuju dengan syarat dan ketentuan'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 200,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: harga.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  harga[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Checkbox(
                                  value: _checked[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _checked[index] = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                        padding: EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Batal'),
                ),
                ElevatedButton(
                  onPressed: _cbbelangganan
                      ? () {
                          Navigator.of(context).pop();
                          PinChat.show(context);
                        }
                      : null, 
                  child: Text('Berlangganan'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
