import 'package:flutter/material.dart';
import 'widgets1079/item_doctor.dart';

class PanelPantalla1079 extends StatelessWidget {
  const PanelPantalla1079({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0c0b0b),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/HiramJJG/img_IOS/main/Icon%20innova.jpg",
              ),
            ),
          ),
        ],
        title: const Text(
          'Innova Jurado1079',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(9, 5),
                  color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Que quieres ver",
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.brown),
              ),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/HiramJJG/img_IOS/main/innovassporttt.jpg"))),
          ),
          ListTile(
            title: const Text("Top Productos"),
            titleTextStyle: Theme.of(context).textTheme.headline6,
            trailing: const Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: const EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [
              for (int i = 1; i <= 10; i++) const Itemdoctor(),
            ],
          )),
        ],
      ),
    );
  }
}
