import 'package:flutter/material.dart';
import 'package:wartars/CardItem.dart';
import 'package:wartars/dummy.dart';
import 'package:wartars/home/detail.dart';

class Terkini extends StatelessWidget {
  const Terkini({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: Dummy.terkini.length,
          itemBuilder: (context, index) {
          var form = Dummy.terkini[index];
          return CardItem(
              date:"${form['date']}", 
              thumbnail:"${form['thumb']}", 
              title: "${form['title']}", 
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailBerita(detail: form),
                ),
              );
              }
            );
          },
        ),
      ),
    );
  }
}