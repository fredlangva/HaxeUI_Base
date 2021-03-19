package gui;
/* --------------------------------------------------------
    
*/
// Imports ------------------------------------------------
import haxe.ui.containers.Box;

// Class --------------------------------------------------
@:build(haxe.ui.macros.ComponentMacros.build("res/gui/options.xml"))
class OptionsScreen extends Box {
    // Variables ----------------------------------------------
    
    // Functions ----------------------------------------------
        public function new() {
            trace("optScr added");
            super();
            this.hide();
            ok.onClick = function(e) {
                trace("ok clicked");
                this.hide();
                Gui.startScr.removeClass('halftone');
            }
            cancel.onClick = function(e) {
                trace("cancel clicked");
                this.hide();
                Gui.startScr.removeClass('halftone');
            }
        }
    }
    