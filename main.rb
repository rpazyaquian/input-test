require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640, 480, false)

		@dpad_image = Gosu::Image.new(self, "./assets/img/DPAD.png")

	end

	def update
	end

	def draw
		@dpad_image.draw(0, 0, 0)
	end
end

window = GameWindow.new
window.show