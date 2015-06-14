package;

import flixel.tile.FlxTilemap;
import flixel.addons.editors.ogmo.FlxOgmoLoader;
import flixel.FlxObject;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{		private var _player:Player;

	public var level:Tiledmap;

/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
	//	bgColor = 0xffaaaaaa;

		level = new Tiledmap("assets/data/grass.tmx");
//		trace("++"+level.backgroundTiles.length);
		trace("----");

		add(level.backgroundTiles);
		trace("----"+level.backgroundTiles.length);
		add(level.foregroundTiles);

		_player = new Player(1, 1);

	add(_player);
//	super.create();
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