package com.insta360.jsoneditor.model {
[Bindable]
public class ClipInfo {
    public var factor:Number;
    public var duration:Number;
    public var name:String = "New Clip";
    public function ClipInfo(factor:Number,duration:Number) {
        this.factor = factor;
        this.duration = duration;
    }
}
}
