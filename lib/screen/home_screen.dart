import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pop1122/interface/my_slider.dart';
import 'package:pop1122/screen/about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MySlider> banners = [
    MySlider(
      id: 1,
      title: "หน้าหี",
      image:
          "data:image/jpeg;base64,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",
    ),
    MySlider(
      id: 1,
      title: "Dog",
      image:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/golden-retriever-dog-royalty-free-image-505534037-1565105327.jpg",
    ),
    MySlider(
      id: 1,
      title: "Parry Dog",
      image:
          "https://images.takeshape.io/86ce9525-f5f2-4e97-81ba-54e8ce933da7/dev/aa6bf2d3-4afd-416e-afda-dd5dc59e5b12/Black-tailed%20prairie%20dog%20dreamstime%20(1).jpg?auto=compress%2Cformat&h=630&w=1200/",
    ),
  ];

  String name = "Parinya Yartsomboon";
  int age = 12;
  bool lookingGood = true;
  List<String> myDognames = ["joey", "jakson", "male", "james"];
  Map<String, dynamic> user = {
    "id": 1,
    "name": "คนชอบหี",
    "sex": "male",
    "married": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.network(
                    banners[index].image,
                    fit: BoxFit.fill,
                  );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                itemCount: banners.length,
                pagination: SwiperPagination(),
                control: SwiperControl(),
              ),
            ),
            Text("Hello $name"),
            Text("My age $age years old"),
            Text("My looking good is ${lookingGood ? "yes" : "no"}"),
            Text("My dog name is ${myDognames[1]}"),
            // ...myDognames.map((e) => Text(e)).toList(),
            Text("My friend  name is ${user["name"]}"),
            Text("She is ${user["married"] ? "married" : "no married"}"),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutScreen();
                    },
                  ),
                )
              },
              child: Text("Go to about screen"),
            ),
          ],
        ),
      ),
    );
  }
}
