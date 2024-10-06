//Script to be called by arena spawner objects, triggered by entering a camera classified as an arena.
// _doors: list of sliding door objects to lock.
function trigger_arena(_doors, _spawner) {
	for (var _door = 0; _door < array_length(_doors); _door++) {
		_door.locked = true
	}
	
	_spawner.active = true
	_spawner.doors = _doors
}

function end_arena(_doors) {
	for (var _door = 0; _door < array_length(_doors); _door++) {
		_door.locked = false
	}
}