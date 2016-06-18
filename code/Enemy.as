package code  
{
	
	import flash.display.*;
	import flash.events.*;
	
	public class Enemy extends MovieClip 
	{
		var player:Player;
		
		public function Enemy() 
		{
			addEventListener(Event.ENTER_FRAME,Move);
			x = 600;
			y = -15;
			trace("enemy");
		}
		public function Move(E:Event):void
		{
			y = y +3; 
		}
			
	}
}
	

	