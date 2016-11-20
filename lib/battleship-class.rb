class Grid

	def initialize
		@user_grid = Array.new(10)  {Array.new(20){0}}
		@secret_grid = Array.new(10)  {Array.new(20){0}}
		@counter = 9
		@xcoord = 0
		@ycoord = 0
	end

	def DefineSecretGrid
		@secret_grid [3][6] = 1
		@secret_grid [6][4] = 1
		@secret_grid [2][2] = 1
		@secret_grid [0][9] = 1
		@secret_grid [2][3] = 1
		@secret_grid [9][3] = 1
		@secret_grid [3][7] = 1
		@secret_grid [8][2] = 1
		@secret_grid [3][1] = 1
	end
	#make a function to define the user grid
	def PrintGrid
		(0..9).each do |i| #vertical parent grid
			(0..19).each do |j| #horizontal nested array
				print @user_grid[i][j]
			end
		puts
		end
		return @user_grid
	end

	def ChangeUserGrid xcoord, ycoord
		@user_grid[ycoord][xcoord] = 1
		(0..9).each do |i| #vertical parent grid
			(0..19).each do |j| #horizontal nested array
				print @user_grid[i][j]
			end
			puts
		end
		return @user_grid
	end


end