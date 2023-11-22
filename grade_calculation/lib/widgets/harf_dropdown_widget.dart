import 'package:flutter/material.dart';
import 'package:grade_calculation/constants/constants.dart';
import 'package:grade_calculation/data/data_helper.dart';

class HarfDropdownWidget extends StatefulWidget {
  final Function onHarfSecildi;
  HarfDropdownWidget({required this.onHarfSecildi,Key? key}) : super(key: key);


  @override
  State<HarfDropdownWidget> createState() => _HarfDropdownWidgetState();
}

class _HarfDropdownWidgetState extends State<HarfDropdownWidget> {
  
  double secilenHarfDeger = 4;
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
        value: secilenHarfDeger,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        items: DataHelper.tumDerslerinHarfleri(),
        underline: Container(),
        onChanged: (deger) {
          setState(() {
            secilenHarfDeger = deger!;
            widget.onHarfSecildi;
          });
        },
      ),
    );
  }
}