import 'package:flutter/material.dart';

class ImgExmp extends StatelessWidget {
  const ImgExmp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        'https://www.copahost.com/blog/wp-content/uploads/2019/07/imgsize2.png';
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child:        
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(    
                     child: Image.asset(
                  'assets/image/img/image.jpg',
                  fit: BoxFit.cover,
                ),
               ),
              ),
              Expanded(  
                child: Container(          
                  child: Image.network(
                  _imgUrl,
                  fit: BoxFit.fitHeight,              
                  ),
                ),
              ),
              Expanded(   
                child: Container(   
                  color: const Color.fromARGB(255, 59, 57, 57),
                  child: Padding( 
                    padding: const EdgeInsets.all(8.0),                 
                    child: CircleAvatar(   
                             
                      backgroundImage: NetworkImage(_imgUrl),
                  ),
                 ),
                ),
               ),
                ],
              ),
          ),
          FadeInImage.assetNetwork(
            placeholder: 'assets/image/img/load.gif', image:_imgUrl )
        ],
      ),
    );
  }
}
