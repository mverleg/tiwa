package events;
import events.Signal.Callback;
import objects.Unit;

class Queue
{
	/*
	This is a queue, where things are added at one end and consumed at the other. But it uses callbacks
	to all listeners upon consuming, so it's not really a temporal decoupling mechanism.
	//todo perhaps I should convert this to a router, which delivers messages immediately but to a listener's own queue (actor model pattern)
	//todo I'd be good in the above or the current case to filter by sources (which'd be easy, just pass a filter function when registering, like `type`)
	 */
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


