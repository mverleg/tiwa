package misc;
using haxe.ds.Vector;
using haxe.ds.Either;

class Vector2D<T>
{
	/*
	A fairly limited 2D array implementation that supports arbitrary homogeneous data types.
	 */
	//todo: if this works well, make it into a haxe package

	public var rows(default, null):Int = 0;
	public var columns(default, null):Int = 0;
	public var data:Vector<Vector<T>>;  // todo: change to vector

	public function new(rows:Int, columns:Int)
	{
		/*
		Data is stored with a vector for each row, so closer to Fortran format. There are two reasons:
		- In matrix multiplications, this is the more natural format.
		- In general (not here), data is more likely to be inhomogeneous with a type per column than per row.
		With the data[a][b] notation, that means the first index (a) marks the column.
		 */
		if (columns <= 0 || rows <= 0) throw new Exception('Vector2D cannot have dimensions smaller than one.');
		this.rows = rows;
		this.columns = columns;
//        this.data = Vector<Vector<T>(this.columns)>(this.rows);
		this.data = new Vector(this.columns);
		var k:Int = 0;
		for (k in 0...this.columns)
			this.data[k] = new Vector(this.rows);
	}

	public function slice(startrow:Int, endrow:Null<Int> = null, startcol:Null<Int> = null, endcol:Null<Int> = null): Vector2D<T>
	{
		/*
		Similar to Array.slice, but in two dimensions.
		 */
		var slicedata:Vector2D<T>;
		var k:Int, m:Int;
		// Check all the bounds and negative indices
		if (startrow < 0) startrow = startrow + this.rows;
		if (startrow < 0) startrow = 0;
		if (startcol < 0) startcol = startcol + this.columns;
		if (startcol < 0) startcol = 0;
		if (endrow == null || endrow > this.rows) endrow = this.rows;
		if (endrow < 0) endrow = endrow + this.rows;
		if (endrow < startrow) endrow = startrow;
		if (endcol == null || endcol > this.columns) endcol = this.columns;
		if (endcol < 0) endcol = endcol + this.columns;
		if (endcol < 0) endcol = 0;
		// Create and fill a new data structure
		slicedata = new Vector2D(endrow - startrow, endcol - startcol);
		for (k in startcol...endcol)
			for (m in startrow...endrow)
				slicedata.data[k - startcol][m - startrow] = this.data[k][m];
		return slicedata;
	}

	public function map():Vector2D<T>
	{
		throw new Exception('Not implemented');
	}

	public function join():String
	{
		throw new Exception('Not implemented');
	}

	public function fill(value:T):Vector2D<T>
	{
		for (k in 0...this.columns)
			for (m in 0...this.rows)
				this.data[k][m] = value;
		return this;
	}

	public function set_each(terrain_func:Int->Int->T):Vector2D<T>
	{
		var k:Int, m:Int;
		for (k in 0...this.columns)
			for (m in 0...this.rows)
				this.data[k][m] = terrain_func(k, m);
		return this;
	}
}
