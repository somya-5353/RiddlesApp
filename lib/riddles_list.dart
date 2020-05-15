class RiddlesList {
  List<Map<String, Object>> _riddlesList;

  List<Map<String, Object>> getRiddles() {
    _riddlesList = const [
      {
        'riddle': 'People buy me to eat but never eat me. What am I?',
        'answers': [
          {'text': 'Plates and cutlery', 'flag': 1},
          {'text': 'Water', 'flag': 0},
          {'text': 'Banana', 'flag': 0},
        ],
      },
      {
        'riddle': 'People buy me to eat but never eat me. What am I?',
        'answers': [
          {'text': 'Plates and cutlery', 'flag': 1},
          {'text': 'Water', 'flag': 0},
          {'text': 'Banana', 'flag': 0},
        ],
      },
      {
        'riddle': 'You go at red but stop at green. What am I?',
        'answers': [
          {'text': 'Traffic Lights', 'flag': 0},
          {'text': 'Whistle', 'flag': 0},
          {'text': 'WaterMelon', 'flag': 1},
        ],
      },
      {
        'riddle': 'The more you take, the more you leave behind. What am I?',
        'answers': [
          {'text': 'Time', 'flag': 0},
          {'text': 'Footsteps', 'flag': 1},
          {'text': 'Water', 'flag': 0},
        ],
      },
      {
        'riddle': 'Feed me and I live, give me water and I die. What am I?',
        'answers': [
          {'text': 'Cactus', 'flag': 0},
          {'text': 'Water', 'flag': 0},
          {'text': 'Fire', 'flag': 1},
        ],
      },
    ];

    return _riddlesList;
  }
}
