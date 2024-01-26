var cellSize = 32
var totalHeightCells = room_height / cellSize
var totalWidthCells = room_width / cellSize

global.MapGrid = mp_grid_create(0, 0, totalWidthCells, totalHeightCells, cellSize, cellSize)
mp_grid_add_instances(global.MapGrid, HitboxTile, true)
mp_grid_add_instances(global.MapGrid, HitboxTileNoShadows, true)