This program allows the user to input the pitches that their pitcher has and randomly selects from that list and randomly selects a location and suggests a pitch for that user to throw when playing a baseball game.

### Phase 01
 - This phase is essentially done. I wanted to have a working console version of the application to be able to test it in a real game. It seems to work mostly fine. The console versions flaws are that when you change pitchers, you have to scroll to the top of the page to look at the list of pitches and it allows you to select more than 5 pitches. They are addressed below.
	- Scroll to the top of the page
		- This will not be an issue on a mobile/pc app because it will be handled graphically with a dialog. 
		- Ideally, I would like to connect to the MLB The Show API and be able to scrape all of the pitchers from there and just assign them to a user team. Maybe that is a feature that comes later though. 
	- More than 5 pitches
		- Again, this is going to be handled by a graphical dialog and will not be possible in that realm. Also, connecting to the API and downloading pitcher information will solve this too. 
    - To run the application in its current state, Clone the repository and navigate to the root directory and (assuming dart is installed) run `dart randomPitchSelector.dart`

### Phase 02.
- Create the graphical screens for each of the possible screens of the app. Make both vertical and horizontal screens so that the user can use their phone in landscape or portrait mode and so that it will look consistent on the web and other devices. 
- Add buttons to perform the actions of the menus and other functions that are available on the console application.
- Connect the buttons to the appropriate functions.
- Create a "how to use me" page and allow the user to read how this application is designed to work.
- Test on physical devices to see if it works properly and that all screens can be navigated. 

### Phase 03.
- Create a user team screen that will allow the user to create their pitching staff so that picking pitchers and, subsequently their pitches, is easier and faster. 
- Allow the user to use that team and pick from their list of pitchers during the game.
	- The user's team and the team's information (i.e. pitch mix) should be saved locally.
- Import all of the selected pitchers pitches into the application so that the user doesn't have to.
- Allow the option to edit players after they have been added to the team in case of mistakes. 
- Add a feedback button that would allow user's to give feedback on the application and report any bugs that may exist.
- Make a "game end" button so that the user can specify the end of a game.

### Phase 04.
- Implement a "result" button that contains a short list of results that can happen during an at-bat. Allow the user to pick one after every pitch. 
	- Remember the number of outs and ask the user if the game is over after 27 outs to end the game. 
- Log those results in a file called "game-summary" so that it can be used to taylor the pitch selections to the community results. 
- Adjust the pitch selection and location selection functions to choose more carefully based on the results logged. 
- Ideally this would adapt to the trends of the players that play the game and would change when they start "catching on" to the pitch sequences.
- Create a "stats" screen that would show simple stats like: best pitch, most used pitches, worst pitches, best pitchers, worst pitchers, etc.

### Phase 05.
- Create a database that would allow, if enabled by the user, data sharing so that a larger sample size could be given of pitches and results and subsequently make the program a reflection of the entire community instead of just a single user's experience.
- Allow for the data to be "reset" to just a single user's experience. This is useful because of the way that MLB The Show ranks users. What may work in Hall of Fame difficulty, may not work in Rookie etc. 
- Address potential concerns about privacy and data sharing—include clear toggles for opting in or out, and explain how the data will be used.
- Consider using cloud solutions like Firebase for real-time data sharing and management.

### Phase 06. 
- Check to see if the MLB The Show API is able to be used to import all of the available pitchers in the game at any given time. 
- If yes, allow the user to import them how ever often they'd like and choose from a list of pitchers that exist. 
- Implement a search that will allow players to quickly find the players they are looking for. 
	- The search should show the players name and their rating, and, if possible, a picture of the specific card. 
- If feasible, include a caching mechanism to save imported data locally, reducing the need to re-fetch data frequently.
