package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import TileSystem;
	
	/**
	 * ...
	 * @author Yornie Westink
	 */
	public class Main extends Sprite 
	{
<<<<<<< HEAD
	
		private var player:Player = new Player();
=======
		private		var	tileSys:TileSystem = new TileSystem();
		
>>>>>>> 73f5fd812d6625a50ad055d21b0d1741f1678197
		public function Main():void 
		{
			addChild(player);
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(tileSys);
		}
		
	}
	
}