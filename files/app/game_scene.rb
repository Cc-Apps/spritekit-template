class GameScene < SKScene
  def didMoveToView(view)
    label = SKLabelNode.labelNodeWithText('Hello, World!')
    label.position = CGPointMake(self.size.width / 2, self.size.height / 2)

    addChild(label)
  end

  def update(current_time)
    # Game Loop
  end
end