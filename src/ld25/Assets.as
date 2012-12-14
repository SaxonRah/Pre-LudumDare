package ld25 {
	
	import flash.system.System;
	import flash.net.LocalConnection;
	import net.flashpunk.FP;
	
	public class Assets extends Object {
		
		// Ogmo levels
		[Embed(source="../../assets/ogmolight.oel",mimeType="application/octet-stream")]
		public static const LVL_SAMPLE:Class;
		
		// gfx for ogmoworld
		[Embed(source="../../assets/lofi_environment.png")]
		public static const SPR_TILES:Class;
		[Embed(source="../../assets/coin.png")]
		public static const SPR_COIN:Class;
		[Embed(source="../../assets/player.png")]
		public static const SPR_PLAYER:Class;
		
		//tile Lighting
		[Embed(source="../../assets/lighting.png")]
		public static const SPR_LIGHTING:Class;
		[Embed(source="../../assets/bg.png")]
		public static const SPR_BG:Class;
		
		[Embed(source = "../../assets/blocklight.png")]
		public static const SPR_BL:Class;
		
		// devPunk - Hack to collect memory
		public static function gcHackLog(imm:Number):void {
			try {
				FP.gcHack(imm)
			} catch (e:*) {}
			FP.log("End gcHack");
		}
	}
}