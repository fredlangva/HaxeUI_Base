package gui;

import haxe.ui.containers.HBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.macros.ComponentMacros.build("res/gui/indButton.xml", 
    {id: "gc_lot", icon: "images/icons/gc/gc_lot.png"} ))
class GcLotButton extends HBox {
    public function new() {
        super();
    }
}