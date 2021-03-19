package gui;

import haxe.ui.containers.HBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.macros.ComponentMacros.build("res/gui/indButton.xml", 
    {id: "gc_fun", icon: "images/icons/gc/gc_fun.png"} ))
class GcFunButton extends HBox {
    public function new() {
        super();
    }
}