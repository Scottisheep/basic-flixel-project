package;

import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
import ScreensaverHero;
import ControllableHero;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var movableHero = new ControllableHero(320, 240);

		var helloWorld = new FlxText(240, 150, 0, "Hello world!", 15);
		var textColor = new FlxColor(0xaa3d7b);

		var myScreensavers = new Array();

		var numScreensavers:Int = 20;
		for (i in 0...numScreensavers)
		{
			myScreensavers.push(new ScreensaverHero(320, 240));
			add(myScreensavers[i]);
		}

		helloWorld.setFormat("", 30, textColor);

		add(helloWorld);
		add(movableHero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
