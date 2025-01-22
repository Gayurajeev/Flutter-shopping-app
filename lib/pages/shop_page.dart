import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal:25 ),
          decoration:BoxDecoration(color: Colors.grey[300],
    borderRadius: BorderRadius.circular(8)
    ),
          child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Search',
    style: TextStyle(color: Colors.grey),
    ),
              Icon(
    Icons.search,
    color: Colors.grey,
    ),
            ],
          )),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children:const [
        Text(
          'Hot Picks',
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      ),
        ),
      Text('See All',
      style: TextStyle(fontWeight: FontWeight.bold,color:Colors.blue),
      ),
    ],
    ),
    ),
    const SizedBox(height: 10,),
    Expanded(
    child: ListView.builder(
      itemCount: 3,
    scrollDirection: Axis.horizontal,
    itemBuilder:(context,index){
      Shoe shoe=Shoe(name: 'BlackHeels', price: '240', description: 'Fashionable heel', imagePath: 'lib/images/blackheels.jpeg');
      return ShoeTile(
      shoe: shoe,
      );
    },
    ),
    ),
    ],
    );

  }
}
