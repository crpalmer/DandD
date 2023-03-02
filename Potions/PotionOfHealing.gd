extends InventoryThing

@export var healing_dice = { "n": 2, "d": 4, "plus": 4 }

func used_by(who:Actor):
	if who.has_method("give_hit_points") and may_use():
		super.used_by(who)
		who.give_hit_points(GameEngine.roll(healing_dice))
