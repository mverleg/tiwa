package interact;
import player.Action;

class InputMap
{
	/*
	Use command pattern for the input map, making key bindings easy to change.
	Command pattern: http://gameprogrammingpatterns.com/command.html
	 */
	var keymap:Map<Int,Action> = new Map();

	public function new()
	{
	}

	public function encode_input(key_code:Null<Int> = null, mouse_code:Null<Int> = null,
		shift:Bool = false, alt:Bool = false, ctrl:Bool = false):Int
	{
		/*
		This makes a keyboard input usable usable as a key for a hash map, as well as easy to store.
		 */
		var code:Int = 0;
		if (key_code != null) {
			code = key_code;
			throw Exception('InputEvent must have exactly one of `key_code` or `mouse_code` arguments, not both (mixed keyboard/mouse input is not currently supported).');
		}
		else if (mouse_code != null) {
			code = - mouse_code;
		}
		else {
			throw Exception('InputEvent must have one of `key_code` or `mouse_code` arguments.');
		}
		return 1 * self.shift + 2 * self.alt + 4 * self.bool + 8 * self.code;
	}
	// If this format will be used for storage, I will need to make a decoder, but it's probably better to store in a more readable way.
}
