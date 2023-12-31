import 'package:flutter/material.dart';

void main() {
  runApp(const ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Moda Uygulamasi',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Container(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover)

                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width-160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Daisy',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                Text('34 mins ago', style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.grey
                                ),),
                            ],
                            ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.more_vert, color: Colors.grey,size: 22,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('this official wbsite features ribbed kint zipper jacket that is modern and stylish. It looks very temparment and is recomend to friends',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      color: Colors.grey
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: (MediaQuery.of(context).size.width-50)/2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage('assets/modelgrid1.jpeg'),fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: (MediaQuery.of(context).size.width-100)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage('assets/modelgrid2.jpeg'),fit: BoxFit.cover),
                              ),
                        ),
                        SizedBox(height: 10,),
                            Container(
                              height: 100,
                              width: (MediaQuery.of(context).size.width-100)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage('assets/modelgrid3.jpeg'),fit: BoxFit.cover),
                              ),
                        ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        
                      ],
                    ),
                    Row(
                          children: [
                            Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)
                              ),
                              child: Center(
                                child: Text(
                                  '# Louis vuitton',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)
                              ),
                              child: Center(
                                child: Text(
                                  '# Chloe',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Divider(),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(
                              Icons.reply, 
                              color: Colors.brown.withOpacity(0.2),
                              size: 30,
                              ),
                              SizedBox(width: 5,),
                              Text('1.7k',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),),
                              SizedBox(width: 25,),
                              Icon(
                              Icons.comment, 
                              color: Colors.brown.withOpacity(0.2),
                              size: 30,
                              ),
                              SizedBox(width: 5,),
                              Text('325',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),),
                              Container(
                                width: MediaQuery.of(context).size.width-230,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                              Icons.favorite, 
                              color: Colors.red,
                              size: 30,
                              ),
                              SizedBox(width: 5,),
                              Text('2.3k',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),),
                                  ]),
                              ),
                          ],
                        ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown
          ),
          child: Center(
            child: Text('Follow', style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: Colors.white,
            ),),
          ),
        ),
      ],
    );
  }
}
