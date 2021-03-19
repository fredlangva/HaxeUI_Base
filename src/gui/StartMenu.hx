package gui;
/* --------------------------------------------------------
    Start Menu
*/
// Imports ------------------------------------------------
import haxe.ui.containers.Box;

// Class --------------------------------------------------
@:build(haxe.ui.macros.ComponentMacros.build("res/gui/start.xml"))
class  StartMenu extends Box {
// Variables ----------------------------------------------


// Functions ----------------------------------------------
    public function new() {
        trace("startScr added");
        super();
        this.hide();
        newgame.onClick = function(e) {
            trace ("new Game clicked");
//            Toolkit.messageBox("Opening new Game - may want to make this custom for name",MessageBoxType.TYPE_INFO,true);
            Gui.startScr.addClass('halftone');
            Gui.newScr.show();
        };
        loadgame.onClick = function(e) {
            trace ("load Game clicked");
            Gui.startScr.addClass('halftone');
            Gui.loadScr.show();
        };
        options.onClick = function(e) {
            trace ("options clicked");
            Gui.startScr.addClass('halftone');
            Gui.optScr.show();
        };
        exit.onClick = function(e) {
            trace("exit stuff here");
            hxd.System.exit();
        };
    }
}


