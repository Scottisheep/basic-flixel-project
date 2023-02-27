package;

import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.FlxG;

class ControllableHero extends FlxSprite
{
	var directionalAccel = new Array();
	var accelOnInput:Int = 150;
	var decelMultiplier:Float = 1.5;
	var playerMaxVel = 200;

	static var playerWidth:Int = 15;
	static var playerHeight:Int = 15;
	static var playerColor:FlxColor = 0xFFFFFFFF;

	override public function new(x, y)
	{
		super(x, y);
		maxVelocity = FlxPoint.get(playerMaxVel, playerMaxVel);
		directionalAccel.resize(4);
		makeGraphic(playerWidth, playerHeight, playerColor);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if (FlxG.keys.anyPressed([UP, W]))
		{
			directionalAccel[0] = accelOnInput;
		}
		else
		{
			directionalAccel[0] = 0;
		}

		if (FlxG.keys.anyPressed([LEFT, A]))
		{
			directionalAccel[1] = accelOnInput;
		}
		else
		{
			directionalAccel[1] = 0;
		}

		if (FlxG.keys.anyPressed([DOWN, S]))
		{
			directionalAccel[2] = accelOnInput;
		}
		else
		{
			directionalAccel[2] = 0;
		}

		if (FlxG.keys.anyPressed([RIGHT, D]))
		{
			directionalAccel[3] = accelOnInput;
		}
		else
		{
			directionalAccel[3] = 0;
		}

		acceleration.y = (directionalAccel[2] - directionalAccel[0]);
		acceleration.x = (directionalAccel[3] - directionalAccel[1]);

		if (velocity.x > 0)
		{
			drag.x = decelMultiplier * velocity.x;
		}
		else
		{
			drag.x = -decelMultiplier * velocity.x;
		}
		if (velocity.y > 0)
		{
			drag.y = decelMultiplier * velocity.y;
		}
		else
		{
			drag.y = -decelMultiplier * velocity.y;
		}
	}
}
