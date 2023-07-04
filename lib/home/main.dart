import 'package:flutter/material.dart';
import 'package:wartars/itemchipbar.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  var idSelected = 0;

  Widget currentTab(){
    return chipBarList[idSelected].bodyWidget;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/headLogo.png"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: listChip(),
            ),
          ),
          Expanded(
            child: Center(child: currentTab()),
          ),
        ],
      ),
    );
  }
  
  listChip() {
    return Row(
      children: chipBarList
          .map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: RawChip(
                showCheckmark: false,  // Add this Code
                label: Text(item.title,
                  style: TextStyle(
                      color: idSelected == item.id ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                side: BorderSide.none,
                backgroundColor: idSelected == item.id ? Colors.blue : Colors.transparent, // Switch colors if chip is selected
                shape: const StadiumBorder(side: BorderSide()),
                selectedColor: const Color.fromRGBO(1, 135, 203, 100),
                selected: idSelected == item.id,
                onSelected: (_) => setState(() => idSelected = item.id),
              ),
            ),
          )
          .toList(),
    );
  }
}
