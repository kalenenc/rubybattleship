#show the user the grid
#ask them where they want to shoot
#enter the coordinates and if the coordinates match a coordinate in secret grid, update secret grid


user_grid = Array.new(10)  {Array.new(20){0}}
                            # ^---the second array is inside the main grid
#This simply writes the grid, it doesn't define it
# vvv-------------
(0..9).each do |i| #vertical parent grid
    (0..19).each do |j| #horizontal nested array
        print user_grid[i][j]
    end
    puts
end
#define where you want the ships to be

secret_grid = Array.new(10)  {Array.new(20){0}}
secret_grid [3][6] = 1
secret_grid [6][4] = 1
secret_grid [2][2] = 1
secret_grid [0][9] = 1
secret_grid [2][3] = 1
secret_grid [9][3] = 1
secret_grid [3][7] = 1
secret_grid [8][2] = 1
secret_grid [3][1] = 1
def change_grid xcoord, ycoord, user_grid
    user_grid[ycoord][xcoord] = 1
    (0..9).each do |i| #vertical parent grid
    (0..19).each do |j| #horizontal nested array
        print user_grid[i][j]
    end
    puts
end
end
#[y][x]
counter = 9
while counter > 0
    puts "Enter the x coordinate to see if you hit the ship"
    xcoord = gets.chomp.to_i
    puts "Enter the y coordinate of your ship"
    ycoord = gets.chomp.to_i
    if secret_grid[ycoord][xcoord] == 1
        puts "You hit a ship!"
        #update user grid to reflect change
        change_grid xcoord, ycoord, user_grid
        counter = counter - 1           
    else
        puts "Sorry, you didn't hit a ship!"
    end
end
puts "Congrats, you won!"