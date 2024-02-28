description = 
[[
Character-inspired furniture sets.
Original by Neckpunch!.

-V1.1.2-
Fixed vanilla global spacing. Now when the vanilla option is selected, all items should have their default spacing back.

-V1.1.1-
Added option for recipes to require the Sawhorse. (Off by Default)

-V1.1-
Added the option to have Global Spacing. If you use this mod and "Realistic Placement", you will no longer need it and only require this mod as I have added code to do the exact same thing, but with configurable options. 
(Yes, it will apply to all recipes (Results may vary with other modded items))

-V1.0.2-
Fixed characters falling through the chairs when trying to sit on them. Players offset is now set correctly.

-V1.0.1-
Added the "sittable" component to chairs. This is just the default code for sitting taken from the Relic Chairs. It will look weird on some chairs.
Any Chair that has "R" at the end of the name, is going to be facing the wrong way compared to the player model. I may look into it another time.
Configurable in the settings to enable or disable. 

-V1.0-
Updated recipe codes to match the latest API changes. 
Recreated the Furniture tab (Now called "filters" instead of tabs) with the latest filter changes.
]]

name                        = "Furniture Megapack"
author                      = "Im So HM02 (Original by Neckpunch!)"
version                     = "1.1.2"
forumthread                 = ""
icon                        = "modicon.tex"
icon_atlas                  = "modicon.xml"
api_version                 = 10
all_clients_require_mod     = true
dst_compatible              = true
client_only_mod             = false

--Configs

local Options = {{description = "Enabled", data = true}, {description = "Disabled", data = false}}

local Spacing = {{description = "No Spacing", data = 0},{description = "VERY Tight Spacing", data = 0.5}, {description = "Tight Spacing (1)", data = 1}, {description = "Vanilla", data = 2}}

local Empty = {{description = "", data = 0}}

local function Title(title) --Allows use of an empty label as a header
return {name=title, options=Empty, default=0,}
end

local SEPARATOR = Title("")

configuration_options =
{
	Title("Settings"),
	{
		name	= "enable_sittable",
		label	= "Chair Sitting",
		options = Options,
		default = false,
	},

	{
		name = "spacing",
		label = "Global Item Spacing",
		options = Spacing,
		default = 2
	},

	{
		name = "sawhorse",
		label = "Require Sawhorse?",
		options = Options,
		default = false,
	},
}