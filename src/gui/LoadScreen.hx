package gui;
/* --------------------------------------------------------
    
*/
// Imports ------------------------------------------------
import haxe.ui.containers.Box;

// Class --------------------------------------------------
@:build(haxe.ui.macros.ComponentMacros.build("res/gui/loadGame.xml"))
class LoadScreen extends Box {
    // Variables ----------------------------------------------
    
    // Functions ----------------------------------------------
        public function new() {
            super();
            this.hide();
            trace("loadScr added"); 
            var directory = sys.FileSystem.fullPath(".");
            loadView(directory);
            

            cont.onClick = function(e) {
                trace("cont clicked");
                Gui.loadScr.hide();
                Gui.startScr.hide();
                Gui.hud.show();
                }
        }

        private function loadView(directory:String) {
            trace ("Load view");
            lv1.dataSource.allowCallbacks = false;
            for (file in sys.FileSystem.readDirectory(directory)) {
                trace(" > " + file);
                if (sys.FileSystem.isDirectory(file)) {
                    lv1.dataSource.add({
                        image: "images/icons/gc/folder.png",
                        item: file
                    });
                } else {
                    lv1.dataSource.add({
                        image: null,
                        item: file
                    });
                }
            }
            lv1.dataSource.allowCallbacks = true;

        }
    }
    