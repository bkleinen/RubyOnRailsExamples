project_root = File.dirname(__FILE__).gsub(/(.*)\/spec\/?.*$/,"\\1")
$LOAD_PATH.unshift project_root

require "rspec"
require "game.rb"

describe Game do
 describe "#score" do
    it "returns 0 for all gutter game" do
      game = Game.new
      20.times { game.roll(0) }
      game.score.should == 0
    end
  end
end

