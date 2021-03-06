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
{
         private var _player:Player;
         private var _map:FlxOgmoLoader;
         private var _mWalls:FlxTilemap;
  
	override public function create():Void
	{       
                _map = new FlxOgmoLoader(AssetPaths.room_001__oel);
                _mWalls = _map.loadTilemap(AssetPaths.tiles__png, 16, 16, "walls");
                _mWalls.setTileProperties(1, FlxObject.NONE);
                _mWalls.setTileProperties(2, FlxObject.ANY);
                add(_mWalls);
                _player = new Player();
                _map.loadEntities(placeEntities, "entities");
                add(_player);
		super.create();
	}
	
        private function placeEntities(entityName:String, entityData:Xml):Void
        {
          var x:Int = Std.parseInt(entityData.get("x"));
          var y:Int = Std.parseInt(entityData.get("y"));
          if (entityName == "player")
          {
            _player.x = x;
            _player.y = y;
          }     
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
                FlxG.collide(_player, _mWalls);
	}	
}
