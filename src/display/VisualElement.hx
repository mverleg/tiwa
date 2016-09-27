package display;

interface VisualElement
{
    /*
    Interface for visual things, like representations of objects as well as visual-only things.
    Implementations may well be specific to a specific display.
     */
    public function new(display:Display);

    public function render();
}
