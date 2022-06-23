import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String imagepath;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  const DoctorCard({ 
    Key? key,
    required this.imagepath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
       decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.circular(12)
       ),
        child: Column(
           children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imagepath,
                 height:55.0,
                ),
            ),
           
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Text(rating,style:TextStyle(fontWeight: FontWeight.bold))
                  ],
                  ),
                Text(doctorName,style:TextStyle(fontWeight: FontWeight.bold)),
                Text(doctorProfession)
              ],
        ),
      ),
    );
  }
}