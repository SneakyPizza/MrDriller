package TileSystem 
{
	/**
	 * ...
	 * @author Jeremy Bond
	 */
	public class TileSystem 
	{
		
		public var 	tileId	:Array = [];
		public var	Xrow	:int;
		public var 	Ynum	:int;
		public var 	tilePosX:int;
		public var 	tilePosY:int;
		public function TileSystem() 
		{
			Readtile();
			tileId = Math.random() * 6;
		}
		private function Readtile() {
			for (var i:int = 0; i < 900; i++) 
			{
				Xrow ++;
				var straightener:int = 0;
				if(tilePosY < 0)
				{
					straightener = 1;
				}
				tilePosX += 1;
				if(Xrow > 10-straightener)
				{
					Ynum += 1;
					tilePosY -= 1;
					tilePosX = 1;
					Xrow = 0;
				}
				CreateTile();
			}
		}
		private function CreateTile() {
			var num:int = Math.random() * 6;
			switch(num){
			case 1:
				
			break;
			case 2:
			break;
			case 3:
			break;
			case 4:
			break;
			case 5:
			break;
			case 6:
			break;
			case 7:
			break;
		}
	}

}
