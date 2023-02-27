package;

import flixel.math.FlxPoint;
import flixel.math.FlxRandom;
import flixel.util.FlxColor;
import flixel.FlxSprite;

class ScreensaverHero extends FlxSprite
{
	var rand = new FlxRandom();
	var cyan:Float = 0;
	var magenta:Float = 0;
	var yellow:Float = 0;
	var black:Float = 0;
	var startingPos = new FlxPoint(0, 0);

	var maxVel = 150;
	var minVel = -150;

	static var heroWidth = 20;
	static var heroHeight = 20;

	static var screenWidth(default, never):Int = 340;
	static var screenHeight(default, never):Int = 480;

	override public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		moves = true;
		makeGraphic(heroWidth, heroHeight);
		velocity = new FlxPoint(rand.float(minVel, maxVel), rand.float(minVel, maxVel));
		startingPos.x = x;
		startingPos.y = y;
		solid = true;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (y < (screenHeight / 2))
		{
			cyan = 1 - (y / (screenHeight / 2));
			yellow = 0;
		}
		else
		{
			cyan = 0;
			yellow = (y / (screenHeight / 2)) - 1;
		}

		if (x < (screenWidth / 2))
		{
			magenta = 1 - (x / (screenWidth / 2));
			black = 0;
		}
		else
		{
			magenta = 0;
			black = (x / (screenWidth / 2)) - 1;
		}

		color = FlxColor.fromCMYK(cyan, magenta, yellow, black);
	}
}
