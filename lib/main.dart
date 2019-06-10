import 'package:flutter/material.dart';
import 'berita.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List<Berita> viral = [
    Berita.isi_berita(
        "Viral Anak Kurang Tata Krama Saat Lebaran Dibiarkan Orangtua, Kue Nastar Ludes, Tuan Rumah Melongo",
        "10 Juni 2019",
        "2019",
        "",
        "http://cdn2.tstatic.net/tribunnews/foto/bank/images/anak-tak-beretika.jpg"
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eudeka OSG4 Tugas UI/UX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
//                                            Text(viral[index].stadium)
                                          ]),
                                      Text(viral[index].Tahun)
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

