package events;

import objects.Unit;
typedef Callback = Signal->Void;

class Signal
{
    /*
    Signals are used to communicate between parts of the code without coupling them.
    Any code can register to follow a signal at the Queue, which can be done for one or several specific types.
    I called them signals because all handlers get them, their propagation can't be stopped (like for events).
    Event queue pattern: http://gameprogrammingpatterns.com/event-queue.html
     */
    public var type(default, null):String;  // can only be changed from inside the class
    public var callback:Callback;
    public var source:Unit;
    public var data:Dynamic;  // todo: which type if anonymous object?

    public function new(type:String, callback:Callback, source:Unit = null, data:Dynamic = null)
    {
        this.type = type;
        this.callback = callback;
        this.source = source;
        this.data = data;
    }
}
