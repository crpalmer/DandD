extends InventoryThing

@export var healing_dice = { "n": 2, "d": 4, "plus": 4 }

func used_by(who:Actor) -> bool:
	var res = false
	if who.has_method("give_hit_points") and may_use():
		res = super.used_by(who)
		who.give_hit_points(GameEngine.roll(healing_dice))
	return res
