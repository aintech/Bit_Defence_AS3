﻿package 
{
	import flash.display.MovieClip;
	import flash.utils.getTimer;
	import flash.filters.GlowFilter;

	public class IntroduceScreen extends MovieClip
	{
		public static const GUN:String					= "intro_Gun";
		public static const SWARM:String				= "intro_Swarm";
		public static const LAUNCHER:String 			= "intro_Launcher";
		public static const FREEZE:String 				= "intro_Freeze";
		
		public static const SPEEDER:String 				= "intro_Speeder";
		public static const WORM:String					= "intro_Worm";
		public static const RECODER:String				= "intro_Recoder"
		public static const PROTECTOR:String			= "intro_Protector";
		public static const NEIROBOT:String				= "intro_Neirobot";
		public static const RUNNER:String				= "intro_Runner";
		public static const CYCLER:String				= "intro_Cycler";
		public static const EMMITER:String				= "intro_Emmiter";
		public static const BUG:String					= "intro_Bug";
		
		public static const ADDITIONAL_MARKER:String 	= "intro_Additional_Marker";
		public static const FLOW_OVERLOAD:String		= "intro_Flow_Overload";
		public static const FLOW_STOP:String			= "intro_Flow_Stop";
		public static const RELOCATE_TURRET:String		= "intro_Relocate_Turret";
		public static const SYS_DAMAGE_REDUCE:String	= "intro_Sys_Damage_Reduce";
		public static const FALSE_TARGET:String			= "intro_False_Target";
		public static const MINES:String				= "intro_Mines";
		
		public var introduceObject:String;
		public var comingOut:Boolean 			= true;
		public var leaving:Boolean				= false;
		public var speed:int					= 3;
		public var timeToLeave:int				= 200; // = 10000 ms / gameTimer(50)
		public var counter:int					= 0;
		
		public function IntroduceScreen(introduce:String)
		{
			introduceObject = introduce;
			buttonMode = true;
			filters = [new GlowFilter(0x0000FF)];
			
			switch(introduce)
			{
				case GUN:
					Variables.INTRODUCE_GUN = true;
				break;
				
				case SWARM:
					Variables.INTRODUCE_SWARM = true;
				break;
				
				case LAUNCHER:
					Variables.INTRODUCE_LAUNCHER = true;
				break;
				
				case FREEZE:
					Variables.INTRODUCE_FREEZE = true;
				break;
				
				
				
				
				case SPEEDER:
					Variables.INTRODUCE_SPEEDER = true;
				break;
				
				case WORM:
					Variables.INTRODUCE_WORM = true;
				break;
				
				case RECODER:
					Variables.INTRODUCE_RECODER = true;
				break;
				
				case PROTECTOR:
					Variables.INTRODUCE_PROTECTOR = true;
				break;
				
				case NEIROBOT:
					Variables.INTRODUCE_NEIROBOT = true;
				break;
				
				case RUNNER:
					Variables.INTRODUCE_RUNNER = true;
				break;
				
				case CYCLER:
					Variables.INTRODUCE_CYCLER = true;
				break;
				
				case EMMITER:
					Variables.INTRODUCE_EMMITER = true;
				break;
				
				case BUG:
					Variables.INTRODUCE_BUG = true;
				break;
				
				
				
				
				case ADDITIONAL_MARKER:
					Variables.INTRODUCE_ADDITIONAL_MARKER = true;
				break;
				
				case FLOW_OVERLOAD:
					Variables.INTRODUCE_FLOW_OVERLOAD = true;
				break;
				
				case FLOW_STOP:
					Variables.INTRODUCE_FLOW_STOP = true;
				break;
				
				case RELOCATE_TURRET:
					Variables.INTRODUCE_RELOCATE_TURRET = true;
				break;
				
				case SYS_DAMAGE_REDUCE:
					Variables.INTRODUCE_SYS_DAMAGE_REDUCE = true;
				break;
				
				case FALSE_TARGET:
					Variables.INTRODUCE_FALSE_TARGET = true;
				break;
				
				case MINES:
					Variables.INTRODUCE_MINES = true;
				break;
				
				default:
					trace("wrong intro: " + introduce);
				break;
			}
		}
	}
}