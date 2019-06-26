/**
 * Created by capjason on 29/12/2016.
 */
package com.insta360.themes.arashi.skins.mx.alert {
import flash.display.Graphics;

import mx.skins.ProgrammaticSkin;

public class AVTitleBackground extends ProgrammaticSkin
{
    public function AVTitleBackground()
    {
        super();
    }

    override protected function updateDisplayList(w:Number, h:Number):void
    {
        super.updateDisplayList(w,h);
        var g:Graphics = graphics;

        g.clear();
        if (h < 3)
            return;

        g.beginFill(0x4D4D4D);
        g.drawRoundRect(0,0,w,h+1,2,2);
        g.endFill();
    }
}
}
