import 'package:flutter/material.dart';
class CityWidget extends StatelessWidget {
  final String img,title,rating;

  const CityWidget({
    super.key, required this.img, required this.title, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(img))
            ),
        ),
        
        Positioned(
          bottom: 15,
          right: 150,

          child: Text(title,
            style: TextStyle(
                color: Colors.red,
                fontSize: 25
            ),
          ),
        ),
        
        ElevatedButton(onPressed: (){}, child: Text('⭐ ${rating}',style: TextStyle(color: Colors.orange),))
      ],
    );
  }
}
