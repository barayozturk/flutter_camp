import 'package:flutter/material.dart';
import 'package:grade_calculation/constants/constants.dart';
import 'package:grade_calculation/data/data_helper.dart';
import 'package:grade_calculation/widgets/ortalama_g%C3%B6ster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double secilenDeger = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            Sabitler.baslikText,
            style: Sabitler.baslikStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildForm(),
              ),
              Expanded(
                flex: 1,
                child: OrtalamaGoster(dersSayisi: 5, ortalama: 2.58),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Text('Liste buraya gelecek'),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildHarfler(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Matematik',
        border: OutlineInputBorder(
          borderRadius: Sabitler.borderRadius,
        ),
        filled: true,
        fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3),
      ),
    );
  }

  Widget _buildHarfler() {
    
    return Container(
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        value: secilenDeger,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        items: DataHelper.tumDerslerinHarfleri(),
        underline: Container(),
        onChanged: (deger) {
          setState(() {
            secilenDeger = deger!;
          });
        },
      ),
    );
  }
}
