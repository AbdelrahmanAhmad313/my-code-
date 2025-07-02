import 'package:flutter/material.dart';
import 'package:myapp/hagz/adding_field.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Text(list.first[1]),
          SizedBox(height: 50,),
          Text(list.first[2]),
          SizedBox(height: 50,),
          Text(list.first[3]),
          SizedBox(height: 50,),
          Text(list.first[4]),
        ],
      ),
    );
  }
}
