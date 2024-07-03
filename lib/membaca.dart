import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Membaca extends StatelessWidget {
  const Membaca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cerdik Membaca",
            style: TextStyle(fontSize: 15),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 54, 107, 160),
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "  12 Cerita Pendek untuk Anak Belajar Membaca",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 180, 66, 66), fontSize: 20),
                    ),Text("================================================")
                  ]
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Text("    Pendidikan pada usia dini, khususnya dalam mengajarkan keterampilan membaca, sangatlah penting. Salah satu metode edukasi yang sangat efektif adalah menggunakan cerita pendek sebagai alat pembelajaran membaca bagi anak-anak. Berikut ini beberapa manfaat penggunaan cerita pendek untuk anak belajar membaca:")
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("1. Memikat minat belajar", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Cerita pendek untuk anak belajar membaca dengan tema menarik akan memancing minat anak untuk membaca dan memahami cerita dengan lebih antusias."),
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("2. Meningkatkan kemampuan membaca", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Melalui cerita pendek untuk anak belajar membaca, anak-anak akan terbiasa mengenal huruf, kata, dan kalimat sehingga kemampuan membaca mereka dapat berkembang dengan lebih baik."),
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("3. Meningkatkan kosa kata", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Dengan sering membaca cerita pendek untuk anak belajar membaca, anak-anak akan terpapar pada beragam kosakata baru yang akan meningkatkan kekayaan kata dalam bahasa mereka"),
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("4. Mengasah kreativitas dan imajinasi", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Cerita pendek untuk anak belajar membaca dapat mendorong anak untuk menggunakan imajinasi dan kreativitas mereka dalam memvisualisasikan cerita yang dibaca."),
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("5. Meningkatkan daya ingat", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Dengan mengikuti alur cerita pendek untuk anak belajar membaca, anak-anak akan melatih daya ingat mereka, memori, dan pemahaman cerita secara keseluruhan."),
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("6. Pembelajaran nilai moral", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Banyak cerita pendek untuk anak belajar membaca yang menyajikan pesan moral, sehingga anak-anak dapat belajar tentang nilai-nilai positif dalam kehidupan."),
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("7. Menciptakan ikatan emosional", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Saat mendengarkan cerita dari orang tua atau pengajar, anak-anak dapat membentuk ikatan emosional yang kuat, mempererat hubungan mereka dengan orang dewasa."),
                  ],
                ),
                SizedBox(height: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("8. Meningkatkan pengetahuan dan wawasan anak melalui cerita pendek", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 5,),
                    Text("    Salah satu manfaat utama dari penggunaan cerita pendek dalam pembelajaran membaca anak adalah kemampuannya dalam meningkatkan pengetahuan dan wawasan anak. Cerita pendek yang ditujukan untuk anak-anak umumnya berisi konten edukatif dan materi yang positif, sesuai dengan tingkat pemahaman dan minat mereka. "),
                    SizedBox(height: 5,),
                    Text("    Melalui cerita pendek, anak-anak dapat memperluas pengetahuan mereka tentang berbagai hal, mulai dari alam, hewan, lingkungan, nilai-nilai moral, dan hal-hal lain yang relevan dengan perkembangan mereka.")
                  ],
                ),
                Card(
                  child: 
                      Column(
                        children: [
                          Text("1. Kancil dan buaya yang rakus", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.blue),),
                          Image(image: NetworkImage("https://th.bing.com/th/id/OIP.VeGYqndvJsJM30_Xqy7X9wHaKI?pid=ImgDet&w=196&h=267&c=7&dpr=1,3")),
                          SizedBox(height: 5,),
                          Text("    Pada suatu siang yang cerah, tepi sungai menjadi saksi atas petualangan Si Kancil yang sedang mencari makanan. Di sana, nasibnya bertemu dengan Buaya yang tengah merasa sangat lapar. Buaya dengan rakusnya ingin langsung menyantap Kancil yang lemah."),
                          SizedBox(height: 5,),
                          Text("    Namun, Kancil tidak begitu saja menyerah pada situasi yang membahayakan. Dengan kecerdikannya, Kancil berpikir cepat dan menyusun sebuah rencana cerdik untuk menghindari nasib yang buruk."),
                          Text("    Ia berbicara dengan Buaya dengan nada tenang, “Tidak perlu buru-buru, Buaya. Sebenarnya, saya bisa membawamu ke suatu tempat yang kaya dengan makanan lezat.”"),
                          SizedBox(height: 5,),
                          Text("    Buaya yang merasa penasaran langsung tertarik pada ide tersebut. Ia ingin tahu di mana tempat tersebut berada dan siap untuk mengikuti Kancil. Namun, Kancil dengan pintarnya memberikan syarat sebelum berangkat, “Tapi, Buaya, kamu harus berjanji tidak akan menyentuhku selama perjalanan menuju tempat itu. Jika kamu melanggar janji, saya tidak akan membawamu kesana.”"),
                          SizedBox(height: 5,),
                          Text("    Meskipun sedikit ragu, Buaya yang terlalu lapar dan terpesona dengan janji Kancil akhirnya berjanji untuk tidak menyentuhnya selama perjalanan. Kancil dan Buaya pun berangkat menuju tempat yang diklaim Kancil sebagai surga makanan."),
                          SizedBox(height: 5,),
                          Text("    Perjalanan tersebut sangat jauh dan melelahkan, namun Kancil dengan penuh tipu daya terus mengajak Buaya terus maju. Setelah berjalan cukup jauh, Kancil berhenti dan berkata, “Kita hampir sampai, tetapi tempat makanan itu ada di atas pohon di tengah sungai ini.  Aku bisa membawamu ke sana dengan melompati batu-batu di sungai ini.”"),
                          SizedBox(height: 5,),
                          Text("    Buaya semakin tidak sabar dan mengangguk setuju. Namun, ketika Kancil berada di tengah-tengah sungai, ia melihat ke belakang dan melihat Buaya sudah terlalu dekat. Tanpa ragu, Kancil segera melompat ke pohon yang tinggi, jauh dari jangkauan Buaya."),
                          SizedBox(height: 5,),
                          Text("    “Sialan, Kancil! Kau telah menipu aku!” teriak Buaya dengan marahnya. Namun, Kancil hanya tertawa kecil sambil berkata, “Seorang yang rakus seperti kamu harus belajar untuk tidak mudah tertipu, Buaya.”"),
                          SizedBox(height: 5,),
                          Text("    Kancil berhasil selamat dari ancaman Buaya yang rakus berkat kecerdikannya. Ia belajar dari pengalaman itu bahwa kecerdikan dan kebijaksanaan bisa menjadi senjata ampuh melawan bahaya. Kancil juga menyadari bahwa ketidakjujuran dan ketamakan, seperti yang dilakukan oleh Buaya, selalu berujung pada kegagalan."),
                          SizedBox(height: 5,),
                          Text("    hari itu, Si Kancil tidak hanya menjadi cerdas dan cerdik, tetapi juga bijaksana dalam menghadapi berbagai situasi. Cerita petualangannya pun menjadi pelajaran berharga bagi banyak anak-anak tentang pentingnya kecerdikan, kejujuran, dan menghindari sifat rakus.")
                        ],
                      )
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
                ),  
          )
        );
  }
}
