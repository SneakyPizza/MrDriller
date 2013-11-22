package  
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import Tile;
	import AirTile;
	/**
	 * ...
	 * @author Jeremy Bond
	 */
	public class TileSystem extends Sprite
	{
		
		private 	var 	_allTiles		:Array	= [];
		private 	var		Xrow			:int;
		private 	var 	Ynum			:int;
		private 	var 	tilePosX		:int	= 10;
		private		var 	tilePosY		:int	= -1000;
		private 	var		randomAir1		:int 	= Math.random() * 10;
		private 	var		randomAir2		:int 	= Math.random() * 10;
		private 	var		randomAir3		:int 	= Math.random() * 10;
		private 	var		randomAir4		:int 	= Math.random() * 10;
		private 	var 	PDY				:int	= 0;
		public function TileSystem() 
		{	
			if (stage) init();
			else addEventListener	(Event.ADDED_TO_STAGE, 		init);
		}
	  
		private function init(e:Event = null):void 
		{
			addEventListener(Event.ENTER_FRAME, 				update);
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN,		KeyPressed);
			stage.addEventListener(KeyboardEvent.KEY_UP,		KeyReleased);
		}
		public function KeyPressed(e:KeyboardEvent):void
		{
			switch(e.keyCode)
			{
				//Up
				case 38:
					PDY = 1;
				break;
				//Down
				case 40:
					PDY = -1;
				break;	
			}
		}
		
		public function KeyReleased(e:KeyboardEvent):void
		{
			switch(e.keyCode)
			{
				
				//  Up
				case 38:
					PDY = 0;
				break;
				//  Down
				case 40:
					PDY = 0;
				break;
			}
		}
		
			
		
		private function update(e:Event):void 
		{
			var at		:int	= 	_allTiles.length - 1;	/////at is all-tiles - 1
			for (var i:int = 0; i < at; i++) 
			{
				_allTiles[i].y += (PDY * 40);
			}
			//for each (var item:TileA in _allTiles) 
			//{
				//item.y += (PDY * 20);
			//}
			for (var t:int = at; t < 810; t++) 
			{
				if (t == (90+randomAir1)||t == (290+randomAir2)||t == (490+randomAir3)||t == (690+randomAir4)) 
				{
					pushAirTileInArray();
				}else {
					pushTilesInArray();
				}
				Xrow ++;
				tilePosX += 50;
				if(Xrow > 8)
				{
					Xrow = 0;
					Ynum += 50;
					tilePosY += 50;
					tilePosX = 10;
				}
			}
			
		}
		
		private function pushTilesInArray():void 
		{
			_allTiles.push(new Tile);
			var at:int = _allTiles.length - 1;
			addChild(_allTiles[at]);
			_allTiles[at].x = tilePosX;
			_allTiles[at].y = tilePosY;
		}
		private function pushAirTileInArray():void
		{
			_allTiles.push(new AirTile)
			var at:int = _allTiles.length - 1;
			addChild(_allTiles[at]);
			_allTiles[at].x = tilePosX;
			_allTiles[at].y = tilePosY;
		}
	}

}
