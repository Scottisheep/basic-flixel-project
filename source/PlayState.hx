package;

import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
import ScreensaverHero;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var helloWorld = new FlxText(240, 150, 0, "Hello world!", 15);
		var textColor = new FlxColor(0xaa3d7b);

		var myScreensavers = new Array();

		var numScreensavers:Int = 10;
		for (i in 0...numScreensavers)
		{
			myScreensavers.push(new ScreensaverHero(320, 240));
			add(myScreensavers[i]);
		}

		helloWorld.setFormat("", 30, textColor);

		add(helloWorld);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
