package gui;
/* --------------------------------------------------------
    
*/
// Imports ------------------------------------------------
import haxe.ui.containers.Box;

// Class --------------------------------------------------
@:build(haxe.ui.macros.ComponentMacros.build("res/gui/newGame.xml"))
class NewScreen extends Box {
    // Variables ----------------------------------------------
 
    
    // Functions ----------------------------------------------
    public function new() {
        super();
        this.hide();
        trace("newScr added");
        cont.onClick = function(e) {
            trace("cont clicked");
            Gui.newScr.hide();
            Gui.startScr.hide();
            Gui.hud.show();
        }
    }
}
    