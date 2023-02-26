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

	override public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		moves = true;
		makeGraphic(20, 20);
		velocity = new FlxPoint(rand.float(-200, 200), rand.float(-200, 200));
		startingPos.x = x;
		startingPos.y = y;
		solid = true;
		elasticity = 3;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (y < 240)
		{
			cyan = 1 - (y / 240);
			yellow = 0;
		}
		else
		{
			cyan = 0;
			yellow = (y / 240) - 1;
		}

		if (x < 240)
		{
			magenta = 1 - (x / 240);
			black = 0;
		}
		else
		{
			magenta = 0;
			black = (x / 240) - 1;
		}

		color = FlxColor.fromCMYK(cyan, magenta, yellow, black);
	}
}
