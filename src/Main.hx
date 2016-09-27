package ;
using tink.core.Future;
using tink.core.Outcome;
using tink.core.Error;
import Math.pow;
import Std.int;
//import tink.core.Future;
//using tink.CoreApi;

class Main
{
	var text:String = 'hello world';

	public static function main()
	{
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
        return OutcomeTools.attempt(function (x) { return int(pow(x, 3)); }.bind(x), function(q:Dynamic):String { return 'nooo'; });
    }
}


