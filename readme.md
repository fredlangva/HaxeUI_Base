# A HaxeUI Basic Gui

This project is an example of an actual basic gui that I am using in my projects. It is currently targeted for Heaps HashLink but certainly can be easily modified for any other HaxeUI Target.

## Features
    1. Animated Initialization screen with logos and music to load shared system items (eg: assets, music, gui items)
    2. Custom Components (HaxeUI)
    3. Directory/File loading example
    4. Options settings
    5. HUD
    6. Themed Styles

## Info

As you look at the scenes hx code, you will see an "@:build". This macro will build the screen for you and has the additional feature of making any component with a defined "id" a variable to be used in the code. No need to do a "findComponent".

The "custom components" along with the "theme" is defined in the module.xml file. Note: it is important to have the parent theme define unless you are going to define a style for every component used.

The HUD screen has some additional custom components for indicators used on the expanding menus.

## Acknowledgement

I can not express enough thanks to Ian Harrigan for being patient with me trying to learn HaxeUI. I hope that whatever project you use his library in, you would give him credit for such a great resource to provide the building blocks to our UIs.