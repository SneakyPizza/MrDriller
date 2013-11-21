package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import TileSystem;
	/**
	 * ...
	 * @author Jeremy Bond
	 */
	public class Tile extends AllTiles
	{
		public  	var TileID		:int;
		private 	var firstTile	:AllTiles = new AllTiles();
		
		public function Tile() 
		{
			addChild(firstTile);
			TileID = Math.random() * 4+1;
			
			switch(TileID)
			{
				case 1:
					gotoAndStop(2);
					TileID = 1;
				break;
				case 2:
					gotoAndStop(3);
					TileID = 2;
				break;
				case 3:
					gotoAndStop(4);
					TileID = 3;
				break;
				case 4:
					gotoAndStop(5);
					TileID = 4;
				break;
				/*
				case 5:
					gotoAndStop(5);
					TileID = 5;
				break;
				case 6:
					gotoAndStop(6);
					TileID = 6;
				break;
				*/
			}
		}
		
	}

}