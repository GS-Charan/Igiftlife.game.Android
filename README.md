# Igiftlife.game.Android
A game created for Igiftlife NGO for organ donation awareness, the game was created using GODOT engine and has multiple routes and endings to explore with lots of information about organ donation with multiple fun mini games

Introduction: 

       The scope of this sop is limited to working of the coding of staysafe game developed for organ donation under Igiftlife NGO.
       
Description :

Godot is the game engine used for this project, it is a cross platform free and open source game engine released under MIT engine
Godot supports a variety of programming languages for making games, including the integrated language GDScript, C++ and C#. Additionally, the engine includes GDNative, a facility for creating bindings with other languages. Officially-supported GDNative languages include C and C++.

Godot has its own built-in scripting language, GDScript, a high-level, dynamically typed programming language which is syntactically like Python. Unlike Python, GDScript is optimized for Godot's scene-based architecture and can specify strict typing of variables.

The game features of more than 50 original scenes to spread organ donation awarness also urging us to stay safe while driving. The dialog system in it a constructed using dialogic plugin using which we can convey seamless and immersive conversation between the characters.

The maps are designed and graphics are drawn within the game engine with collision mechanics in place, the ambulance/bike is codded with realistic acceleration, drag, friction, drift and momentum, the obstacles also have realistic collision physics.

Different scenario plays out according to the players decision of route, in most cases one of the mini game is defibrillator that is coded so that we would succeed in saving the patient if we can click him more than the required amount to save him.



There are some minor questions to bring awareness on this topic and the game will only proceed further when answered right

The organ drag and drop game gives you a scenario and in which we need to choose if the certain organ can be donated or not, the scene changes if chosen right and you go back to the 1st question if answered wrong.

The route should end after this mostly but there are other routes to be experienced so you can either start over or else try again from the ambulance area for other routes with different scenario and experiences

Working:

    1)Game files

    •	The assets from all the png used and audio is within the assets folder in the main game folder

    •	All the main scenes and its corresponding GDscript are withing the main main game folder itself

    •	Dialogic and scene manager are two plugins used which are stored in the addon folder in the main game folder

    •	Dialogic character and conversation files are stored in the dialogic folder in main game folder in form of 


2)Scenes

    •	Menu is the main scene which starts at main menu of the game

    •	Bike tscn is the main scene with map for the bike game and it calls bike 123 tscn which is the bike vehicle

    •	Node2D scene is the one with ambulance and its map which has 4 routes and it calls car.tscn which is scene with ambulance mechanics

    •	Defeb1 to defeb 4 are the scenes for the defibrilator game for each of the 4 routes

    •	R&D1-4 tscn are the 4 scenes for rekha(wife) and doctor for all 4 routes

    •	For all the organs in drag and drop game liveH is the heart,8wayB is the bone,8wayE is for eye and 8wayP is for pancreas, these are the scenes that are called in main scene in every route

    •	Hf1-4 for heart failure,Cad1-4 for cadaver donation,Live1-4 for live donation,BF1-4 for brain stem death donation are the 4 scenes each for the organ drag drop game for each of the all routes

    •	MobilecontrolsO canvas scene is used for the mobile touch buttons

    •	End tscn is for the ending screen of the game


3)Gdscript(code)

    •	SceneManager.change_scene('') and get_tree().change_scene("") are the most used code line to change to next scenes, putting the next scene name in the inverted commas switches it to the next scene

    •	All the code is linked to the main node of a scene it accompanies and works on so navigating the codes should not be a issue

    •	_on_Button_pressed(): functions handle all the button presses 

    •	Car.gd handles all the physics speed traction and acceleration drag engine speed etc to make the bike/ambulance either faster or slower we can do that by changing the value of var engine_power, similarly any values of above mentioned can be changed for testing

    •	Function calculate_steering applies the logic of steering along with its sensitivity with respect to our defined wheelbase in the same script

    •	get_input maps the WASD/arrow keys as input to control vehicle/organs and maps it to touch button in case of mobile, this function is present in Car.gd for both the bike and ambulance and 8way.gd for the movement of the organs

    •	var dialog = Dialogic.start("") add_child(dialog) is used for the dialogic dialog system, the conversations are created in the dialogic

    •	On_body_entered() function is used on Area2d nodes whict colisionshape2d, using this scene is changed when an Kinamaticbody2d collides with it, the node is linked with its gdscipt and using node signal options which can be programmed respectivly  	

    •	In the defibrilator game the time given to the player is controled by time.set_wait_time() and function timertimeout by changing display value

    •	InputEventMouseButton and get_rect().has_point(to_local(event.position)) is used withing the gdscript of sanjeev sprite and used to count the number of clicks 

    •	AudioStreamPlayer is used to add music to every scene, which can be added,removed or changed if needed


4)Dialogs

    •	Dialogic is used to manage conversation between characters and it stores json files in the same name under the game folder

    •	The character tab under dialogic has the name and png of the characters

    •	The timeslines are the conversations created and stored as json files and later called in scenes using dialogic.start() to activate the conversation

    •	D&N1-4 and R&D1-4 are doctor and nurse and rekha and doctor  conversations for all 4 routes, introduction is the timeline used for the introduction to story by narrator
