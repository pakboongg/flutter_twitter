import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: true,
      time: "10s",
      name: '@pakboong_',
      avatar_url:
          'https://scontent.fbkk26-1.fna.fbcdn.net/v/t39.30808-6/315329802_3395149087373675_3502181794938231443_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=8GavOfiOqGQAX_heWJE&_nc_ht=scontent.fbkk26-1.fna&oh=00_AfBsYEIKES04I7aJiyyYuUSZRv_6HjeHX8Nr6XbZlYeA3Q&oe=6386888C',
      postText: ' สวัสดี เราชื่อผักบุ้งนะ ^^ ',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: false,
      time: "11s",
      name: '@pakboong_',
      avatar_url: '',
      postText:
          'ปัจุบันเราเป็นนักศึกษาอยู่ที่ มหาวิทยาลัยกรุงเทพ คณะวิศวะกรรมศาสตร์ สาขาวิศวกรรมมัลติมีเดียและเอนเตอร์เทรนเมนต์ ชั้นปีที่ 4',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: true,
      time: "12s",
      name: '@pakboong_',
      avatar_url:
          'https://scontent.fbkk26-1.fna.fbcdn.net/v/t39.30808-6/317248799_3406683856220198_5839969723953774425_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=K_0KtbSNZ6MAX8AK8Zw&tn=QFnktEW7Xe2-hWCR&_nc_ht=scontent.fbkk26-1.fna&oh=00_AfDbYlBdNW4n7RZCwlutj846ZeYtnlEcvFuaqE3z3le0gA&oe=63869EA5',
      postText:
          'อันนี้เป็น UI Demo ที่เราออกแบบคร่าวๆไว้สำหรับการทำแอปพิเคชั่น',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: false,
      time: "13s",
      name: '@pakboong_',
      avatar_url: '',
      postText:
          'เพื่อนๆ ชอบทำงาน 3D กันไหมคะ? ส่วนเราชอบมากๆ เดี๋ยวมีเอามาโชว์เพื่อนๆด้วยนะ',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: true,
      time: "14s",
      name: '@pakboong_',
      avatar_url:
          'https://scontent.fbkk26-1.fna.fbcdn.net/v/t39.30808-6/317094150_3406686402886610_7538918764234541147_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_ohc=AARVD4hNOxkAX9egiXS&tn=QFnktEW7Xe2-hWCR&_nc_ht=scontent.fbkk26-1.fna&oh=00_AfC6gTHgwzKBZKs_RL1JKZ2u_y8DAOcKL8uQFluaXJRWyw&oe=6386F600',
      postText:
          'อันนี้เป็นผลงานการปั้น 3D จากโปรแกรม MAYA ตอนที่เราเรียนอยู่ปี 2 ^^',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: false,
      time: "15s",
      name: '@pakboong_',
      avatar_url: '',
      postText:
          'วันนี้อาจารย์เนท สอนทำเครื่องคิดเลขด้วยแหละเพื่อนๆ เดี๋ยวเรามาลงให้ดูนะ',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: true,
      time: "16s",
      name: '@pakboong_',
      avatar_url:
          'https://scontent.fbkk26-1.fna.fbcdn.net/v/t39.30808-6/316543289_3406696426218941_8745900222002910907_n.jpg?stp=cp6_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=MVoqx1cEoz0AX_LE06f&_nc_ht=scontent.fbkk26-1.fna&oh=00_AfCTZ5YqokNIWShYQt8yFBEA0W8L4rBOynORfH0Q-cTf3w&oe=63869FA4',
      postText: 'ทำเครื่องคิดเลขด้วยตัวเองครั้งแรกเลย อาจารย์เนทเป็นคนสอน 555',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: false,
      time: "17s",
      name: '@pakboong_',
      avatar_url: '',
      postText:
          'มีเพื่อนๆคนไหน ทำ UI เจ๋งๆบ้างคะ อยากให้มาสอนเพิ่มเติม เราอยากเพิ่มทักษะ 555 ^^',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: true,
      time: "18s",
      name: '@pakboong_',
      avatar_url:
          'https://i.pinimg.com/564x/90/ca/f6/90caf6fc7645122ee2470f2a4497f40f.jpg',
      postText:
          'วันนี้เรามีของ NCT DREAM มาแนะนำ เก็บไว้ฟังตอนเหนื่อยๆ ^^ เนื้อหาเพลงดีมากๆ โดยเฉพาะท่อนนี้ "같은 시간 같은자리 같은 공간 속 밝혀줘 어둠 속 starlight 너로 인해 나의 하나뿐인 별자리가 완성되어가길 바라" ซึ่งมันแปลว่า ในช่วงเวลาเดียวกัน พื้นที่เดียวกัน และสถานที่เดียวกัน แสงของดวงดาวที่คอยส่องสว่างท่ามกลางความมืดมิด ผมหวังว่าดวงดาวดวงเดียวของผมนั้น      จะถูกเติมเต็มจนสมบูรณ์แบบได้เพราะคุณ <3',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
    Tweet(
      state: false,
      time: "19s",
      name: '@pakboong_',
      avatar_url: '',
      postText:
          'อยากรู้ว่า ทุกคนอยากเล่นเกมที่เป็นสถานการ์ณจำลองที่เกี่ยวกับการฝึกทักษะภาษาอังกฤษไหมคะ? พอดีเรากำลังทำโปรเจ็คอยู่      ถ้าทำเสร็จแล้วอยากให้คนที่สนใจลองดูอะ :) ',
      avatar_pro:
          'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/1e/c5/9c/1ec59cc84eb65861fda0931ef54ac694.jpg'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Home",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
