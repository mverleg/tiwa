package world;
interface World {
    // don't assume that the world is time-independent
    public var width:Int;
    public var height:Int;
    public var generator:WorldGenerator;

    // todo: 2D array: http://stackoverflow.com/questions/16317567/how-to-declare-2d-arrays-in-haxe

    public function generate():Void;
}
