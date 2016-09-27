package player;
import objects.Unit;
using Type;

class Action
{
    /*
    Represents something that an interactive player might do with
    any number of objects. Can be passed around and executed elsewhere
    where context such as selections and target are known.
    Command pattern: http://gameprogrammingpatterns.com/command.html
    */
    private var cls_name:String;

    public function new()
    {
        this.cls_name = this.getClass().getName()  // todo: this happens for subclass, right?
    }

    public function act(selection:List<Unit>, target:Unit):Bool
        throw Exception('`act` should be implemented in subclass, but it was not')
    /*
    This executes the action.
     */

    // `unact` is not necessary, the game doesn't need undo

    public function get_representation(selection:List<Unit>, target:Unit):Map
    {
        /*
        Store this action so it can be used for replays and for sending to the view.
         */
        return {
            type: self.cls_name,
            kw: {
                selection: [for (sel in selection) sel.to_representation()],
                target: target.to_representation()
            }
        }
//        var targetstr:String = ', '.join([for (sel in self.selection) sel.to_representation()]);
//        return '${this.cls_name} ([$targetstr] ${this.target.to_respresentation()}})'
    }

}
