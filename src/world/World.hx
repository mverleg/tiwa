package world;
interface World {
    // don't assume that the world is time-independent
    public var width:Int;
    public var height:Int;
    public var generator:WorldGenerator;

    public function generate():Void;
}
