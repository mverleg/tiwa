package world;

class EmptySquareWorldGenerator extends SquareWorldGenerator
{
    public function new(dimension:Int)
    {
        super(dimension, dimension)
    }

    override public function generate(seed:Int): World
    {
        // todo: use seed
        return new World();
    }
}
