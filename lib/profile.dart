import 'package:flutter/material.dart';
import 'package:frontend/berlangganan.dart';
import 'package:frontend/edit%20profile.dart';

void main() {
  runApp(MaterialApp(
    home: Profil(),
  ));
}

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool _switch = false;
  String status = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Let's Study",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Color.fromARGB(255, 169, 214, 240),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 232, 240, 255),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: Image.network(
                'https://th.bing.com/th/id/OIP.qpuibTDP9I8Y1ZoGDLGEmQHaH1?w=143&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                fit: BoxFit.cover,
                width: 110,
                height: 110,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Masbroku",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notifikasi: $status",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Switch(
                        value: _switch,
                        onChanged: (value) {
                          setState(() {
                            _switch = value;
                            status = value ? "Aktif" : "Non aktif";
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Card(
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Kamu belum \nberlangganan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Berlangganan.show(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 136, 146, 214),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Berlangganan sekarang",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  itemProfile('Name', 'MasBrokuu', Icon(Icons.person)),
                  Divider(),
                  itemProfile('Phone', '+6284343434343', Icon(Icons.phone)),
                  Divider(),
                  itemProfile('Address', 'Provinsi, City', Icon(Icons.location_city)),
                  Divider(),
                  itemProfile('Email', 'masbroku12@Email.com', Icon(Icons.email)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Edit Profil',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemProfile(String label, String value, Icon icon) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          icon,
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

