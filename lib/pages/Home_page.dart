import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(10),
              title: SizedBox(
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "N a t u r e",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              background: Image(
                image: AssetImage("assets/images/im_sample2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList()),
          )
        ],
      ),
    );
  }
}

List<Widget> _buildList() {
  List<Widget> items = [];
  items.add(_itemList(image: 'assets/images/im_sample.jpg',title: "s n o w"));
  items.add(_itemList(image: 'assets/images/im_sample2.jpg',title: "s e a"));
  items.add(_itemList(image: 'assets/images/im_sample.jpg',title: "s n o w "));
  items.add(_itemList(image: 'assets/images/im_sample2.jpg',title: "s e a"));
  items.add(_itemList(image: 'assets/images/im_sample.jpg',title: "s n o w "));
  items.add(_itemList(image: 'assets/images/im_sample2.jpg',title: "s e a"));

  return items;
}

Widget _itemList({image, title}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(

        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(

        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            const Icon(
              Icons.ac_unit_outlined,
              color: Colors.white,
              size: 30,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ),
    ),
  );
}
