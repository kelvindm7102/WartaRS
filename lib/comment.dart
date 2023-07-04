import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String nama;
  final String date;
  const Comment({super.key, required this.nama, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                Text(date)
              ],
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              "Beritanya bermanfaat banget, aku suka, berbobot sekali...."),
        )
      ],
    );
  }
}
