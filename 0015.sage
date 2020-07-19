grid_size = 20
grid = []

for _ in range(grid_size + 1):
    grid.append([0] * (grid_size + 1))

# Initialize the grid with boundary conditions
for i in range(grid_size):
    grid[i][grid_size] = 1
    grid[grid_size][i] = 1

for i in reversed(range(grid_size)):
    for j in reversed(range(grid_size)):
        grid[i][j] = grid[i + 1][j] + grid[i][j + 1]

print(grid[0][0])
