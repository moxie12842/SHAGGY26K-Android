package ui;

import flixel.graphics.FlxGraphic;
import flixel.addons.ui.FlxButtonPlus;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.graphics.frames.FlxTileFrames;
import flixel.group.FlxSpriteGroup;
import flixel.math.FlxPoint;
import flixel.system.FlxAssets;
import flixel.util.FlxDestroyUtil;
import flixel.ui.FlxButton;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.frames.FlxFrame;
import flixel.ui.FlxVirtualPad;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

// copyed from flxvirtualpad
class Hitbox extends FlxSpriteGroup
{
    public var hitbox:FlxSpriteGroup;
    var frameshb:FlxAtlasFrames;
    
    public var array:Array<FlxButton> = [];

    public var K1:FlxButton;
    public var K2:FlxButton;
    public var K3:FlxButton;
    public var K4:FlxButton;
    public var K5:FlxButton;
    public var K6:FlxButton;
    public var K7:FlxButton;
    public var K8:FlxButton;
    public var K9:FlxButton;
    public var K10:FlxButton;
    public var K11:FlxButton;
    public var K12:FlxButton;
    public var K13:FlxButton;
    public var K14:FlxButton;
    public var K15:FlxButton;
    public var K16:FlxButton;
    public var K17:FlxButton;
    public var K18:FlxButton;
    public var K19:FlxButton;
    public var K20:FlxButton;
    public var K21:FlxButton;
    public var K22:FlxButton;
    public var K23:FlxButton;
    public var K24:FlxButton;
    public var K25:FlxButton;
    public var K26:FlxButton;
    
    public function new(type:HitboxType = DEFAULT)
    {
        super();

        trace(type);

        //add graphic
        hitbox = new FlxSpriteGroup();
        hitbox.scrollFactor.set();

        K1 = new FlxButton(0, 0);
        K2 = new FlxButton(0, 0);
        K3 = new FlxButton(0, 0);
        K4 = new FlxButton(0, 0);
        K5 = new FlxButton(0, 0);
        K6 = new FlxButton(0, 0);
        K7 = new FlxButton(0, 0);
        K8 = new FlxButton(0, 0);
        K9 = new FlxButton(0, 0);
        K10 = new FlxButton(0, 0);
        K11 = new FlxButton(0, 0);
        K12 = new FlxButton(0, 0);
        K13 = new FlxButton(0, 0);
        K14 = new FlxButton(0, 0);
        K15 = new FlxButton(0, 0);
        K16 = new FlxButton(0, 0);
        K17 = new FlxButton(0, 0);
        K18 = new FlxButton(0, 0);
        K19 = new FlxButton(0, 0);
        K20 = new FlxButton(0, 0);
        K21 = new FlxButton(0, 0);
        K22 = new FlxButton(0, 0);
        K23 = new FlxButton(0, 0);
        K24 = new FlxButton(0, 0);
        K25 = new FlxButton(0, 0);
        K26 = new FlxButton(0, 0);

        var hitbox_hint:FlxSprite = new FlxSprite(0, 0);   

        switch (type) 
        {
            case NINE:
                hitbox_hint.loadGraphic(Paths.image('hitbox/9k_hint'));
                frameshb = Paths.getSparrowAtlas('hitbox/9k');
                
                hitbox.add(add(K1 = createhitbox(0, "K1"))); 
                hitbox.add(add(K2 = createhitbox(142, "K2")));
                hitbox.add(add(K3 = createhitbox(284, "K3"))); 
                hitbox.add(add(K4 = createhitbox(426, "K4")));
                hitbox.add(add(K5 = createhitbox(568, "K5"))); 
                hitbox.add(add(K6 = createhitbox(710, "K6")));
                hitbox.add(add(K7 = createhitbox(852, "K7")));
                hitbox.add(add(K8 = createhitbox(994, "K8")));
                hitbox.add(add(K9 = createhitbox(1136, "K9")));
            case SEVEN:
                hitbox_hint.loadGraphic(Paths.image('hitbox/7k_hint'));
                frameshb = Paths.getSparrowAtlas('hitbox/7k');
                
                hitbox.add(add(K1 = createhitbox(0, "K1"))); 
                hitbox.add(add(K2 = createhitbox(182, "K2"))); 
                hitbox.add(add(K3 = createhitbox(364, "K3")));
                hitbox.add(add(K4 = createhitbox(546, "K4"))); 
                hitbox.add(add(K5 = createhitbox(728, "K5")));
                hitbox.add(add(K6 = createhitbox(910, "K6"))); 
                hitbox.add(add(K7 = createhitbox(1092, "K7")));
            case SIX:
                hitbox_hint.loadGraphic(Paths.image('hitbox/6k'));
                frameshb = Paths.getSparrowAtlas('hitbox/6k');
                
                hitbox.add(add(K1 = createhitbox(0, "K1"))); 
                hitbox.add(add(K2 = createhitbox(213, "K2")));
                hitbox.add(add(K3 = createhitbox(426, "K3"))); 
                hitbox.add(add(K4 = createhitbox(639, "K4")));    
                hitbox.add(add(K5 = createhitbox(852, "K5")));
                hitbox.add(add(K6 = createhitbox(1065, "K6"))); 
           case THIRTEEN:
                hitbox_hint.loadGraphic(Paths.image('hitbox/hitbox13k_hint'));
                frameshb = Paths.getSparrowAtlas('hitbox/hitbox13k');
                
                hitbox.add(add(K1 = createhitbox(0, "K1"))); 
                hitbox.add(add(K2 = createhitbox(98, "K2")));
                hitbox.add(add(K3 = createhitbox(196, "K3"))); 
                hitbox.add(add(K4 = createhitbox(294, "K4")));
                hitbox.add(add(K5 = createhitbox(392, "K5"))); 
                hitbox.add(add(K6 = createhitbox(490, "K6")));
                hitbox.add(add(K7 = createhitbox(588, "K7")));
                hitbox.add(add(K8 = createhitbox(686, "K8")));
                hitbox.add(add(K9 = createhitbox(784, "K9")));
                hitbox.add(add(K10 = createhitbox(882, "K10")));
                hitbox.add(add(K11 = createhitbox(980, "K11"))); 
                hitbox.add(add(K12 = createhitbox(1078, "K12")));
                hitbox.add(add(K13 = createhitbox(1176, "K13")));
           case TWENTYSIX:
                hitbox_hint.loadGraphic(Paths.image('hitbox/hitbox13k_hint'));
                frameshb = Paths.getSparrowAtlas('hitbox/hitbox13k');
                
                hitbox.add(add(K1 = createhitbox(0, "K1"))); 
                hitbox.add(add(K2 = createhitbox(49, "K2")));
                hitbox.add(add(K3 = createhitbox(98, "K3"))); 
                hitbox.add(add(K4 = createhitbox(147, "K4")));
                hitbox.add(add(K5 = createhitbox(196, "K5"))); 
                hitbox.add(add(K6 = createhitbox(245, "K6")));
                hitbox.add(add(K7 = createhitbox(294, "K7")));
                hitbox.add(add(K8 = createhitbox(343, "K8")));
                hitbox.add(add(K9 = createhitbox(392, "K9")));
                hitbox.add(add(K10 = createhitbox(441, "K10")));
                hitbox.add(add(K11 = createhitbox(490, "K11"))); 
                hitbox.add(add(K12 = createhitbox(539, "K12")));
                hitbox.add(add(K13 = createhitbox(588, "K13"))); 
                hitbox.add(add(K14 = createhitbox(637, "K14"))); 
                hitbox.add(add(K15 = createhitbox(686, "K15")));
                hitbox.add(add(K16 = createhitbox(196, "K16"))); 
                hitbox.add(add(K17 = createhitbox(294, "K17")));
                hitbox.add(add(K18 = createhitbox(392, "K18"))); 
                hitbox.add(add(K19 = createhitbox(490, "K19")));
                hitbox.add(add(K20 = createhitbox(588, "K20")));
                hitbox.add(add(K21 = createhitbox(686, "K21")));
                hitbox.add(add(K22 = createhitbox(784, "K22")));
                hitbox.add(add(K23 = createhitbox(882, "K23")));
                hitbox.add(add(K24 = createhitbox(980, "K24"))); 
                hitbox.add(add(K25 = createhitbox(1078, "K25")));
                hitbox.add(add(K26 = createhitbox(1176, "K26")));  
            case DEFAULT:
                hitbox_hint.loadGraphic(Paths.image('hitbox/hitbox_hint'));
                frameshb = Paths.getSparrowAtlas('hitbox/hitbox');

                hitbox.add(add(K1 = createhitbox(0, "K1")));
                hitbox.add(add(K2 = createhitbox(320, "K2")));
                hitbox.add(add(K3 = createhitbox(640, "K3")));
                hitbox.add(add(K4 = createhitbox(960, "K4")));    
        }
        array = [K1, K2, K3, K4, K5, K6, K7, K8, K9, K10, K11, K12, K13, K14, K15, K16, K17, K18, K19, K20, K21, K22, K23, K24, K25, K26];
        hitbox_hint.alpha = 0.75;
        add(hitbox_hint);
    }

    public function createhitbox(X:Float, framestring:String) {
        var button = new FlxButton(X, 0);
        
        var graphic:FlxGraphic = FlxGraphic.fromFrame(frameshb.getByName(framestring));

        button.loadGraphic(graphic);

        button.alpha = 0;

    
        button.onDown.callback = function (){
            FlxTween.num(0, 0.75, .075, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        };

        button.onUp.callback = function (){
            FlxTween.num(0.75, 0, .1, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        }
        
        button.onOut.callback = function (){
            FlxTween.num(button.alpha, 0, .2, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        }

        return button;
    }

    override public function destroy():Void
        {
            super.destroy();
    
            K1 = null;
            K2 = null;
            K3 = null;
            K4 = null;
            K5 = null;
            K6 = null;
            K7 = null;
            K8 = null;
            K9 = null;
            K10 = null;
            K11 = null;
            K12 = null;
            K13 = null;
            K14 = null;
            K15 = null;
            K16 = null;
            K17 = null;
            K18 = null;
            K19 = null;
            K20 = null;
            K21 = null;
            K22 = null;
            K23 = null;
            K24 = null;
            K25 = null;
            K26 = null; 
        }
}

enum HitboxType {
    DEFAULT;
    SIX;
    SEVEN;
    NINE;
    THIRTEEN;
}

/*if (widghtScreen == null)
widghtScreen = FlxG.width;*/
