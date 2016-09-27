package ;
class Examples {
	var alpha:Null<Int>;  // this is needed for primary types to make them nullable on all targets
	var actionshaxe  = new Array<Int>();  // note that going out of bounds yields unspecified behaviour
	// List is optimized for changing (linked), array is homogeneous but changable, vector is a static-length array

	public function new() {
		this.alpha = null;
		haxe.Json.stringify(o);

		trace('running main');
		get_sqr(2).handle(function (data) {trace('sqr: ' + data);});
		trace((get_cube(2).sure()));
	}

	public static function calc_sqr(x:Int):Int
	{
		return x * x;
	}

	public static function get_sqr(x:Int):Future<Int>
	{
//        var ft = Future.trigger();
//        ft.trigger(Success(x*x));
//        return ft.asFuture();
		return Future.lazy(calc_sqr.bind(x));
	}

	public static function get_cube(x:Int):Outcome<Int, String>
	{
		return OutcomeTools.attempt(
			function (x) { return int(pow(x, 3)); }.bind(x),
			function(q:Dynamic):String { return 'nooo'; }
		);
	}
}
