import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagepath;
  final String category;
  const CategoryCard({ Key? key,required this.category,required this.iconImagepath }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 20.0,right: 25.0),
      child: Container(
                        padding: EdgeInsets.all(12),
                       decoration: BoxDecoration(
                          color: Colors.deepPurple[200],
                          borderRadius: BorderRadius.circular(12)
                       ),
                        child: Row(
                          children: [
                            Image.asset(iconImagepath,height: 30,),
                            SizedBox(width: 10,),
                            Text(category)
                          ],
                        ),
                      ),
    );
  }
}