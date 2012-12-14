package ld25 {
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Draw;
	import punk.tilelighting.TileLight;
	
	public class Cursor extends Entity {
		private var _tileX:int;
		
		public function get tileX():int {
			return _tileX;
		}
		
		private var _tileY:int;
		
		public function get tileY():int {
			return _tileY;
		}
		
		private var _flooredX:int;
		
		public function get flooredX():int {
			return _flooredX;
		}
		
		private var _flooredY:int;
		
		public function get flooredY():int {
			return _flooredY;
		}
		
		private var _lastX:int;
		private var _lastY:int;
		
		public function get hasMoved():Boolean {
			return (_lastX != _tileX || _lastY != _tileY);
		}
		
		private var _light:TileLight;
		
		public function get light():TileLight {
			return _light;
		}
		
		public function Cursor() {
			layer = -10000;
			
			_light = new TileLight(0, 0, 15, 5, 10);
			_tileX = 0;
			_tileY = 0;
			_flooredX = 0;
			_flooredY = 0;
			
			setHitbox(NapeWorld.TILE_SIZE, NapeWorld.TILE_SIZE);
		}
		
		override public function added():void {
			super.added();
			
			NapeWorld(world).lighting.addLight(_light);
		}
		
		override public function update():void {
			super.update();
			
			_lastX = _tileX;
			_lastY = _tileY;
			
			_flooredX = _tileX = Math.floor(world.mouseX / NapeWorld.TILE_SIZE);
			_flooredY = _tileY = Math.floor(world.mouseY / NapeWorld.TILE_SIZE);
			
			_flooredX *= NapeWorld.TILE_SIZE;
			_flooredY *= NapeWorld.TILE_SIZE;
			
			_light.column = _tileX;
			_light.row = _tileY;
		}
		
		override public function render():void {
			super.render();
			
			Draw.rectPlus(_flooredX, _flooredY, NapeWorld.TILE_SIZE, NapeWorld.TILE_SIZE, 0xffffff, 0.8, false, 1);
		}
	
	}

}