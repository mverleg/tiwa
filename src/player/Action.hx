package player;
import misc.Exception;
import objects.Unit;
import Type;

typedef ActionRepr = {type:String, kw:Dynamic};

class Action
{
    /*
    Represents something that an interactive player might do with
    any number of objects. Can be passed around and executed elsewhere
    where context such as selections and target are known.
    Command pattern: http://gameprogrammingpatterns.com/command.html
    */
    private var cls_name:String = 'action';

    public function act(selection:List<Unit>, target:Unit):Bool
    {
        /*
        This executes the action.
         */
        throw new Exception('`act` should be implemented in subclass, but it was not');
    }

    // `unact` is not necessary, the game doesn't need undo

    public function get_representation(selection:List<Unit>, target:Unit):ActionRepr
    {
        /*
        Store this action so it can be used for replays and for sending to the view.
         */
        return {
            type: this.cls_name,
            kw: {
                selection: [for (sel in selection) sel.to_representation()],
                target: target.to_representation()
            }
        };
//        var targetstr:String = ', '.join([for (sel in self.selection) sel.to_representation()]);
//        return '${this.cls_name} ([$targetstr] ${this.target.to_respresentation()}})'
    }

}
