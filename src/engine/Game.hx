package engine;
import player.Player;
import display.Display;
import world.World;

class Game
{
	public var world:World;
	public var displays:Array<Display>;
	public var players:Array<Player>;

	public function new(world:World, displays:Array<Display>, players:Array<Players>)
	{
		this.world = world;
		this.displays = displays;
		this.players = players;
	}
}
