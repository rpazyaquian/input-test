require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640, 480, false)

		@dpad_image = @dpad_neutral_image = Gosu::Image.new(self, "./assets/img/DPAD.png")
		@dpad_up_image = Gosu::Image.new(self, "./assets/img/DPAD_up.png")
		@dpad_down_image = Gosu::Image.new(self, "./assets/img/DPAD_down.png")
		@dpad_left_image = Gosu::Image.new(self, "./assets/img/DPAD_left.png")
		@dpad_right_image = Gosu::Image.new(self, "./assets/img/DPAD_right.png")
	
		@window_x_center = 640/2
		@window_y_center = 480/2
	end

	def update
		if button_down? Gosu::KbUp
			@dpad_image = @dpad_up_image
		elsif button_down? Gosu::KbDown
			@dpad_image = @dpad_down_image
		elsif button_down? Gosu::KbLeft
			@dpad_image = @dpad_left_image
		elsif button_down? Gosu::KbRight
			@dpad_image = @dpad_right_image
		else
			@dpad_image = @dpad_neutral_image
		end
	end

	def draw
		@dpad_image_x_offset = @dpad_image.width / 2  # e.g. 40px -> 20px
		@dpad_image_y_offset = @dpad_image.height / 2  # e.g. 40px -> 20px

		@dpad_image_x = @window_x_center - @dpad_image_x_offset
		@dpad_image_y = @window_y_center - @dpad_image_y_offset

		@dpad_image.draw(@dpad_image_x, @dpad_image_y, 0)
	end
end

window = GameWindow.new
window.show