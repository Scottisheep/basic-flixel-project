package;

import flixel.util.FlxColor;
import flixel.FlxSprite;

class ControllableHero extends FlxSprite
{
	override public function new(x, y)
	{
		super(x, y);
		makeGraphic(35, 35, FlxColor.GREEN);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
