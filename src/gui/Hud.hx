package gui;
/* --------------------------------------------------------
    
*/
// Imports ------------------------------------------------
import haxe.ui.components.Button;
import haxe.ui.containers.VBox;

// Class --------------------------------------------------
@:build(haxe.ui.macros.ComponentMacros.build("res/gui/hud.xml"))
class Hud extends VBox {
    // Variables ----------------------------------------------
    var lot_clicked:Bool = false;
    var fun_clicked:Bool = false;

    // Functions ----------------------------------------------
        public function new() {
            trace("hud new");
            super();
            this.hide();
            lotSize.hide();
            funStuff.hide();
            gc_lot.indicator.hide();
            gc_fun.indicator.hide();
            gc_lot.onClick = function(e) {
                trace("gc_lot Button clicked ");  
                if (lot_clicked) {
                    lot_clicked = false;
                    gc_lot.indicator.hide();
                    lotSize.hide();
                } else {
                    lot_clicked = true;
                    gc_lot.indicator.show();
                    lotSize.show();
                }
            };
            gc_fun.onClick = function(e) {
                trace("clickef");
                if (fun_clicked) {
                    fun_clicked = false;
                    gc_fun.indicator.hide();
                    funStuff.hide();
                } else {
                    fun_clicked = true;
                    gc_fun.indicator.show();
                    funStuff.show();
                }
            }

            gc_money.onClick = function(e) {
                trace("gc_money Button clicked");                
            };
            gc_opts.onClick = function(e) {
                trace("gc_opts Button clicked");                
            };
        }
    }  