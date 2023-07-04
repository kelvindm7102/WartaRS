import 'package:flutter/material.dart';
import 'package:wartars/comment.dart';

class DetailBerita extends StatefulWidget {
  final dynamic detail;

  const DetailBerita({Key? key, required this.detail}) : super(key: key);

  @override
  _DetailBeritaState createState() => _DetailBeritaState();
}

class _DetailBeritaState extends State<DetailBerita> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/headLogo.png"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.detail['thumb']),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.detail['title'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Adam Aditya", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                              Text("data")
                            ],
                          )
                        ],
                      ),
                      Text(widget.detail['date']),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                isLiked ? Icons.favorite : Icons.favorite_border,
                                color: isLiked ? Colors.red : null,
                              ),
                              onPressed: toggleLike,
                            ),
                            const Text("109k")
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.comment_outlined),
                              onPressed: (){
                                showModalBottomSheet(
                                  context: context, 
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 550,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children:[
                                          const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            child: Text('Komentar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(28),
                                                  borderSide: BorderSide(width: 2, color: Colors.grey.shade300),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(28),
                                                  borderSide: const BorderSide(width: 2, color: Colors.black)
                                                ),
                                                hintText: 'Ketik komentar disini',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal:16.0),
                                            child: SizedBox(
                                              height: 350, 
                                              child: ListView(
                                                children: const [
                                                  Comment(
                                                    nama: "Tania",
                                                    date: "12:33 - 16 Januari 2003",
                                                  ),
                                                  Comment(
                                                    nama: "Tania",
                                                    date: "12:33 - 16 Januari 2003",
                                                  ),
                                                  Comment(
                                                    nama: "Tania",
                                                    date: "12:33 - 16 Januari 2003",
                                                  ),
                                                  Comment(
                                                    nama: "Tania",
                                                    date: "12:33 - 16 Januari 2003",
                                                  ),
                                                  Comment(
                                                    nama: "Tania",
                                                    date: "12:33 - 16 Januari 2003",
                                                  ),
                                                  Comment(
                                                    nama: "Tania",
                                                    date: "12:33 - 16 Januari 2003",
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            const Text("109k")
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined),),
                            const Text("Share")
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(widget.detail['content']),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
