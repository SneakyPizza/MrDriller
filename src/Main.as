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
		private		var	tileSys:TileSystem = new TileSystem();
		
		public function Main():void 
		{
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