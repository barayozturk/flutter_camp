import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:packagejson_api/model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({Key? key}) : super(key: key);

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  late Future<List<Araba>> _futureArabalar;

  @override
  void initState() {
    super.initState();
    _futureArabalar = arabalarJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Json Islemleri'),
      ),
      body: FutureBuilder<List<Araba>>(
        future: _futureArabalar,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              List<Araba> arabaListesi = snapshot.data!;
              return ListView.builder(
                itemCount: arabaListesi.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(arabaListesi[index].arabaAdi),
                    subtitle: Text(arabaListesi[index].ulke),
                    leading: CircleAvatar(child:Text( arabaListesi[index].model[0].fiyat.toString())),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<List<Araba>> arabalarJsonOku() async {
    try {
      String okunanString =
          await DefaultAssetBundle.of(context).loadString('assets/data/arabalar.json');
      var jsonObj = jsonDecode(okunanString);
      List<Araba> tumArabalar = (jsonObj as List)
          .map((arabaMap) => Araba.fromJson(arabaMap))
          .toList();

      debugPrint(tumArabalar.length.toString());

      return tumArabalar;
    } catch (e) {
      throw Exception('Json okuma hatası: $e');
    }
  }
}
