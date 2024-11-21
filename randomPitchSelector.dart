import 'dart:math';
import 'dart:io';

void main() {
  // Setup pitches, locations, and strikeZoneStatus into arrays so that they can be selected from.
  var pitches = [
    '4-seam fastball',
    'slider',
    'cutter',
    'splitter',
    'sinker',
    '2-seam fastball',
    'slurve',
    'sweeping curve',
    '12-6 curve',
    'screwball',
    'curveball',
    'circle change',
    'palmball',
    'running fastball',
    'changeup',
    'vulcan change',
    'knuckleball',
    'forkball'
  ];
  var locations = [
    'middle-middle',
    'middle-away',
    'middle-in',
    'high-away',
    'high-middle',
    'high-in',
    'low-away',
    'low-middle',
    'low-in'
  ];
  var strikeZoneStatus = ['in-the-zone', 'out-of-the-zone'];

  // Have a user pitcher array. The user should be able to add their pitches to the new list.
  var userPitcher = [];
  var userPitchSelection = -1;
  bool startGame = true;

  print('It is time to select your pitches.');
  print('Here is a list of available pitches: ');

  for (var i = 0; i < pitches.length; i++) {
    print(i.toString() + '. ' + pitches[i]);
  }
  print('18. FINISHED ADDING PITCHES');

// Inital 'add pitches' dialog
  while (userPitchSelection != 18) {
    userPitchSelection = addPitches(pitches, userPitcher);

    if (userPitchSelection == 18) {
      break;
    }

    // Check to see if the user has reached the maximum number of pitches
    // Get out of the function when the number of pitches reaches 5
    if (userPitcher.length > 4) {
      print('That is all you can add');
    }
  }

  // Display the current pitchers pitches to the user
  print('\n\nHere are your pitches: ');
  for (var i = 0; i < userPitcher.length; i++) {
    print(userPitcher[i]);
  }

  // Game loop
  var userMenu;
  var pitchCounter = 0;

  print('\n\n');

  while (startGame == true) {
    print('What would you like to do?: ');
    print('******** MENU ********');
    print('0. Throw a pitch');
    print('1. Change pitcher');
    print('2. End game');
    print('3. Exit the program');
    userMenu = int.parse(stdin.readLineSync()!);

    if (userMenu == 0) {
      // Generate a random pitch, random location, and strikeZoneStatus value.
      var randomPitch = Random().nextInt(userPitcher.length);
      var randomLocation = Random().nextInt(locations.length);
      var randomStrikeZoneStatus = Random().nextInt(strikeZoneStatus.length);

      // Increment the pitch counter.
      pitchCounter++;

      // Tell the user where to throw the pitch.
      if (randomLocation == 0) {
        print('\nYou should throw a ' +
            userPitcher[randomPitch] +
            ' ' +
            'middle-middle');
      } else {
        print('\nYou should throw a ' +
            userPitcher[randomPitch] +
            ' ' +
            strikeZoneStatus[randomStrikeZoneStatus] +
            ' and ' +
            locations[randomLocation]);
      }

      print('\nPitch counter: ' + pitchCounter.toString());
    } else if (userMenu == 1) {
      userPitcher.clear();
      userPitchSelection = -1;

      // Reset the pitch counter for a new pitcher.
      pitchCounter = 0;

      while (userPitchSelection != 18) {
        userPitchSelection = addPitches(pitches, userPitcher);

        if (userPitchSelection == 18) {
          break;
        }

        // Check to see if the user has reached the maximum number of pitches
        // Get out of the function when the number of pitches reaches 5
        if (userPitcher.length > 4) {
          print('That is all you can add');
        }
      }

      print('Here is your new pitch mix:');
      for (var i = 0; i < userPitcher.length; i++) {
        print(userPitcher[i]);
      }
    } else if (userMenu == 2) {
      // We are going to write to a file here eventually.
    } else if (userMenu == 3) {
      print('\n\nThanks for playing!\n\n');
      break;
    }
  }

  // Break up the mess in print statements.
  print('\n');
}

int addPitches(List defaultPitchList, List userPitcherList) {
  var userPitchSelection = -1;

  print('Add pitches (Up to five): ');
  userPitchSelection = int.parse(stdin.readLineSync()!);
  userPitchSelection.toString();

  // Convert user input to integer
  if (userPitchSelection != 18) {
    try {
      int selectedPitch = userPitchSelection;

      // Add the selected pitch to the list and tell the user that it is done.
      userPitcherList.add(defaultPitchList[selectedPitch]);
      print('You added a ' + defaultPitchList[selectedPitch]);
    } catch (e) {
      print(
          'Invalid input. Please enter a number between 0 and 17, or 18 to finish.');
    }
  }

  return userPitchSelection;
}
