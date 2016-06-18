package 
{
	
	import flash.display.*;
	import flash.utils.*;
	import flash.events.*;
	import code.Enemy;
	import code.Player;
	
	
	public class Main extends MovieClip
	{
		public var enemy:Enemy;
		public var player:Player;
		public var gameTimer:Timer;
		private var playerSpeed:Number = 10;
		private var destinationX:int;
		private var destinationY:int;
		private var posX:Number;
		private var posY:Number;
		
		
		private function timerListener (e:TimerEvent):void
		{
			trace("triggered timer")
		}
		public function Main()
		{
			stage.addEventListener(MouseEvent.MOUSE_MOVE,mouseMove);
			addEventListener(Event.ENTER_FRAME,update);
			addEventListener(Event.ENTER_FRAME,Collision);
			enemy = new Enemy();
			addChild(enemy);
			player = new Player();
			addChild(player);
		}
		public function mouseMove(e:MouseEvent)
		{
			posX = e.stageX;
			posY = e.stageY;
		}
		public function update(e:Event)
		{
			player.x = posX;
			player.y = posY;
		}
		private function Collision(e:Event):void
		{

		}
		
		
	}
	
	
}

