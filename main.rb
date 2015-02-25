require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640, 480, false)

		@dpad_image = Gosu::Image.new(self, "./assets/img/DPAD.png")
	end

	def update
		if button_down? Gosu::KbUp
			puts "up"
		elsif button_down? Gosu::KbDown
			puts "down"
		elsif button_down? Gosu::KbLeft
			puts "left"
		elsif button_down? Gosu::KbRight
			puts "right"
		else
			puts "nothing"
		end
	end

	def draw
		@dpad_image.draw(0, 0, 0)
	end
end

window = GameWindow.new
window.show