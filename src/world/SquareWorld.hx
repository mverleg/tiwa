package world;
import misc.Vector2D;
import world.Terrain.TerrainList;

class SquareWorld implements World
{
    /*
    A world with square grid cells.
     */
	public var grid:Vector2D<Cell>;
    public var width:Int;
    public var height:Int;
    public var generator:WorldGenerator;

	public function new(width:Int, height:Int)
	{
        this.grid = new Vector2D(width, height);
        this.grid.set_each(function(k:Int, m:Int) {
            return new Cell(TerrainList.GRASS, 0);
        });
//        this.grid[0][0] = TerrainList.GRASS;
//        trace(this.grid.slice(0, 1, 0, 2));

//        var k:Int;
//        var q:Array<Int> = new Array();
//        for (k in 0...6)
//            q[k] = 0;
//        trace(q);
//        trace(q.slice(0, 1));
	}
}


