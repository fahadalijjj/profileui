import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatelessWidget {
  List categories = [
    'Photography',
    'Travel',
    'Gaming',
    'Editing',
    'Cinematography',
    'Swag',
    'Vlogging'
  ];

  List journey = [
    'Pepsi Bold Billboard',
    'Meeting with Favourite footballers',
    'Yamaha R1(Dream Bike)',
    'Marraige'
  ];

  Radius value = Radius.circular(30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000040),
      appBar: AppBar(
        backgroundColor: Color(0xff000033),
        leading: Icon(
          Icons.arrow_back,
        ),
        actions: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 14),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/junejo2.jpg'),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Irfan Junejo',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30))
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      'Content Creator',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '237',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Video',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '1 Million',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Subscriber',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Subscribe',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000040)),
                      ),
                    ),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 35,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      //margin: EdgeInsets.all(),

                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      height: 40,

                      width: 140,

                      decoration: BoxDecoration(
                          color: Color(0xff000073),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: value)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'Journey',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7, right: 15),
                    //  height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: journey.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: index == 0
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            journey[index],
                                            style: TextStyle(
                                                color: Color(0xff000040),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        CircleAvatar(
                                          radius: 3,
                                          backgroundColor: Color(0xff000040),
                                        )
                                      ],
                                    )
                                  : Container(
                                      //margin: EdgeInsets.all(),

                                      child: Text(
                                        journey[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ));
                        }),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: StaggeredGridView.countBuilder(
                              itemCount: 4,
                              crossAxisCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/junejo${index + 1}.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                              staggeredTileBuilder: (int index) =>
                                  StaggeredTile.count(
                                2,
                                index.isEven ? 3 : 2,
                              ),
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              color: Color(0xff000073)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.notifications_active,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
    boxShadow: [BoxShadow(color: Color(0xff000040),offset: Offset(0,2),blurRadius: 5,spreadRadius: 1)]
    ,

    borderRadius: BorderRadius.circular(40),
                          color: Colors.white) ,
                            child: Icon(Icons.camera_alt,color: Color(0xff000073),size: 30,),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
