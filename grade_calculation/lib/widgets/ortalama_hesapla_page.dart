import 'package:flutter/material.dart';
import 'package:grade_calculation/constants/constants.dart';
import 'package:grade_calculation/data/data_helper.dart';
import 'package:grade_calculation/models/ders.dart';
import 'package:grade_calculation/widgets/ders_listesi.dart';
import 'package:grade_calculation/widgets/harf_dropdown_widget.dart';
import 'package:grade_calculation/widgets/kredi_dropdown_widget.dart';
import 'package:grade_calculation/widgets/ortalama_g%C3%B6ster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double secilenKrediDeger = 1;
  double secilenHarfDeger = 1;
  String girilenDersAdi = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                child: OrtalamaGoster(
                  dersSayisi: DataHelper.tumEklenenDersler.length, 
                  ortalama: DataHelper.ortalamaHesapla()),
              ),
            ],
          ),
          Expanded(
            child:DersListesi(
              onElemanCikarildi: (index){
                DataHelper.tumEklenenDersler.removeAt(index);
                setState(() {
                  
                });
              },
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
          Padding(
            padding: Sabitler.yatayPadding8, 
            child: _buildTextFormField(),
            ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: Sabitler.yatayPadding8,
                  child: HarfDropdownWidget(
                    onHarfSecildi: (harf){
                      secilenHarfDeger = harf;
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: Sabitler.yatayPadding8,
                  child: KrediDropdownList(onKrediSecildi: (kredi){
                    secilenKrediDeger = kredi;
                  }),
                ),
              ),
              IconButton(
                onPressed: _dersekleveOrtalamaHesapla,
                icon: Icon(Icons.arrow_forward_ios_sharp),
                color: Sabitler.anaRenk,
                iconSize: 30,
              ),
            ],
          ),
        SizedBox(
          height: 5,
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return TextFormField(
      onSaved: (deger){
        setState(() {
          girilenDersAdi = deger!;
        });
      },

      validator: (s){
        if(s!.length<=0){
          return 'Ders Adini giriniz';
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: 'Matematik',
        border: OutlineInputBorder(
          borderRadius: Sabitler.borderRadius,
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3),
      ),
    );
  }

  


  
  _dersekleveOrtalamaHesapla() {
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      var eklenecekDers = Ders(
        ad: girilenDersAdi, 
        harfDegeri: secilenHarfDeger, 
        krediDegeri: secilenKrediDeger);
      DataHelper.dersEkle(eklenecekDers);
      setState(() {
        
      });
    }
  }

}
