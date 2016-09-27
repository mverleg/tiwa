package observations;
import objects.Unit;
import misc.Exception;
import player.Player;

class ObservedUnit
{
    /*
    This contains the information that a player can see about a real unit. Players should not
    get references to actual units as those might leave their side of have hidden properties.
    todo: not sure which pattern this is, if any
     */
    //todo
    public function new(player:Player, unit:Unit)
    {
        throw Exception('Not implemented');
    }
}
