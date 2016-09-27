package world;

class Terrain
{
    public var name:String = null;
    public var speed:Int = 100;
    public var liquid:Bool = false;
    // texture / color

    public function new(name:String, speed:Int, liquid:Bool = false)
    {
        this.name = name;
        this.speed = speed;
        this.liquid = liquid;
    }
}

class TerrainList
{
    // todo: there must be a better way to contain this
    public static var GRASS = new Terrain('grass', 100);
    public static var SWAMP = new Terrain('swamp', 40);
    public static var WATER = new Terrain('water', 100, true);
}

