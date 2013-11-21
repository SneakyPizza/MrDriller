package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import Tile;
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
		private		var 	tilePosY		:int	= 100;
		public function TileSystem() 
		{	
			if (stage) init();
			else addEventListener	(Event.ADDED_TO_STAGE, 		init);
		}
	  
		private function init(e:Event = null):void 
		{
			addEventListener(Event.ENTER_FRAME, 		update);
		}
		/*	addEventListener(KeyboardEvent.KEY_DOWN,	keypressed);
			addEventListener(KeyboardEvent.KEY_UP,		keyreleased);
		}
		
		private function keyreleased(e:KeyboardEvent):void 
		{
			switch(e.keyCode)
			{
				case 38:
					_allTiles[_allTiles].x += 20;
				break;
			}
		}
		
		private function keypressed(e:KeyboardEvent):void 
		{
			switch(e.keyCode)
			{
				case 38:
					
				break;
			}
		}*/
		
		
		private function update(e:Event):void 
		{
			var at		:int	= 	_allTiles.length - 1;	/////at is all-tiles - 1
			var rat		:int	=	_allTiles.length;		/////rat is really`-all-tiles
			
			for (var t:int = at; t < 806; t++) 
			{
				if (rat == 194||rat == 398||rat == 592||rat == 796) 
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
			trace("lowl");
		}
	}

}
