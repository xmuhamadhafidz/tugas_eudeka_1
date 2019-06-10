import 'package:flutter/material.dart';
import 'berita.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List<Berita> viral = [
    Berita.isiBerita(
        "Viral Anak Kurang Tata Krama Saat Lebaran",
        "Senin 10 Juni 2019",
        "2019",
        "Sedang viral di Facebook! Kisah tak sopan seorang anak saat silaturahmi Lebaran 2019 yang dibiarkan orangtuanya di depan tuan rumah. Si anak dengan rakusnya melahap hampir setoples kue nastar, yang dikenal sebagai 'kue mahal', sampai tuang rumah melongo Artikel ini telah tayang di Tribunnews.com dengan judul Viral Anak Kurang Tata Krama Saat Lebaran Dibiarkan Orangtua, Kue Nastar Ludes, Tuan Rumah Melongo.",
        "http://cdn2.tstatic.net/tribunnews/foto/bank/images/anak-tak-beretika.jpg"
    ),
    Berita.isiBerita(
        "Viral Jemaah Salat Ied Bubar Gara-Gara Khotbah Politik",
        "Jum'at 07 Juni 2019",
        "2019",
        "Pelaksanaan salat Idul Fitri 1440 H mendadak bubar setelah khotbah "
            " yang disampaikan khatib dinilai berkaitan dengan politik. Peristiwa itu diketahui terjadi di "
            "Desa Gaden, Kecamatan Trucuk, Kabupaten Klaten, Jawa Tengah."
            " Berdasarkan video yang diunggah, beberapa orang meninggalkan tempat Salat Id sambil berteriak saat "
            "khatib masih terdengar menyampaian khotbah. "
            "Bahkan, beberapa orang yang menggunakan kendaraan bermotor membunyikan klakson terus menerus dan memainkan tuas gas sepeda motor. Beberapa orang mengaku pulang sebelum ceramah selesai karena tak nyaman dengan isi ceramah sang khatib.",
        "https://img-z.okeinfo.net/content/2019/06/08/512/2064434/viral-video-jemaah-salat-id-bubar-gara-gara-khotbah-politik-gfl1Ja2jIh.jpg"
    ),
    Berita.isiBerita(
        "Tidak Ada Jaringan Internet, Seorang Bocah Nangis Histeris",
        "Jum'at 07 Juni 2019",
        "2019",
        "Seorang bocah laki-laki menangis histeris ketika mengetahui jika di daerah tempat mudik "
            "keluarganya tidak ada jaringan internet. Alhasil, video tersebut viral yang dishare oleh palopo_info. "
            "Video viral tersebut terjadi di Kecamatan Palopo, Kabupaten Luwu, Sulawesi Selatan.",
        "https://img-o.okeinfo.net/content/2019/06/07/337/2064386/kampung-halaman-tidak-ada-jaringan-internet-seorang-bocah-nangis-histeris-dEyy91UPAE.jpg"
    ),
    Berita.isiBerita(
        "Viral Remaja Lempar Petasan ke Bentor Tuai Kecaman",
        "Kamis 6 Juni 2019",
        "2019",
        "Sejumlah remaja yang belum jelas identitasnya mendadak viral di media sosial dengan aksi tak terpuji mereka,Beberapa orang itu tega menjahili orang di sekitarnya menggunakan petasan untuk memunculkan kesan terkejut. Sontak pengendara bentor itu terkejut dan langsung turun dari motornya. Aksi yang dianggap sudah keteralaluan itu tak pelak memunculkan rasa geram netizen Beragam cacian tak sediit dilontarkan kepada warganet terhadap para remaja di video viral itu.'Kurang ajar banget sih' tulis pengguna akun Instagram @allartis.",
        "https://img-o.okeinfo.net/content/2019/06/07/340/2064222/viral-remaja-lempar-petasan-ke-bentor-tuai-kecaman-tKFFKnfiLn.jpg"
    ),
    Berita.isiBerita(
        "Kelakuan Warga +62 Ketika Jakarta Sepi",
        "Kamis 6 Juni 2019",
        "2019",
        "Momen Idul Fitri 1440 Hijriah dan libur panjang yang menyertainya membuat kondisi hampir seluruh jalan di Jakarta lengang. Hal ini terjadi setelah mayoritas warga mudik ke kampung halaman. Dikarenakan kondisi jalanan sepi, beberapa warga Jakarta yang tidak mudik pun memanfaatkan momen tersebut dengan mengabadikannya dalam bentuk foto. Hasilnya terlihat cukup unik. Berdasarkan foto yang diunggah akun @infojktku, terlihat ada warga yang hanya mengenakan handuk berfoto di tengah jalanan besar Ibu Kota. Tak hanya itu, bahkan terdapat foto yang memperlihatkan pria tersebut bersama warga lainnya bergaya layaknya usai menyuci dan mandi bersama anak kecil.",
        "https://img.okeinfo.net/content/2019/06/06/338/2064061/viral-warga-tidur-hingga-mandi-di-tengah-jalanan-jakarta-yang-sepi-9BqEYceZdY.jpg"
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eudeka OSG4 Tugas UI/UX',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: viral.length,
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 4,
                    child: Column(children: <Widget>[
                      CachedNetworkImage(
                          imageUrl: viral[index].image_url,
                          placeholder: (context, url) =>
                          new CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                          new Icon(Icons.error)),
                      Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(viral[index].Judul,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.bold)),
                                            Text(viral[index].Tanggal),
                                          ])
                                    ],
                                  )),
                              Text(viral[index].Deskipsi, textAlign: TextAlign.justify)
                            ],
                          ))
                    ]),
                  );
                }),
          )),
    );
  }
}

