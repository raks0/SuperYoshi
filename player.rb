class Player
	
	def initialize(game_window)
		@game_window = game_window
		@icon = Gosu::Image.new(@game_window, 'images/yoshi.png', true)
		@x = game_window.width - 100
		@y = game_window.height - 100
		@window_width = game_window.width
		@window_height = game_window.height
	end
	
	def draw
		@icon.draw(@x, @y, 1)
	end
	

	def move_left
	  if @x < 0
	    @x = @window_width
    else
	    @x = @x - 10
    end
  end

	def move_right
	  if @x > @window_width
	    @x = 0
    else
      @x = @x + 10
    end
  end
	
	def move_up
	  if @y < 0
	    @y = @window_height
    else
	    @y = @y - 10
    end
  end

	def move_down
	  if @y > @window_height
	    @y = 0
    else
      @y = @y + 10
    end
  end
	
	
end