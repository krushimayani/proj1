// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mdicalapp/util/categery_card.dart';
import 'package:mdicalapp/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hello,",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 8,),
                      Text(
                        "Mitch Koko",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Icon(
                      Icons.person
                    ),

                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                     child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_tutvdkg0.json"),
                    ),
                    Expanded(
                      child: Column(
                        
                        children: [
                          Text("How Do You Feel?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Fill Out Your Medical card Right now",style: TextStyle(fontSize: 14),),
                          SizedBox(
                            height: 15,
                          ),
                          Container(width: 130,
                            height: 40,

                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Center(child: Text("Get Started  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),)),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[200],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    iconColor: Colors.deepPurple,
                    border: InputBorder.none,
                    hintText: "How We Can Help You?",
                  ),
                ),
              ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                   CategoryCard(
                     iconImagepath: 'lib/icon/tooth.png',
                     category: "Dentist",
                   ),
                   CategoryCard(
                     iconImagepath:"lib/icon/capsules.png" ,
                     category: "Pharmactist",
                   ),
                   CategoryCard(
                     iconImagepath:"lib/icon/doctor.png" ,
                     category: "Surgon",
                   ),
                    CategoryCard(
                     iconImagepath:"lib/icon/opthalmologist.png" ,
                     category: "Opthalmologist",
                   ),
                 
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor List",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.grey[700],
                         fontSize: 16
                      ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                       DoctorCard(
                         imagepath: "lib/images/bruno-rodrigues-PZ041PgKsFE-unsplash.jpg",
                         rating: "4.9",
                         doctorName: "Dr.Bruno Rodrigues",
                         doctorProfession: "Sergeon,7 y.e",
                       ),
                      DoctorCard(
                         imagepath: "lib/images/rian-ramirez-rm7rZYdl3rY-unsplash.jpg",
                         rating: "4.8",
                         doctorName: "Dr.Rian Ramirez",
                         doctorProfession: "Dentist,9 y.e",
                       ),
                       DoctorCard(
                         imagepath: "lib/images/usman-yousaf-tPxS-1IPZAo-unsplash.jpg",
                         rating: "4.6",
                         doctorName: "Dr.Umesh Gupta",
                         doctorProfession: "Therapist,6 y.e",
                       ), 
                        DoctorCard(
                         imagepath: "lib/images/usman-yousaf-tPxS-1IPZAo-unsplash.jpg",
                         rating: "4.6",
                         doctorName: "Dr.Umesh Gupta",
                         doctorProfession: "Therapist,6 y.e",
                       ), 
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}