/* --------------------------------------------------------
    GC
*/
// Imports ------------------------------------------------
import hxd.fs.LocalFileSystem;
import hxd.*;
import hxd.res.Sound;
import gui.Gui;

enum GameState {
    mainMenu;
    pause;
    play;
    options;
    newGame;
    loadGame;
}


// Class --------------------------------------------------
class Main extends hxd.App {
// Variables ----------------------------------------------
    public static var instance:Main;
    public static var gameState:GameState;

// Functions ----------------------------------------------
    static function main() {
        new Main();
    }
    public function new() {
        instance = this;
        super();
    }

    override function init() {
        hxd.Res.initLocal();
        var loader:hxd.res.Loader = new hxd.res.Loader(new hxd.fs.LocalFileSystem("res/gui", "" ));
        trace('Main init');
        engine.backgroundColor = 0xfff9af;
        super.init();
        var iniMusic:Sound = Res.gui.myTheme.sounds.cherokee_shuffle;
        iniMusic.play(true);
    // Init Gui
        var gui = new Gui(s2d);
        trace("after GUI Init called ");
    // Init Asset Mgr
    // Init Threading Job system?

    //  set to main menu screen
        trace("ready for main menu");
//        trace(sys.FileSystem.fullPath('.'));
    }

    override function update(dt:Float){

    }

}