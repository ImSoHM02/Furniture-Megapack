description = 
[[
Character-inspired furniture sets.
Original by Neckpunch!.

-V1.1.3-
Fixed Cabin Table crashing the game when trying to place.

-V1.1.2-
Fixed vanilla global spacing. Now when the vanilla option is selected, all items should have their default spacing back.

-V1.1.1-
Added option for recipes to require the Sawhorse. (Off by Default)
]]

name                        = "Furniture Megapack"
author                      = "Im So HM02 (Original by Neckpunch!)"
version                     = "1.1.3"
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