package;

import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.FlxG;

class ControllableHero extends FlxSprite
{
	var directionalAccel = new Array();

	override public function new(x, y)
	{
		super(x, y);
		maxVelocity = FlxPoint.get(200, 200);
		directionalAccel.resize(4);
		makeGraphic(15, 15, FlxColor.WHITE);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if (FlxG.keys.anyPressed([UP, W]))
		{
			directionalAccel[0] = 150;
		}
		else
		{
			directionalAccel[0] = 0;
		}

		if (FlxG.keys.anyPressed([LEFT, A]))
		{
			directionalAccel[1] = 150;
		}
		else
		{
			directionalAccel[1] = 0;
		}

		if (FlxG.keys.anyPressed([DOWN, S]))
		{
			directionalAccel[2] = 150;
		}
		else
		{
			directionalAccel[2] = 0;
		}

		if (FlxG.keys.anyPressed([RIGHT, D]))
		{
			directionalAccel[3] = 150;
		}
		else
		{
			directionalAccel[3] = 0;
		}

		acceleration.y = (directionalAccel[2] - directionalAccel[0]);
		acceleration.x = (directionalAccel[3] - directionalAccel[1]);

		if (velocity.x > 0)
		{
			drag.x = 1.5 * velocity.x;
		}
		else
		{
			drag.x = -1.5 * velocity.x;
		}
		if (velocity.y > 0)
		{
			drag.y = 1.5 * velocity.y;
		}
		else
		{
			drag.y = -1.5 * velocity.y;
		}
	}
}
