package {
	// Imports
	import net.flashpunk.*;
	import ld25.NapeWorld;
	
	//import splash.Splash;
	
	// Preloader
	[Frame(factoryClass = "Preloader")]
	[SWF(width = "800", height = "600", frameRate="60", backgroundColor="0x000000")]

	//----> s.start(new AnyDemoWorldNameHere);
    public class Main extends Engine {
		
        public function Main() {
            super(800, 600, 60, false);
			FP.console.enable();
			FP.world = new NapeWorld();
			/*
			var s:Splash = new Splash();
			FP.world.add(s);
			FP.log("Started Logo");
			s.start(new NapeWorld); 
			*/
		}
    }
}