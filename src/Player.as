package  
{
	import flash.events.Event;
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.display.Stage;
	
	/**
	 * ...
	 * @author Yornie Westink
	 **/
	public class Player extends MovieClip
	{

		public var moveLeft:Boolean = false;
		public var moveRight:Boolean = false;
		public var moveUp:Boolean = false;
		public var mDown:Boolean = false;
		public var player:playerArt = new playerArt();
		
		
		public function Player():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			addChild(player);
			
			stage.addEventListener(KeyboardEvent.KEY_UP,KeyUp);
			stage.addEventListener(KeyboardEvent.KEY_DOWN,KeyDown);
			addEventListener(Event.ENTER_FRAME,EnterFrame);
		}


		private function KeyDown(e:KeyboardEvent):void 
		{
			switch(e.keyCode)
		   {
				//Left
				case 37:
				 moveLeft = true;
				break;
				
				//Right
				case 39:
				 moveRight = true;
				break; 
		   }
		}

		private function KeyUp(e:KeyboardEvent):void 
		{
				switch(e.keyCode)
		   {
				//Left
				case 37:
				 moveLeft = false;
				break;
				
				//Right
				case 39:
				 moveRight = false;
				break; 
		   }
		}

		private function EnterFrame(event:Event):void 
		{
			if (moveLeft)
			{
				player.x -= 10;
			}
			if (moveRight)
			{
				player.x +=10;
			}
			
		}
	}
}