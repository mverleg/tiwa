package events;
import events.Signal.Callback;
import objects.Unit;

class Queue
{
	public static var instance:Queue = new Queue();
	private var listeners:Map<String, List<Callback>> = new Map();
	private var queue:Map<String, List<Signal>> = new Map();

	// Private so only one `this.instance` can be made.
	private function new() {}

	public function fire(type:String, callback:Callback, source:Null<Unit> = null, data:Dynamic = null):Bool
	{
		var event:Signal = new Signal(type, callback, source, data);
		return this.fireEvent(event);
	}

	public function fireEvent(event:Signal):Bool
	{
		if ( ! this.queue.exists(event.type))
		{
			this.queue[event.type] = new List<Signal>();
		}
		this.queue[event.type].add(event);
		return true;
	}

	public function listen() {}

	public function unlisten() {}
}


