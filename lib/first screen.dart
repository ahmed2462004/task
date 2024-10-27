// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DoctorProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor Image and Name
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Placeholder for doctor image
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmed Eid ',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Eye Specialist',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Text('3'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // About Section
            Text(
              'About',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 8),
            Text(
              'Professor of Eye Special - Former Head of Department of Eye Special, Cairo University',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Hospital Info Section
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_hospital, color: Colors.blue),
                        SizedBox(width: 8),
                        Text('Cleopatra Hospital',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.grey),
                        SizedBox(width: 8),
                        Text('10 - 19', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.grey),
                        SizedBox(width: 8),
                        Text('2 Gamaa Street, Giza',
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Contact Info Section
            Text(
              'Contact Info',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 8),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.grey),
                        SizedBox(width: 8),
                        Text('dr@6.com', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.grey),
                        SizedBox(width: 8),
                        Text('01032564823', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.grey),
                        SizedBox(width: 8),
                        Text('01125466125', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Chat functionality
                  },
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.chat_bubble),
                      SizedBox(width: 8),
                      Text('Chat With Dr. Sayed'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Appointment booking functionality
                  },
                  style: ElevatedButton.styleFrom(
                   // primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 10,),
                      Text('Book'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
