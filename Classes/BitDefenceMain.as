﻿package 
{
	import flash.display.MovieClip;
	import flash.events.Event;

	dynamic public class BitDefenceMain extends MovieClip
	{
		public var preloader:Preloader;

		public function BitDefenceMain()
		{
			init();
		}

		private function init():void
		{
			preloader = new Preloader();
			addChild(preloader);
			preloader.addEventListener("loadComplete", onLoadDone, false, 0, true);
			preloader.addEventListener("preloadFinished", onFinish, false, 0, true);
		}

		private function onLoadDone(e:Event):void
		{
			this.gotoAndStop(3);
		}

		private function onFinish(e:Event):void
		{
			preloader.removeEventListener("loadComplete", onLoadDone);
			preloader.removeEventListener("preloadFinished", onFinish);
			removeChild(preloader);
			preloader = null;
			var main:Main = new Main();
			addChild(main);
			main.init();
		}
	}
}