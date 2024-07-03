import 'package:flutter/material.dart';
import 'package:frontend/profil_guru.dart';
import 'package:frontend/favorit.dart';
import 'package:frontend/materisdkelas1.dart';
import 'package:frontend/materisdkelas2.dart';
import 'package:frontend/materisdkelas3.dart';
import 'package:frontend/materismpkls1.dart';
import 'package:frontend/Data/data_guru.dart';
import 'package:frontend/model/guru.dart';

void main() {
  runApp(Verifikasi());
}

class Verifikasi extends StatefulWidget {
  const Verifikasi({Key? key});

  @override
  State<Verifikasi> createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> {
  bool showSDClasses = false;
  bool showSMPClasses = false;

  final _guru = guru;
  List<Guru> favorites_guru = [];
  List<int> favorite = [];

  List<String> sdClasses = [
    "Kelas 1 SD",
    "Kelas 2 SD",
    "Kelas 3 SD",
    "Kelas 4 SD",
    "Kelas 5 SD",
    "Kelas 6 SD"
  ];
  List<String> smpClasses = ["Kelas 1 SMP", "Kelas 2 SMP", "Kelas 3 SMP"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pilih Kelas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (context) =>
                          FavoriteScreen(favorites_guru: favorites_guru));
                  Navigator.push(context, route);
                },
                icon: Icon(Icons.favorite, color: Colors.red))
          ],
          backgroundColor: Colors.blue[900],
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 193, 209, 224),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CheckboxListTile(
                  title: Text(
                    "SD",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  value: showSDClasses,
                  onChanged: (newValue) {
                    setState(() {
                      showSDClasses = newValue!;
                      if (showSDClasses) {
                        showSMPClasses = false;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                    "SMP",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  value: showSMPClasses,
                  onChanged: (newValue) {
                    setState(() {
                      showSMPClasses = newValue!;
                      if (showSMPClasses) {
                        showSDClasses = false;
                      }
                    });
                  },
                ),
                SizedBox(height: 20),
                if (showSDClasses)
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: sdClasses.map((kelas) {
                      return GestureDetector(
                        onTap: () {
                          if (kelas == 'Kelas 2 SD') {
                            _navigateToMateri2(context);
                          } else if (kelas == 'Kelas 3 SD') {
                            _navigateToMateri3(context);
                          } else {
                            _navigateToMateri1(context, kelas);
                          }
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              kelas,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                if (showSMPClasses)
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: smpClasses.map((kelas) {
                      return GestureDetector(
                        onTap: () {
                          if (kelas == 'Kelas 1 SMP') {
                            _navigateToMateriSMP1(context);
                          } else {
                            _navigateToMateri1(context, kelas);
                          }
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              kelas,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                SizedBox(height: 20),
                Text(
                  "Kelas guru",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _guru['data'].length,
                    itemBuilder: (context, index) {
                      final guru_name = _guru['data'][index]['name'];
                      final guru_image = _guru['data'][index]['image'];
                      final guru_description =
                          _guru['data'][index]['description'];
                      final guru_important = _guru['data'][index]['important'];
                      final guru_mapel = _guru['data'][index]['mapel'];
                      final guru_rating = _guru['data'][index]['rating'];
                      final guru_opening = _guru['data'][index]['opening'];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Detailguru(
                                          guru: Guru(
                                            name: guru_name,
                                            description: guru_description,
                                            important: guru_important,
                                            mapel: guru_mapel,
                                            image: guru_image,
                                            opening: guru_opening,
                                            rating: guru_rating,
                                          ),
                                        ));
                                Navigator.push(context, route);
                              },
                              title: Text(
                                guru_name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                guru_description.length > 55
                                    ? guru_description.substring(0, 55) + " ..."
                                    : guru_description,
                              ),
                              leading: Image(
                                image: NetworkImage(guru_image[0]),
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mapel: $guru_mapel",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Important: $guru_important",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonBar(
                                  alignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Buka $guru_opening",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Text(
                                      "Rating $guru_rating",
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Tooltip(
                                      message: favorite.contains(index)
                                          ? 'Remove from favorite'
                                          : 'Add to favorite',
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (!favorite.contains(index)) {
                                              favorite.add(index);
                                              favorites_guru.add(Guru(
                                                  name: guru_name,
                                                  description:
                                                      guru_description,
                                                  important: guru_important,
                                                  mapel: guru_mapel,
                                                  image: guru_image,
                                                  opening: guru_opening,
                                                  rating: guru_rating));
                                            } else {
                                              favorite.removeWhere(
                                                  (element) => element == index);
                                              favorites_guru.removeWhere(
                                                  (element) =>
                                                      element.name == guru_name);
                                            }
                                          });
                                        },
                                        icon: Icon(
                                          favorite.contains(index)
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      routes: {
        '/classDetail': (context) => sdkls1(className: ''),
      },
    );
  }

  void _navigateToMateri1(BuildContext context, String className) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => sdkls1(className: className),
      ),
    );
  }

  void _navigateToMateri2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => sdkls2(),
      ),
    );
  }

  void _navigateToMateri3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => sdkls3(),
      ),
    );
  }

  void _navigateToMateriSMP1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MateriSmp1(),
      ),
    );
  }
}
