import 'story.dart';

class Storybrain {
  int _count=0;

  List<Story> _storyData = [
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.',
        branch1: 2,
        branch2: 1),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.',
        branch1: 2,
        branch2: 3),
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.',
        branch1: 5,
        branch2: 4),
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: '',
        branch1: 0,
        branch2: 0),
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: '',
        branch1: 0,
        branch2: 0),
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '',
        branch1: 0,
        branch2: 0)
  ];

  String getstory(){
    return _storyData[_count].storyTitle;
  }

  String getchoice1(){

    return _storyData[_count].choice1;

  }

  String getchoice2(){
    return _storyData[_count].choice2;
  }

  void nextstory(int opp){
    if(opp==1){
      _count=_storyData[_count].branch1;
    }
    else if(opp==2){
      _count=_storyData[_count].branch2;
    }
  }

  bool mark(){
    if(_count==0 || _count ==1 || _count==2){
      return true;
     }
    return false;
  }


}