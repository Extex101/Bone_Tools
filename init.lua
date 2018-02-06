
if minetest.get_modpath("farming") then
   farming.register_hoe("bone_tools:bone_hoe", {
	description = "Bone Hoe",
	inventory_image = "bone_tools_bone_hoe.png",
	max_uses = 100,
	material = "bone_tools:bone",
})
end

minetest.register_craftitem("bone_tools:bone", {
	description = "Bone",
	inventory_image = "bone_tools_bone.png",
})
minetest.register_craft({
    output = "bone_tools:bone",
    recipe = {
        {"bones:bones"},
    }
})

--Batleaxe
minetest.register_tool("bone_tools:bone_battleaxe", {
	description = "Bone Battleaxe",
	inventory_image = "bone_tools_bone_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.25,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.25, [2]=2.00, [3]=1.75}, uses=5, maxlevel=1},
			snappy={times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2.5},
	},
})
--Warhammer
minetest.register_tool("bone_tools:bone_warhammer", {
	description = "Bone Warhammer",
	inventory_image = "bone_tools_bone_warhammer.png",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=3, [2]=1.80, [3]=1.00}, uses=5, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
})
--Spear
minetest.register_tool("bone_tools:bone_spear", {
	description = "Bone Spear",
	inventory_image = "bone_tools_bone_spear.png",
	wield_image = "bone_tools_bone_spear.png^[transformFX",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.70, [2]=1.70, [3]=0.70}, uses=5, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})
minetest.register_tool("bone_tools:bone_sword", {
	description = "Bone Sword",
	inventory_image = "bone_tools_bone_sword.png",
	tool_capabilities = {
		full_punch_interval = 2.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})
minetest.register_tool("bone_tools:bone_dagger", {
	description = "Bone Dagger",
	inventory_image = "bone_tools_bone_dagger.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.25, [3]=0.75}, uses=5, maxlevel=1},
		},
		damage_groups = {fleshy=2.5},
	}
})
minetest.register_tool("bone_tools:bone_pick", {
	description = "Bone Pickaxe",
	inventory_image = "bone_tools_bone_pickaxe.png",
	range = 7,
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.25, [3]=0.75}, uses=5, maxlevel=1},
		},
		damage_groups = {fleshy=2.5},
	}
})
minetest.register_tool("bone_tools:bone_axe", {
	description = "Bone Axe",
	inventory_image = "bone_tools_bone_axe.png",
	range = 7,
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.30}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("bone_tools:bone_shovel", {
	description = "Bone Shovel",
	inventory_image = "bone_tools_bone_shovel.png",
	wield_image = "bone_tools_bone_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
    output = "bone_tools:bone_sword",
    recipe = {
        {"bone_tools:bone"},
        {"bone_tools:bone"},
        {"group:stick"}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_spear",
    recipe = {
        {"","bone_tools:bone",""},
        {"bone_tools:bone","group:stick","bone_tools:bone"},
        {"","group:stick",""}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_dagger",
    recipe = {
        {"bone_tools:bone"},
        {"group:stick"}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_battleaxe",
    recipe = {
        {"bone_tools:bone","bone_tools:bone","bone_tools:bone"},
        {"bone_tools:bone","bone_tools:bone","bone_tools:bone"},
        {"","group:stick",""}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_warhammer",
    recipe = {
        {"bone_tools:bone","bone_tools:bone","bone_tools:bone"},
        {"bone_tools:bone","group:stick","bone_tools:bone"},
        {"","group:stick",""}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_pick",
    recipe = {
        {"bone_tools:bone","bone_tools:bone","bone_tools:bone"},
        {"","group:stick",""},
        {"","group:stick",""}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_axe",
    recipe = {
        {"bone_tools:bone","bone_tools:bone",""},
        {"bone_tools:bone","group:stick",""},
        {"","group:stick",""}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_axe",
    recipe = {
        {"","bone_tools:bone","bone_tools:bone"},
        {"","group:stick","bone_tools:bone"},
        {"","group:stick",""}
    }
})
minetest.register_craft({
    output = "bone_tools:bone_shovel",
    recipe = {
        {"bone_tools:bone"},
        {"group:stick"},
        {"group:stick"}
    }
})
