class GameViewController < UIViewController
  def viewDidLoad
    super

    self.view = sk_view

    @game_scene = GameScene.sceneWithSize(sk_view.size)
    @game_scene.scaleMode = SKSceneScaleModeAspectFit

    sk_view.presentScene(@game_scene)

    sk_view.showsFPS = true
    sk_view.showsNodeCount = true
  end

  def sk_view
    @sk_view ||= SKView.alloc.initWithFrame(screen_rect)
  end

  def prefersStatusBarHidden
    true
  end

  def device_screen_width
    UIScreen.mainScreen.bounds.size.width
  end

  def device_screen_height
    UIScreen.mainScreen.bounds.size.height
  end

  def screen_rect
    CGRectMake(0, 0, device_screen_width, device_screen_height)
  end
end