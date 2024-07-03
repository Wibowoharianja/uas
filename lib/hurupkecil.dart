import 'package:flutter/material.dart';

class Hurufkecil extends StatelessWidget {
  const Hurufkecil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mengenal Huruf Kecil", style: TextStyle(fontSize: 15),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 54, 107, 160),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Color.fromARGB(255, 219, 235, 247),
      body:Padding(padding: EdgeInsets.all(10.0),child:  
      ListView(
        children: [
          Text("  1. Huruf Abjad", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text("     Abjad yang dipakai dalam ejaan bahasa Indonesia terdiri dari 26 huruf berikut:"),
          SizedBox(
            height: 5,),
          Column(
            children: [
              Image(image: NetworkImage("https://1.bp.blogspot.com/-joPNS5bWsio/Vqp7ZYyw3yI/AAAAAAAAJfc/hKk3WEtGfsQ/s1600/abjad-yang-dipakai-dalam-ejaan-bahasa-Indonesia-terdiri-atas-26-huruf.jpg")),
              Text("Catatan",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
              Text("'Hurup Kapital adalah huruf besar \ndan Nonkapital adalah huruf kecil'",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          SizedBox(height: 10,),
          Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Text("  2. Huruf Vokal", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("     Huruf yang melambangkan vokal dalam bahasa Indonesia terdiri atas lima huruf, yaitu a, e, i, o, dan u."),
              Image(image: NetworkImage("https://th.bing.com/th/id/OIP.nSMZ_OEUqb7JBqvjeLvDqAAAAA?rs=1&pid=ImgDetMain")),
              Text("Keterangan:",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text("* Untuk pengucapan (pelafalan) kata yang benar, diakritik berikut ini dapat digunakan jika ejaan kata itu dapat menimbulkan keraguan.:"),
              SizedBox(height: 5),
              Text("a. Diakritik (é) dilafalkan [e]. Misalnya:"),
              SizedBox(height: 5),
              Text("   #   Anak-anak bermain di teras (téras)."),
              Text("   #   Kedelai merupakan bahan pokok kecap (kécap)."),
              SizedBox(height: 5),
              Text("b. Diakritik (è) dilafalkan [ɛ]. Misalnya:"),
              SizedBox(height: 5),
              Text("   #   Kami menonton film seri (sèri)."),
              Text("   #   Pertahanan militer (militèr) Indonesia cukup kuat."),
              SizedBox(height: 5),
              Text("c. Diakritik (ê) dilafalkan [ə]. Misalnya:"),
              SizedBox(height: 5),
              Text("   #   Pertandingan itu berakhir seri (sêri)."),
              Text("   #   Upacara itu dihadiri pejabat teras (têras) Bank Indonesia."),
              Text("   #   Kecap (kêcap) dulu makanan itu.")
            ],
          ),
          SizedBox(height: 5,),
          Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (){

                },
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white.withOpacity(0.5); 
                    }
                    return null; 
                  },
                ),
              ),
                child: Text("Selanjutnya",style: TextStyle(color: Colors.white),))
              ],
            )
        ],
      ))
    );
  }
}