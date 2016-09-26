package interact;
interface Action {
    /*
    Represents an action requested by interactive input (which may involve
    more than one button being pressed), which can be re-bound to other buttons.
    */
    public function new() {
    }

    public function do():Void {
    }
}
