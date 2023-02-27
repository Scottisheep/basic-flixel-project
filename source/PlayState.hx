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

		var heroesStartingX = 320;
		var heroesStartingY = 240;
		var movableHero = new ControllableHero(heroesStartingX, heroesStartingY);

		var textX = 240;
		var textY = 150;
		var textSize = 15;
		var helloWorld = new FlxText(textX, textY, 0, "Hello world!", textSize);
		var textColor = new FlxColor(0xaa3d7b);
		helloWorld.setFormat("", textSize, textColor);

		var myScreensavers = new Array();
		var numScreensavers:Int = 20;

		for (i in 0...numScreensavers)
		{
			myScreensavers.push(new ScreensaverHero(heroesStartingX, heroesStartingY));
			add(myScreensavers[i]);
		}

		add(helloWorld);
		add(movableHero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
