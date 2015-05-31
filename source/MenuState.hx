package;

import flash.filters.ColorMatrixFilter;
import flash.geom.Rectangle;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.ui.FlxUI9SliceSprite;
import flixel.effects.FlxSpriteFilter;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		var sp1:FlxSprite = new FlxSprite(0, 100);
		sp1.loadGraphic("assets/images/guojia.png");
		add(sp1);

		var sp2:FlxSprite = new FlxSprite(150, 100);
		sp2.loadGraphic("assets/images/guojia.png");
		var matrix:Array<Int> = [1, 0, 0, 0, 50, 
					   0, 1, 0, 0, 50,
					   0, 0, 1, 0, 50,
					   0, 0, 0, 1, 0];
		var colorMatrixFilter:ColorMatrixFilter = new ColorMatrixFilter(matrix);
		var filterSprite:FlxSpriteFilter = new FlxSpriteFilter(sp2);
		filterSprite.addFilter(colorMatrixFilter);
		add(sp2);

		var sp3:FlxSprite = new FlxSprite(300, 100);
		sp3.loadGraphic("assets/images/guojia.png");
		var matrix3:Array<Int> = [1, 0, 0, 0, -50, 
					   0, 1, 0, 0, -50,
					   0, 0, 1, 0, -50,
					   0, 0, 0, 1, 0];
		var colorMatrixFilter3:ColorMatrixFilter = new ColorMatrixFilter(matrix3);
		var filterSprite3:FlxSpriteFilter = new FlxSpriteFilter(sp3);
		filterSprite3.addFilter(colorMatrixFilter3);
		add(sp3);

		var rect:Rectangle = new Rectangle(0, 0, 93, 19);
		var scale9:Array<Int> = [10, 4, 75, 8];
		var ui9slice:FlxUI9SliceSprite = new FlxUI9SliceSprite(100, 10, "assets/images/gold.png", rect, scale9);
		add(ui9slice);
		ui9slice.resize(100, ui9slice.height);


		var ui9slice1:FlxUI9SliceSprite = new FlxUI9SliceSprite(100, 50, "assets/images/gold.png", rect, scale9);
		add(ui9slice1);
		ui9slice1.scale.x = 1.5;
		// ui9slice1.resize(50, ui9slice1.height);
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}	
}