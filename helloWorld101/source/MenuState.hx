package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.util.FlxDestroyUtil;


using flixel.util.FlxSpriteUtil;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
  private var _btnPlay:FlxButton;

	override public function create():Void
	{
                _btnPlay = new FlxButton(0, 0, "Play", clickPlay);
                _btnPlay.screenCenter();
                add(_btnPlay);
		super.create();
	}
	

  private function clickPlay():Void
  {
    FlxG.switchState(new PlayState());
  }



	override public function destroy():Void
	{
                _btnPlay = FlxDestroyUtil.destroy(_btnPlay);
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
