﻿package 
{
	import flash.display.MovieClip;
	import flash.filters.GlowFilter;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	import flash.geom.Point;

	public class Enemy extends MovieClip
	{
		public var baseLevel:int = 1;
		public var level:int;
		
		protected var levelColors:Array = [NaN, 0x0000ff, 0x22ff22, 0xff0000];
		protected var glowFilter:GlowFilter;
		protected var blurFilter:BlurFilter;
		public var levelColor:uint;
		
		public var moneyDrop:int;
		public var baseSpeed:Number;
		public var xSpeed:Number;
		public var ySpeed:Number;
		public var speed:Number;
		
		public var maxHealth:int;
		public var health:int;
		public var lifeBar:MovieClip;
		
		public var underFreeze:Boolean = false;
		public var freezeCounter:int = 0;
		public var maxTimeFreeze:int = Variables.FREEZE_SPEED_REDUCE_DURATION;
		
		public var isStuned:Boolean = false;
		public var stunCounter:int = 0;
		public var maxTimeStuned:int = Variables.FREEZE_STUN_DURATION;
		
		public var isPoisoned:Boolean = false;
		public var poisonCounter:int = 0;
		public var maxPoisonCounter:int = Variables.LAUNCHER_POISON_DURATION;
		
		public var hackChance:int;
		
		public var lifeBarUP:Point;
		public var lifeBarDOWN:Point;
		public var lifeBarRIGHT:Point;
		public var lifeBarLEFT:Point;
		
		public var previusXSpeed:Number;
		public var previusYSpeed:Number;		
		public var firstStun:Boolean = false;
		public var speedUP:Boolean = false;
		
		public var hackChanceDecreased:Boolean = false;
		public var roadID:int;
		
		public function Enemy()
		{
			level = baseLevel;
			levelColor = levelColors[level];
			glowFilter = new GlowFilter(levelColor);
			blurFilter = new BlurFilter(2, 2);
			
			addEventListener(Event.ADDED_TO_STAGE, onAdd, false, 0, true);
		}
		
		private function onAdd(e:Event):void
		{
			var _root = this.parent.parent;
			x = _root.roadStart.x;
			y = _root.roadStart.y;
			
			lifeBar = new LifeBar();
			addChild(lifeBar);
			if(!Settings.LIFEBAR_VISIBLE) lifeBar.visible = false;
		}
		
		public function updateLevel(newLevel:int):void
		{
			
		}
	}
}