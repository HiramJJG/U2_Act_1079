import 'package:flutter/material.dart';

class Itemdoctor extends StatelessWidget {
  const Itemdoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(.1),
              spreadRadius: 5,
              blurRadius: 5)
        ],
      ),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/HiramJJG/img_IOS/main/innnnov.jpg"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Nuestros Productos",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) =>
                    const Icon(Icons.star, color: Colors.amber, size: 15)),
          )
        ],
      ),
    );
  }
}
