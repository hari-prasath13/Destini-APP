import 'package:flutter/material.dart';
import 'story.dart';
import 'storybrain.dart';



void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}



class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

Storybrain storyb=new Storybrain();

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Expanded(
                flex: 12,
                child: Center(
                  child: Text(

                    storyb.getstory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    setState(() {
                      storyb.nextstory(1);
                    });

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Background color
                  ),
                  child: Text(

                    storyb.getchoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(

                  child: storyb.mark()?ElevatedButton(
                    onPressed: () {
                      //Choice 2 made by user.
                     setState(() {
                       storyb.nextstory(2);
                     });

                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(

                      storyb.getchoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ):SizedBox.fromSize()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

