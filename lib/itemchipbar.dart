import 'package:flutter/material.dart';
import 'package:wartars/home/tech.dart';
import 'package:wartars/home/terkini.dart';
import 'package:wartars/home/trending.dart';
import 'package:wartars/home/viral.dart';

class ItemChipBar {
  final int id;
  final String title;
  final Widget bodyWidget;

  ItemChipBar(this.id, this.title, this.bodyWidget);
}

final chipBarList = <ItemChipBar>[
  ItemChipBar(0, 'Terkini', const Terkini()),
  ItemChipBar(1, 'Trending', const Trending()),
  ItemChipBar(2, 'Viral', const Viral()),
  ItemChipBar(3, 'Teknologi', const Tech()),
];