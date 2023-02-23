package;

import js.html.WheelEventInit;
import flixel.FlxSprite;

class ScreensaverHero extends FlxSprite
{
	override public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		makeGraphic(20, 40);
	}
}
