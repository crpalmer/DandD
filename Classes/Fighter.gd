extends Class

func hit_dice(): return GameEngine.Dice(1, 10)
func initial_hit_points(): return 10
# func proficient_with(thing): return false
# special abilities, like second wind for figher

func ability_improvement_at_level(level):
	match(level):
		0,1,2,3: return 0
		4,5: return 1
		6,7: return 2
		8,9,10,11: return 3
		12,13,14,15: return 4
		16, 17, 18: return 5
	return 6
		
func number_of_attacks(level):
	if level <= 4: return 1
	if level <= 10: return 2
	if level <= 19: return 3
	return 4

func strength_modifier(strength, level):
	return super.strength_modifier(strength, level) + profiency_modifier(level)

func constitution_modifier(constitution, level):
	return super.constitution_modifier(constitution, level) + profiency_modifier(level)
