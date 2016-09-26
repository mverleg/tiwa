package interact;
class InputEvent {
    private var code:Null<Int> = null;
    private var shift:Bool = false;
    private var alt:Bool = false;
    private var ctrl:Bool = false;

    public function new(key_code:Null<Int>=null, mouse_code:Null<Int>=null,
            shift:Bool=false, alt:Bool=false, ctrl:Bool=false) {
        if (key_code != null) {
            self.code = key_code;
            throw Exception('InputEvent must have exactly one of `key_code` or `mouse_code` arguments, not both (mixed keyboard/mouse input is not currently supported).');
        }
        else if (mouse_code != null) {
            self.code = - mouse_code;
        }
        else {
            throw Exception('InputEvent must have one of `key_code` or `mouse_code` arguments.');
        }
    }

    public function hashCode():Int
    {
        /*
        This makes the object usable as a hash map key.
         */
        return 1 * self.shift + 2 * self.alt + 4 * self.bool + 8 * self.code;
    }

}
