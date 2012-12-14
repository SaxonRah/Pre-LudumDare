package ld25 {
	import flash.display.BitmapData;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	import ld25.Assets;
	
	public class Block extends Entity {
		
		public function Block(x:Number, y:Number) {
			super(x, y);
			
			type = "block";
			
			graphic = new Image(Assets.SPR_BL);
			
			//graphic = new Image(new BitmapData(NapeWorld.TILE_SIZE, NapeWorld.TILE_SIZE, false, 0x550000));
			
			setHitbox(NapeWorld.TILE_SIZE, NapeWorld.TILE_SIZE);
		}
		
		override public function added():void {
			super.added();
			
			NapeWorld(world).lighting.setBlockLight(x / NapeWorld.TILE_SIZE, y / NapeWorld.TILE_SIZE, true);
		}
		
		override public function removed():void {
			super.removed();
			
			NapeWorld(world).lighting.setBlockLight(x / NapeWorld.TILE_SIZE, y / NapeWorld.TILE_SIZE, false);
		}
	
	}

}