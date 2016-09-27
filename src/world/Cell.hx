package world;

import world.Terrain.TerrainList;
class Cell
{
    public var terrain:Terrain;
    public var height:Int = 0;

    public function new(terrain:Terrain, height:Int)
    {
//        this.terrain = TerrainList.GRASS;
        this.terrain = terrain;
        this.height = height;
    }
}
