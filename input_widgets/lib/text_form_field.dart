import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKull extends StatefulWidget {
  const TextFormFieldKull({super.key});

  @override
  State<TextFormFieldKull> createState() => _TextFormFieldKullState();
}

class _TextFormFieldKullState extends State<TextFormFieldKull> {

  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('text Form field kull'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  //initialValue: 'baray',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'UserName',
                    hintText: 'UserName',
                  ),
                  onSaved: (deger){
                    _userName = deger!;
                  },
                  validator: (deger){
                    
                    if (deger!.length<4) {
                      return 'UserName 4 karakterden büyük olmali';
                    }else{
                      return null;
                    }
                    
                  },
                ),
                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  //initialValue: 'baray@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'email',
                    hintText: 'email',
                  ),
                  onSaved: (deger){
                    _email = deger!;
                  },
                  validator: (deger){
                    
                    if(!EmailValidator.validate(deger!)){
                      return 'gecerli mail';
                    }else{
                      return null;
                    }
                    
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  //initialValue: 'baray@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Password',
                  ),
                  onSaved: (deger){
                    _password = deger!;
                  },
                  validator: (deger){
                    
                    if(deger!.length < 6){
                      return 'şifre kısa';
                    }else{
                      return null;
                    }
                    
                  },
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    bool _validate = _formKey.currentState!.validate();
                    if (_validate) {
                      _formKey.currentState!.save();

                      String result=
                    'Username:$_userName\nemail:$_email\nSifre:$_password';

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(result)
                        ),
                        );
                        
                    }
                    

                  }, child: Text('onayla')),
              ],
            ),
          ),
        ),
    ),
  );}
}