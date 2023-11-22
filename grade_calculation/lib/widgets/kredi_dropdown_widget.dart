import 'package:flutter/material.dart';
import 'package:grade_calculation/constants/constants.dart';
import 'package:grade_calculation/data/data_helper.dart';

class KrediDropdownList extends StatefulWidget {
  final Function onKrediSecildi;
  KrediDropdownList({required this.onKrediSecildi,Key? key}) : super(key: key);

  @override
  State<KrediDropdownList> createState() => _KrediDropdownListState();
}

class _KrediDropdownListState extends State<KrediDropdownList> {
  
  double secilenKrediDeger = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        value: secilenKrediDeger,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        items: DataHelper.tumDerslerKredileri(),
        underline: Container(),
        onChanged: (deger) {
          setState(() {
            secilenKrediDeger = deger!;
            widget.onKrediSecildi(deger);
          });
        },
      ),
    );
  }
  }
