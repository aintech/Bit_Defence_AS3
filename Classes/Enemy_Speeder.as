﻿package
{
	import flash.geom.Point;
	import flash.events.Event;
	
	public class Enemy_Speeder extends Enemy
	{
		override protected function init():void
		{
			super.init();
			type = "Speeder";
			HitingPoint.visible = false;
			TileNumPoint.visible = false;
			symbolsDrop = 20 * Variables.SYMBOLS_DROP_MULTIPLE;
			memoryDrop = 15;
			protectDrop = 5;
			baseSpeed = 7;
			stoppingSpeed = .7;
			
			health = baseMaxHealth = maxHealth = 700;
			shield = 0;
			speed = baseSpeed;
			systemDamage = baseSystemDamage = .2;// 4% sec
			
			baseHackChance = 10;
			hackChance = baseHackChance - ((baseHackChance * Variables.HACK_PROTECT_LEVEL) / 100);
			
			lifeBarUP 		= new Point(25, 0);
			lifeBarDOWN 	= new Point(-25, 0);
			lifeBarLEFT 	= new Point(0, 25);
			lifeBarRIGHT 	= new Point(0, -25);
			
			hitPoint = this.HitingPoint;
			graphPoint = this.GraphPoint;
			tileNumPoint = this.TileNumPoint;
			
			health += baseMaxHealth * Variables.NUM_PROTECTORS * .1;
			maxHealth += baseMaxHealth * Variables.NUM_PROTECTORS * .1;
		}
		
		override public function updateLevel():void
		{
			super.updateLevel();
			clip.filters = [blurFilter, glowFilter];
		}
	}
}