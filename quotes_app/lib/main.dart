//import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List Quotes = [
    {
      "Line1":
          "The future belongs to those who believe in the beauty of their dreams.",
      "Line2": "Eleanor Roosevelt"
    },
    {
      "Line1": "The way to get started is to quit talking and begin doing.",
      "Line2": "Walt Disney"
    },
    {
      "Line1":
          "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
      "Line2": "Oprah Winfrey"
    },
    {
      "Line1":
          "You may say I'm a dreamer, but I'm not the only one. I hope someday you'll join us. And the world will live as one.",
      "Line2": "John Lennon"
    },
    
    {
      "Line1":"You must be the change you wish to see in the world.",
      "Line2":"Mahatma Gandhi" 
    },
    {
      "Line1":"The only thing we have to fear is fear itself.",
      "Line2":"Franklin D. Roosevelt" 
    },
    {
      "Line1":"Do one thing every day that scares you.",
      "Line2":"Eleanor Roosevelt" 
    },
    {
      "Line1":"Well done is better than well said.",
      "Line2":"Benjamin Franklin" 
    },
    {
      "Line1":"The best and most beautiful things in the world cannot be seen or even touched they must be felt with the heart.",
      "Line2":"Helen Keller"
    },
    {
      "Line1":"Be yourself; everyone else is already taken.",
      "Line2":"Oscar Wilde" 
    },
    {
      "Line1":"You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose.",
      "Line2":"Dr. Seuss" 
    },
    {
      "Line1":"Many of life's failures are people who did not realize how close they were to success when they gave up.",
      "Line2":"Thomas A. Edison" 
    },
    {
      "Line1":"In the end, it's not the years in your life that count. It's the life in your years.",
      "Line2":"Abraham Lincoln"
    },
    {
      "Line1":"You will face many defeats in life, but never let yourself be defeated.",
      "Line2":"Maya Angelou"
    },
    {
      "Line1":"Life is a long lesson in humility",
      "Line2":"James M. Barrie"
    },
    {
      "Line1":"In three words I can sum up everything I've learned about life: it goes on.",
      "Line2":"Robert Frost" 
    },
    {
      "Line1":"If you want to make your dreams come true, the first thing you have to do is wake up.",
      "Line2":"J.M. Power",
    },
    {
      "Line1":"I find that the harder I work, the more luck I seem to have.",
      "Line2":"Thomas Jefferson",
    },
    {
      "Line1":"There are no secrets to success. It is the result of preparation, hard work, and learning from failure.",
      "Line2":"Colin Powell"
    },
    {
      "Line1":"The road to success and the road to failure are almost exactly the same.",
      "Line2":"Colin R. Davis"
    },
    {
      "Line1":"Success is walking from failure to failure with no loss of enthusiasm.",
      "Line2":"Winston Churchill"
    },
    {
      "Line1":"Before anything else, preparation is the key to success.",
      "Line2":"Alexander Graham Bell"
    },
    {
      "Line1":"I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.",
      "Line2":"Maya Angelou"
    },
    {
      "Line1":"The question isn't who is going to let me; it's who is going to stop me.",
      "Line2":"Ayn Rand"
    },
    {
      "Line1":"Winning isn't everything, but wanting to win is",
      "Line2":"Vince Lombardi"
    },
    {
      "Line1":"You become what you believe.",
      "Line2":"Oprah Winfrey"
    },
    {
      "Line1":"The most difficult thing is the decision to act; the rest is merely tenacity.",
      "Line2":"Amelia Earhart" 
    }
  ];
  int index = 0;

  void changeindex(String direction) {
    if (direction == "right") {
      setState(() {
        if (index == Quotes.length - 1)
          index = 0;
        else
          index++;
      });
    } else if (direction == "left") {
      setState(() {
        if (index == 0)
          index = Quotes.length - 1;
        else
          index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assest/images/Wallpaper.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 80,),
            Text("\"The Most Famous Quotes\"",style:TextStyle(color: Colors.black,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.bold,
                      fontSize: 25 ,)
                      ),
            SizedBox(height: 220,),
            Container(
                //  color: Colors.amber,
                padding: EdgeInsets.all(30),
                child: Text(
                  Quotes[index]["Line1"],
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  Quotes[index]["Line2"],
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeindex("left");
                  },
                  child: Icon(
                    Icons.arrow_left,
                    size: 50,
                    color: Colors.grey[500],
                  ),
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    changeindex("right");
                  },
                  child: Icon(
                    Icons.arrow_right,
                    size: 50,
                    color: Colors.grey[500],
                  ),
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
