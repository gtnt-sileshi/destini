import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyTitle:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choice1: 'I\'ll hop in. Thanks for the help!',
      choice2: 'Better ask him if he\'s a murderer first.',
    ),
    Story(
      storyTitle: 'He nods slowly, unphased by the question.',
      choice1: 'At least he\'s honest. I\'ll climb in.',
      choice2: 'Wait, I know how to change a tire.',
    ),
    Story(
      storyTitle:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1: 'I love Elton John! Hand him the cassette tape.',
      choice2: 'It\'s him or me! You take the knife and stab him.',
    ),
    Story(
      storyTitle:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyTitle:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyTitle:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyTitle:
          'You step out of the car and grab the jack from your trunk. As you’re about to loosen the bolts, a distant howl echoes through the trees.',
      choice1: 'Ignore it and fix the tire.',
      choice2: 'Investigate the sound.',
    ),
    Story(
      storyTitle:
          'You follow the noise deep into the woods. A shadow darts between the trees. Suddenly, a pair of glowing eyes lock onto yours.',
      choice1: 'Run back to the car!',
      choice2: 'Stand your ground.',
    ),
    Story(
      storyTitle:
          'It’s just a coyote. It whimpers and limps away. You realize it’s hurt.',
      choice1: 'Help the coyote.',
      choice2: 'Let nature take its course.',
    ),
    Story(
      storyTitle:
          'You help the coyote and it leads you to a hidden cave. Inside are supplies and a working satellite phone. You call for help and are rescued!',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyTitle:
          'You get eaten by a bear. Nature is brutal sometimes.',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyTitle:
          'You fix your tire just in time. Another car stops, but it’s a police patrol! They offer to escort you to town.',
      choice1: 'Accept the escort.',
      choice2: 'Refuse and keep driving.',
    ),
    Story(
      storyTitle:
          'The officer turns out to be a fan of Elton John too. You ride safely to town singing together.',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyTitle:
          'A tree falls onto your car as you drive alone through the forest. Bad luck.',
      choice1: 'Restart',
      choice2: '',
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    switch (_storyNumber) {
      case 0:
        _storyNumber = (choiceNumber == 1) ? 2 : 1;
        break;
      case 1:
        _storyNumber = (choiceNumber == 1) ? 2 : 6;
        break;
      case 2:
        _storyNumber = (choiceNumber == 1) ? 5 : 4;
        break;
      case 6:
        _storyNumber = (choiceNumber == 1) ? 11 : 7;
        break;
      case 7:
        _storyNumber = (choiceNumber == 1) ? 6 : 8;
        break;
      case 8:
        _storyNumber = (choiceNumber == 1) ? 9 : 10;
        break;
      case 11:
        _storyNumber = (choiceNumber == 1) ? 12 : 13;
        break;
      default:
        restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber <= 2 || _storyNumber == 6 || _storyNumber == 7 || _storyNumber == 8 || _storyNumber == 11;
  }
}
