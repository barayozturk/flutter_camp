import 'package:flutter/material.dart';
import 'package:grade_calculation/constants/constants.dart';
import 'package:grade_calculation/data/data_helper.dart';
import 'package:grade_calculation/models/ders.dart';

class DersListesi extends StatelessWidget {
  final Function onElemanCikarildi;
  DersListesi({required this.onElemanCikarildi, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0 ? ListView.builder(
      itemCount: tumDersler.length,
      itemBuilder: (context, index){
      return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.startToEnd,
        onDismissed: (a){
          onElemanCikarildi(index);
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            child: ListTile(
              title: Text(tumDersler[index].ad),
              leading: CircleAvatar(
                backgroundColor: Sabitler.anaRenk,
                child: Text((
                  tumDersler[index].harfDegeri * tumDersler[index].krediDegeri).toStringAsFixed(0)),
                ),
                subtitle: Text(
                  '${tumDersler[index].krediDegeri} Kredi , Not Degeri ${tumDersler[index].harfDegeri}'),
            ),
            ),
        ),
      );
    }):Container(
      child: Center(child: 
      Text(
        'Lutfen Ders Ekleyin',
        style: Sabitler.baslikStyle,),
        ),
    );
  }
}