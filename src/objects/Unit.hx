package objects;
import player.Action;

class Unit
{
	var actions = new Array<Action>();
	private var cls_name:String;

	public function new()
	{
		this.cls_name = this.getClass().getName()  // todo: this happens for subclass, right?
	}

	public function to_representation():Map
	{
		/*
		This returns a unique identifier of the Unit, not the full state.
		The state should be inferable from all previous actions.
		 */
		return {
			type: self.cls_name,
			id: 0  // todo: implement
		}
//        return '${this.cls_name} (attr = "text,yes", key = 7, other=7.0)'
	}
}
