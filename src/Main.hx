package ;
import world.World;
import events.Queue;
import world.SquareWorld;

class Main
{
	var text:String = 'hello world';

	public static function main()
	{
		var Q = Queue.instance;
		var world:World = new SquareWorld(3, 5);
	}
}


