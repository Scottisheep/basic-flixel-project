package;

import flixel.util.FlxColor;
import flixel.text.FlxText;
import Hero;
import flixel.FlxState;
import haxe.display.Protocol.HaxeResponseErrorData;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var myHero = new Hero(300, 300);
		var helloWorld = new FlxText(240, 150, 0, "Hello world!", 15);
		var textColor = new FlxColor(0xaa3d7b);

		helloWorld.setFormat("", 30, textColor);

		add(myHero);
		add(helloWorld);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
