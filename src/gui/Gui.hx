package gui;
/* --------------------------------------------------------
    Gui - module to handle the user interface
    This module initializes all the 'scenes' used in 
    the GUI and runs the initialization animations

    v1: 3/19/21
*/
// Imports ------------------------------------------------
import h2d.Scene;
import haxe.ui.*;
import haxe.ui.macros.ComponentMacros;
import haxe.ui.core.Component;
import haxe.ui.events.AnimationEvent;
import haxe.ui.core.Screen;


// Class --------------------------------------------------
class Gui extends Scene {
    // Variables ----------------------------------------------
    public static var hud:Component;
    public static var startScr:Component;
    public static var newScr:Component;   
    public static var loadScr:Component;  
    public static var optScr:Component;  

    // Functions ----------------------------------------------
    public function new(defScene:h2d.Scene) {
        // defScene is for Heaps only 
        trace("init the GUI");
        super();

        Toolkit.theme = "myTheme"; // A HaxeUI Custom Theme
        Toolkit.init({root:  defScene}); // the root is Heaps specific

        startScr = new StartMenu();
        Screen.instance.addComponent(startScr);
        newScr = new NewScreen();
        Screen.instance.addComponent(newScr);
        loadScr = new LoadScreen();
        Screen.instance.addComponent(loadScr);        
        optScr = new OptionsScreen();
        Screen.instance.addComponent(optScr);
        hud = new Hud();
        Screen.instance.addComponent(hud);

        // Start the SPLASH Scene
        var initScr:Component = ComponentMacros.buildComponent("res/gui/splash.xml");  
        Screen.instance.addComponent(initScr);
        // gather the logos to animate
        var img1 = initScr.findComponent('haxelogo', haxe.ui.components.Image, true);
        var img2 = initScr.findComponent('haxeui', haxe.ui.components.Image, true);			
        var img3 = initScr.findComponent('heaps', haxe.ui.components.Image, true);			
        // start the sequence

        img1.addClass('fadeIn');
        img1.registerEvent(AnimationEvent.END, function(_){
            trace("img1 done");
            img2.addClass('fadeIn');
            img2.registerEvent(AnimationEvent.END, function(_){
                trace("img2 done");
                img3.addClass('fadeIn');
                img3.registerEvent(AnimationEvent.END, function(_){
                    trace("img3 done");
            // Great now, switch the scene and change the mode
                startScr.show();
                initScr.addClass('fadeOut');
                    initScr.registerEvent(AnimationEvent.START, function (_) {
                        startScr.addClass('fadeIn');                            
                    });
                    initScr.registerEvent(AnimationEvent.END, function (_) {
                        Screen.instance.removeComponent(initScr);                        
                    });
                });
            });
        });
    };
}