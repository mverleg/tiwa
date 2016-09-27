package objects;
import player.Action;

typedef UnitRepr = {type:String, id:Int};

class Unit
{
	var actions = new Array<Action>();
	private var cls_name:String;

	public function to_representation():UnitRepr
	{
		/*
		This returns a unique identifier of the Unit, not the full state.
		The state should be inferable from all previous actions.
		 */
//		if (this.cls_name == null)
//			this.cls_name = this.getClass().getName();
		return {
			type: this.cls_name,
			id: 0  // todo: implement
		};
//        return '${this.cls_name} (attr = "text,yes", key = 7, other=7.0)'
	}
}
