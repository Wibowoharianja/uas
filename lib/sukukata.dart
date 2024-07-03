import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sukukata extends StatelessWidget {
  const Sukukata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Suku kata",style: TextStyle(fontSize: 15),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 54, 107, 160),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Color.fromARGB(255, 219, 235, 247),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children:[
            Column(
              children: [
                Text("SUKU KATA (PENGERTIAN, CIRI, JENIS, DAN STRUKTUR)", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 180, 66, 66)),),
              ],
            ),
            Column(
              children: [
                Text("SERTA PEMENGGALAN SUKU KAT", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 180, 66, 66)),),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1. Pengertian Suku Kata", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("      Suku kata adalah bagian kata yang diucapkan dalam satu hembusan napas dan umumnya terdiri atas beberapa fonem (Alwi dkk. 2003:55). Misalnya kata larang yang diucapkan dengan dua hembusan napas. Satu napas untuk suku kata la- dan satunya lagi untuk -rang. Karena itu, kata larang terdiri atas dua suku kata. Tiap suku kata terdiri atas dua dan tiga bunyi: [la] dan [raŋ]."),
                SizedBox(height: 5,),
                Text("      Menurut KBBI suku kata adalah struktur yang terjadi dari satu atau urutan fonem yang merupakan konstituen kata (Moeljadi dkk. 2020). Adapun menurut Cambridge Advanced Learner's Dictionary (Gaspard dan Lebrun 2008) suku kata (syllable) adalah a single unit of speech, either a whole word or one of the parts into which a word can be separated, usually containing a vowel. Jika diartikan berbunyi satu unit ucapan, baik seluruh kata atau salah satu bagian di mana sebuah kata dapat dipisahkan, biasanya mengandung vokal."),
                SizedBox(height: 5,),
                Text("     Berdasarkan beberapa penjelasan tentang suku kata tersebut, dapat disimpulkan bahwa, suku kata adalah bagian kata yang merupakan satu unit ucapan yang diucapkan dalam satu hembusan nafas biasanya terdiri dari beberapa fonem dan mengandung vokal."),
                SizedBox(height: 5,),
                Text("     Keberadaan vokal adalah inti dari suku kata dalam bahasa Indonesia. Keberadaan vokal dapat didahului dan diikuti oleh satu konsonan atau lebih. Walaupun begitu, suku kata dapat juga hanya terdiri dari satu vokal atau satu vokal dengan satu konsonan. Berikut adalah beberapa contoh suku kata.")
              ],
            ),
            SizedBox(height: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contoh suku kata:", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("1. Dan: dan"),
                Text("2. Ria: ri-a (dalam aturannya tidak dianjurkan suku kata hanya terdiri satu huruf vokal)"),
                Text("3. Minum: mi-num"),
                Text("4. Minumam: mi-num-an"),
                Text("5. Musyawarah: mu-sya-wa-rah"),
                Text("6. Kebermaknaan: ke-ber-mak-na-an"),
                SizedBox(height: 5,),
                Text("    Sebagai catatan, perbedaan suku kata dan pemenggalan kata adalah sebagai berikut. Suku kata dibedakan berdasarkan pengucapannya, adapun pemenggalan kata dibedakan berdasarkan penulisannya (Alwi dkk. 2003:55)."),
              ],
            ),
            SizedBox(height: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("2. Ciri-ciri Suku Kata", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("  Suku kata memiliki ciri-ciri sebagai berikut."),
                Text("  1. Vokal adalah inti dari suku kata."),
                Text("  2. Vokal pada suku kata dapat didahului & diikuti oleh satu atau lebih konsonan."),
                Text("  3. Suku kata dapat terdiri dari satu vokal atau satu vokal dengan satu konsonan."),
                Text("  4. Suku kata diucapkan dalam satu hembusan napas."),
                Text("  5. Suku kata terdiri dari beberapa fonem."),
                Text("  6. Suku kata terdiri atas dua dan/ tiga bunyi."),
              ],
            ),
            SizedBox(height: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("3. Jenis-jenis Suku Kata", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("    Secara umum, suku kata dibagi dalam dua jenis yaitu suku buku dan suku tutup. Suku buka adalah suku kata yang diakhiri dengan vokal, (K) V, misalnya gu-la, ba-ra, ke-ma-rau, dan lainnya. Adapun suku tutup adalah suku kata yang diakhiri dengan konsonan, (K) VK, misalnya makh-luk, Ap-ril, sang-gup, dan lainnya."),
              ],
            ),
            SizedBox(height: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("4. Struktur Pembentukan Suku Kata", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("    Betapa pun panjangnya suku kata, wujud pembentuknya mempunyai sebelas struktur dan kaidah pembentukan yang sederhana (Alwi dkk. 2003:76–77). Berikut adalah sebelas struktur atau kaidah pembentukan suku kata."),
                Image(image: NetworkImage("url"))
              ],
            ),
            SizedBox(height: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("5. Pemenggalan Suku Kata", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("    Pemenggalan kata berhubungan dengan kata sebagai tulisan, sedangkan penyukuan kata berhubungan dengan kata sebagai satuan bunyi bahasa. Pemenggalan tidak selalu berpedoman pada lafal kata (Alwi dkk. 2003:80). Lebih lanjut, Alwi mengatakan bahwa faktor lain yang harus diperhatikan adalah kesatuan pernapasan pada kata tersebut."),
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
          ] 
      ))
    );
  }
}