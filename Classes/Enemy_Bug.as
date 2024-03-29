﻿package 
{
	import flash.geom.Point;
	import flash.events.Event;
	
	public class Enemy_Bug extends Enemy
	{
		override protected function init():void
		{
			super.init();
			type = "Bug";
			HitingPoint.visible = false;
			TileNumPoint.visible = false;
			symbolsDrop = 10 * Variables.SYMBOLS_DROP_MULTIPLE;
			memoryDrop = 5;
			protectDrop = 3;
			baseSpeed = 8;
			stoppingSpeed = .8;
			
			health = baseMaxHealth = maxHealth = 300;
			shield = 0;
			speed = baseSpeed;
			systemDamage = baseSystemDamage = .1;// 2% sec
			
			baseHackChance = 4;
			hackChance = baseHackChance - ((baseHackChance * Variables.HACK_PROTECT_LEVEL) / 100);
			
			lifeBarUP 		= new Point(15, 0);
			lifeBarDOWN 	= new Point(-15, 0);
			lifeBarLEFT 	= new Point(0, 15);
			lifeBarRIGHT 	= new Point(0, -15);
			
			lifeBar.scaleX = .3;
			lifeBar.scaleY = .3;
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