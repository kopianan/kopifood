import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          height: 100,
          width: double.infinity,
          // color: Colors.green,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        softWrap: true,
                        text: const TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: "1x"),
                              TextSpan(text: '   '),
                              TextSpan(
                                  text:
                                      "Nama makanan jika nama mkanannya panjang ya begini lah  kalau pake fittedbox dia jadi mengecil cuk")
                            ]),
                      ),
                    ),
                    Expanded(child: Text("TOTAL PER SATUAN HERE"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
