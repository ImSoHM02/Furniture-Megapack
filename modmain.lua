	STRINGS = GLOBAL.STRINGS
    Recipe = GLOBAL.Recipe
    Ingredient = GLOBAL.Ingredient
    TECH = GLOBAL.TECH
    Vector3 = GLOBAL.Vector3
    containers = GLOBAL.require "containers"


PrefabFiles = 
{
-----Charlies Garden? or something?
    "fountain_werepig",
    
-----Inventors Collection
    "workbench",
    "workchair1",
    "workchair2",
	"geniusign",
    "whirlygismo",
    "electricthingamajig",
    "metaldoohicky",

-----Pyre Pack
	"firetable",
	"beanbag1",
	"beanbag2",
	"burningman",
	"burningmanfirefire",

-----Little Girl Possessions
    "girlytable",
    "girlychair1",
    "girlychair2",
    "girlydisplay",
    "dollhouse",
   
-----Inflatables 
    "balloonarch",
    "balloontable",
    "balloonchair",
    
-----Circus Chic
    "circustable",
    "circuschair1",
    "circuschair2",
    "circusdrawer",
    "barbell",
    
-----Cabin Furniture
    "cabintable",
    "cabinchair1",
    "cabinchair2",
    "cabinshelves",
    
-----Ragnarok Stock
    "wartable",
    "warchair1",
    "warchair2",
    "pigroast",
    "weaponsrack",
    
-----Authors Abode
    "authordesk",
    "authorchair1",
    "authorchair2",
    "bookcase",
    
-----Spooky Hodgepodge
    "spidertable",
    "spiderchair1",
    "spiderchair2",
    "toychest",
    
-----Steampunk
    "geartable",
    "gearchair1",
    "gearchair2",
    "geardrawer",
    
-----Distinguished and Detested
    "kinglytable",
    "kinglychair1",
    "kinglychair2",
    "chesset",
    "coatrack",

    "tents",
}

Assets = 
{
    -----Unnamed Garden stuff
    Asset("ATLAS", "images/inventoryimages/fountain_werepig.xml"),
    Asset("IMAGE", "images/inventoryimages/fountain_werepig.tex"),
    
    -----Inventors Collection
    Asset("ATLAS", "images/inventoryimages/workbench.xml"),
    Asset("IMAGE", "images/inventoryimages/workbench.tex"),
	Asset("ATLAS", "images/inventoryimages/workchair1.xml"),
    Asset("IMAGE", "images/inventoryimages/workchair1.tex"),
	Asset("ATLAS", "images/inventoryimages/workchair2.xml"),
    Asset("IMAGE", "images/inventoryimages/workchair2.tex"),
	Asset("ATLAS", "images/inventoryimages/geniusign.xml"),
    Asset("IMAGE", "images/inventoryimages/geniusign.tex"),
	Asset("ATLAS", "images/inventoryimages/whirlygismo.xml"),
    Asset("IMAGE", "images/inventoryimages/whirlygismo.tex"),
	Asset("ATLAS", "images/inventoryimages/electricthingamajig.xml"),
    Asset("IMAGE", "images/inventoryimages/electricthingamajig.tex"),
	Asset("ATLAS", "images/inventoryimages/metaldoohicky.xml"),
    Asset("IMAGE", "images/inventoryimages/metaldoohicky.tex"),
    
-----Pyre Pack
    Asset("ATLAS", "images/inventoryimages/firetent.xml"),
    Asset("IMAGE", "images/inventoryimages/firetent.tex"),
	Asset("ATLAS", "images/inventoryimages/firetable.xml"),
    Asset("IMAGE", "images/inventoryimages/firetable.tex"),
	Asset("ATLAS", "images/inventoryimages/beanbag1.xml"),
    Asset("IMAGE", "images/inventoryimages/beanbag1.tex"),
	Asset("ATLAS", "images/inventoryimages/beanbag2.xml"),
    Asset("IMAGE", "images/inventoryimages/beanbag2.tex"),
	Asset("ATLAS", "images/inventoryimages/burningman.xml"),
    Asset("IMAGE", "images/inventoryimages/burningman.tex"),
    
-----Little Girl Possessions
    Asset("ATLAS", "images/inventoryimages/girlytent.xml"),
    Asset("IMAGE", "images/inventoryimages/girlytent.tex"),
	Asset("ATLAS", "images/inventoryimages/girlytable.xml"),
    Asset("IMAGE", "images/inventoryimages/girlytable.tex"),
	Asset("ATLAS", "images/inventoryimages/girlychair1.xml"),
    Asset("IMAGE", "images/inventoryimages/girlychair1.tex"),
	Asset("ATLAS", "images/inventoryimages/girlychair2.xml"),
    Asset("IMAGE", "images/inventoryimages/girlychair2.tex"),
	Asset("ATLAS", "images/inventoryimages/girlydisplay.xml"),
    Asset("IMAGE", "images/inventoryimages/girlydisplay.tex"),
	Asset("ATLAS", "images/inventoryimages/dollhouse.xml"),
    Asset("IMAGE", "images/inventoryimages/dollhouse.tex"),
    
-----Inflatables 
    Asset("ATLAS", "images/inventoryimages/balloontent.xml"),
    Asset("IMAGE", "images/inventoryimages/balloontent.tex"),
    Asset("ATLAS", "images/inventoryimages/balloontable.xml"),
    Asset("IMAGE", "images/inventoryimages/balloontable.tex"),
    Asset("ATLAS", "images/inventoryimages/balloonchair.xml"),
    Asset("IMAGE", "images/inventoryimages/balloonchair.tex"),
	Asset("ATLAS", "images/inventoryimages/balloonarch.xml"),
    Asset("IMAGE", "images/inventoryimages/balloonarch.tex"),
    
-----Circus Chic
    Asset("ATLAS", "images/inventoryimages/circustent.xml"),
    Asset("IMAGE", "images/inventoryimages/circustent.tex"),
	Asset("ATLAS", "images/inventoryimages/circustable.xml"),
    Asset("IMAGE", "images/inventoryimages/circustable.tex"),
	Asset("ATLAS", "images/inventoryimages/circuschair1.xml"),
    Asset("IMAGE", "images/inventoryimages/circuschair1.tex"),
	Asset("ATLAS", "images/inventoryimages/circuschair2.xml"),
    Asset("IMAGE", "images/inventoryimages/circuschair2.tex"),
	Asset("ATLAS", "images/inventoryimages/circusdrawer.xml"),
    Asset("IMAGE", "images/inventoryimages/circusdrawer.tex"),
    Asset("ATLAS", "images/inventoryimages/barbell.xml"),
    Asset("IMAGE", "images/inventoryimages/barbell.tex"),
    
-----Cabin Furniture
    Asset("ATLAS", "images/inventoryimages/cabintent.xml"),
    Asset("IMAGE", "images/inventoryimages/cabintent.tex"),
	Asset("ATLAS", "images/inventoryimages/cabintable.xml"),
    Asset("IMAGE", "images/inventoryimages/cabintable.tex"),
	Asset("ATLAS", "images/inventoryimages/cabinchair1.xml"),
    Asset("IMAGE", "images/inventoryimages/cabinchair1.tex"),
	Asset("ATLAS", "images/inventoryimages/cabinchair2.xml"),
    Asset("IMAGE", "images/inventoryimages/cabinchair2.tex"),
	Asset("ATLAS", "images/inventoryimages/cabinshelves.xml"),
    Asset("IMAGE", "images/inventoryimages/cabinshelves.tex"),
    
-----Ragnarok Stock
    Asset("ATLAS", "images/inventoryimages/wartent.xml"),
    Asset("IMAGE", "images/inventoryimages/wartent.tex"),
	Asset("ATLAS", "images/inventoryimages/wartable.xml"),
    Asset("IMAGE", "images/inventoryimages/wartable.tex"),
	Asset("ATLAS", "images/inventoryimages/warchair1.xml"),
    Asset("IMAGE", "images/inventoryimages/warchair1.tex"),
	Asset("ATLAS", "images/inventoryimages/warchair2.xml"),
    Asset("IMAGE", "images/inventoryimages/warchair2.tex"),
	Asset("ATLAS", "images/inventoryimages/pigroast.xml"),
    Asset("IMAGE", "images/inventoryimages/pigroast.tex"),
	Asset("ATLAS", "images/inventoryimages/weaponsrack.xml"),
    Asset("IMAGE", "images/inventoryimages/weaponsrack.tex"),
    
-----Authors Abode
    Asset("ATLAS", "images/inventoryimages/authordesk.xml"),
    Asset("IMAGE", "images/inventoryimages/authordesk.tex"),
	Asset("ATLAS", "images/inventoryimages/authorchair1.xml"),
    Asset("IMAGE", "images/inventoryimages/authorchair1.tex"),
	Asset("ATLAS", "images/inventoryimages/authorchair2.xml"),
    Asset("IMAGE", "images/inventoryimages/authorchair2.tex"),
	Asset("ATLAS", "images/inventoryimages/bookcase.xml"),
    Asset("IMAGE", "images/inventoryimages/bookcase.tex"),
    
-----Spooky Hodgepodge
    Asset("ATLAS", "images/inventoryimages/spidertent.xml"),
    Asset("IMAGE", "images/inventoryimages/spidertent.tex"),
	Asset("ATLAS", "images/inventoryimages/spidertable.xml"),
    Asset("IMAGE", "images/inventoryimages/spidertable.tex"),
	Asset("ATLAS", "images/inventoryimages/spiderchair1.xml"),
    Asset("IMAGE", "images/inventoryimages/spiderchair1.tex"),
	Asset("ATLAS", "images/inventoryimages/spiderchair2.xml"),
    Asset("IMAGE", "images/inventoryimages/spiderchair2.tex"),
    Asset("ATLAS", "images/inventoryimages/toychest.xml"),
    Asset("IMAGE", "images/inventoryimages/toychest.tex"),
    
-----Steampunk
    Asset("ATLAS", "images/inventoryimages/geartent.xml"),
    Asset("IMAGE", "images/inventoryimages/geartent.tex"),
	Asset("ATLAS", "images/inventoryimages/geartable.xml"),
    Asset("IMAGE", "images/inventoryimages/geartable.tex"),
	Asset("ATLAS", "images/inventoryimages/gearchair1.xml"),
    Asset("IMAGE", "images/inventoryimages/gearchair1.tex"),
	Asset("ATLAS", "images/inventoryimages/gearchair2.xml"),
    Asset("IMAGE", "images/inventoryimages/gearchair2.tex"),
	Asset("ATLAS", "images/inventoryimages/geardrawer.xml"),
    Asset("IMAGE", "images/inventoryimages/geardrawer.tex"),
    
-----Distinguished and Detested
    Asset("ATLAS", "images/inventoryimages/kinglytent.xml"),
    Asset("IMAGE", "images/inventoryimages/kinglytent.tex"),
	Asset("ATLAS", "images/inventoryimages/kinglytable.xml"),
    Asset("IMAGE", "images/inventoryimages/kinglytable.tex"),
	Asset("ATLAS", "images/inventoryimages/kinglychair1.xml"),
    Asset("IMAGE", "images/inventoryimages/kinglychair1.tex"),
	Asset("ATLAS", "images/inventoryimages/kinglychair2.xml"),
    Asset("IMAGE", "images/inventoryimages/kinglychair2.tex"),
    Asset("ATLAS", "images/inventoryimages/chesset.xml"),
    Asset("IMAGE", "images/inventoryimages/chesset.tex"),
    Asset("ATLAS", "images/inventoryimages/coatrack.xml"),
    Asset("IMAGE", "images/inventoryimages/coatrack.tex"),


-----Filter Assets-----
    Asset( "ATLAS", "images/inventoryimages/furniture_tab.xml"),
    Asset( "IMAGE", "images/inventoryimages/furniture_tab.tex"),
}


-----Filter Tab-----
GLOBAL.STRINGS.UI.CRAFTING_FILTERS["FURNITURE"] = "Furniture"

AddRecipeFilter(
    { -- filter_def
        name = "FURNITURE", -- internal name.
        atlas = "images/inventoryimages/furniture_tab.xml",
        image = "furniture_tab.tex",
    },
    5 -- index
)

sawhorse = GetModConfigData("sawhorse")

-----Recipes-----
if sawhorse == false then
    AddRecipe2("fountain_werepig", 
    {
        Ingredient("moonrocknugget", 10),
        Ingredient("ice", 5),
    }, 
    TECH.SCIENCE_ONE, "fountain_werepig_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/fountain_werepig.xml", "fountain_werepig.tex")
    
    AddRecipe2("workbench", 
    {
        Ingredient("boards", 2),
        Ingredient("hammer", 1),
        Ingredient("goldnugget", 1),
    }, 
    TECH.SCIENCE_ONE, "workbench_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/workbench.xml", "workbench.tex")
    
    AddRecipe2("workchair1", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 4),
    }, 
    TECH.SCIENCE_ONE, "workchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/workchair1.xml", "workchair1.tex")
    
    AddRecipe2("workchair2", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 4),
    }, 
    TECH.SCIENCE_ONE, "workchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/workchair2.xml", "workchair2.tex")
    
    AddRecipe2("geniusign", 
    {
        Ingredient("boards", 1),
        Ingredient("charcoal", 1),
    }, 
    TECH.SCIENCE_ONE, "geniusign_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geniusign.xml", "geniusign.tex")
    
    AddRecipe2("whirlygismo", 
    {
        Ingredient("transistor", 1),
        Ingredient("cutstone", 1),
    }, 
    TECH.SCIENCE_ONE, "whirlygismo_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/whirlygismo.xml", "whirlygismo.tex")
    
    AddRecipe2("electricthingamajig", 
    {
        Ingredient("transistor", 1),
        Ingredient("cutstone", 1),
    }, 
    TECH.SCIENCE_ONE, "electricthingamajig_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/electricthingamajig.xml", "electricthingamajig.tex")
    
    AddRecipe2("metaldoohicky", 
    {
        Ingredient("transistor", 1),
        Ingredient("cutstone", 1),
    }, 
    TECH.SCIENCE_ONE, "metaldoohicky_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/metaldoohicky.xml", "metaldoohicky.tex")
    
    AddRecipe2("firetent", 
    {
        Ingredient("charcoal", 6),
        Ingredient("twigs", 3),
        Ingredient("silk", 3),
    }, 
    TECH.SCIENCE_ONE, "firetent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/firetent.xml", "firetent.tex")
    
    AddRecipe2("firetable", 
    {
        Ingredient("boards", 2),
        Ingredient("charcoal", 2),
        Ingredient("twigs", 2),
    }, 
    TECH.SCIENCE_ONE, "firetable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/firetable.xml", "firetable.tex")
    
    AddRecipe2("beanbag1", 
    {
        Ingredient("mosquitosack", 2),
        Ingredient("charcoal", 3),
    }, 
    TECH.SCIENCE_ONE, "beanbag1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/beanbag1.xml", "beanbag1.tex")
    
    AddRecipe2("beanbag2", 
    {
        Ingredient("mosquitosack", 2),
        Ingredient("charcoal", 3),
    }, 
    TECH.SCIENCE_ONE, "beanbag2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/beanbag2.xml", "beanbag2.tex")
    
    AddRecipe2("burningman", 
    {
        Ingredient("boards", 3),
        Ingredient("charcoal", 3),
    }, 
    TECH.SCIENCE_ONE, "burningman_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/burningman.xml", "burningman.tex")
        
    AddRecipe2("girlytent", 
    {
        Ingredient("silk", 3),
        Ingredient("twigs", 2),
        Ingredient("petals", 10),
    }, 
    TECH.SCIENCE_ONE, "girlytent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlytent.xml", "girlytent.tex")
    
    AddRecipe2("girlytable", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 5),
        Ingredient("twigs", 4),
    }, 
    TECH.SCIENCE_ONE, "girlytable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlytable.xml", "girlytable.tex")
    
    AddRecipe2("girlychair1", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 3),
        Ingredient("twigs", 3),
    }, 
    TECH.SCIENCE_ONE, "girlychair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlychair1.xml", "girlychair1.tex")
    
    AddRecipe2("girlychair2", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 3),
        Ingredient("twigs", 3),
    }, 
    TECH.SCIENCE_ONE, "girlychair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlychair2.xml", "girlychair2.tex")
    
    AddRecipe2("girlydisplay", 
    {
        Ingredient("boards", 3),
        Ingredient("butterfly", 5),
        Ingredient("twigs", 3),
    }, 
    TECH.SCIENCE_ONE, "girlydisplay_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlydisplay.xml", "girlydisplay.tex")
    
    AddRecipe2("dollhouse", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 3),
        Ingredient("rocks", 3),
    }, 
    TECH.SCIENCE_ONE, "dollhouse_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/dollhouse.xml", "dollhouse.tex")
    
    AddRecipe2("balloontent", 
    {
        Ingredient("mosquitosack", 5),
    }, 
    TECH.SCIENCE_ONE, "balloontent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloontent.xml", "balloontent.tex")
    
    AddRecipe2("balloontable", 
    {
        Ingredient("mosquitosack", 4),
    }, 
    TECH.SCIENCE_ONE, "balloontable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloontable.xml", "balloontable.tex")
    
    AddRecipe2("balloonchair", 
    {
        Ingredient("mosquitosack", 2),
    }, 
    TECH.SCIENCE_ONE, "balloonchair_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloonchair.xml", "balloonchair.tex")
    
    AddRecipe2("balloonarch", 
    {
        Ingredient("mosquitosack", 6),
    }, 
    TECH.SCIENCE_ONE, "balloonarch_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloonarch.xml", "balloonarch.tex")
    
    AddRecipe2("circustent", 
    {
        Ingredient("twigs", 2),
        Ingredient("cutgrass", 6),
        Ingredient("berries", 6),
    }, 
    TECH.SCIENCE_ONE, "circustent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circustent.xml", "circustent.tex")
        
    AddRecipe2("circustable", 
    {
        Ingredient("boards", 1),
        Ingredient("berries", 5),
        Ingredient("twigs", 3),
    
    }, 
    TECH.SCIENCE_ONE, "circustable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circustable.xml", "circustable.tex")
    
    AddRecipe2("circuschair1", 
    {
        Ingredient("boards", 2),
        Ingredient("beefalowool", 3),
        Ingredient("berries", 4),
    }, 
    TECH.SCIENCE_ONE, "circuschair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circuschair1.xml", "circuschair1.tex")
    
    AddRecipe2("circuschair2", 
    {
        Ingredient("boards", 2),
        Ingredient("beefalowool", 3),
        Ingredient("berries", 4),
    }, 
    TECH.SCIENCE_ONE, "circuschair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circuschair2.xml", "circuschair2.tex")
    
    AddRecipe2("circusdrawer", 
    {
        Ingredient("boards", 3),
        Ingredient("berries", 3),
        Ingredient("twigs", 2),
    }, 
    TECH.SCIENCE_ONE, "circusdrawer_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circusdrawer.xml", "circusdrawer.tex")
    
    AddRecipe2("barbell", 
    {
        Ingredient("rocks", 12),
        Ingredient("log", 1),
    }, 
    TECH.SCIENCE_ONE, "barbell_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/barbell.xml", "barbell.tex")
    
    AddRecipe2("cabintent", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 6),
        Ingredient("rope", 2),
    }, 
    TECH.SCIENCE_ONE, "cabintent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabintent.xml", "cabintent.tex")
    
    AddRecipe2("cabintable", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 2),
    }, 
    TECH.SCIENCE_ONE, "cabintable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabintable.xml", "cabintable.tex")
    
    AddRecipe2("cabinchair1", 
    {
        Ingredient("boards", 1),
        Ingredient("twigs", 3),
    }, 
    TECH.SCIENCE_ONE, "cabinchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabinchair1.xml", "cabinchair1.tex")
    
    AddRecipe2("cabinchair2", 
    {
        Ingredient("boards", 1),
        Ingredient("twigs", 3),
    }, 
    TECH.SCIENCE_ONE, "cabinchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabinchair2.xml", "cabinchair2.tex")
    
    AddRecipe2("cabinshelves", 
    {
        Ingredient("boards", 1),
        Ingredient("twigs", 3),
    }, 
    TECH.SCIENCE_ONE, "cabinshelves_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabinshelves.xml", "cabinshelves.tex")
    
    AddRecipe2("wartent", 
    {
        Ingredient("beefalowool", 10),
        Ingredient("twigs", 2),
        Ingredient("rope", 1),
    }, 
    TECH.SCIENCE_ONE, "wartent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/wartent.xml", "wartent.tex")
    
    AddRecipe2("wartable", 
    {
        Ingredient("boards", 2),
        Ingredient("beefalowool", 2),
        Ingredient("log", 2),
    }, 
    TECH.SCIENCE_ONE, "wartable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/wartable.xml", "wartable.tex")
    
    AddRecipe2("warchair1", 
    {
        Ingredient("boards", 1),
        Ingredient("beefalowool", 1),
        Ingredient("twigs", 2),
    }, 
    TECH.SCIENCE_ONE, "warchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/warchair1.xml", "warchair1.tex")
    
    AddRecipe2("warchair2", 
    {
        Ingredient("boards", 1),
        Ingredient("beefalowool", 1),
        Ingredient("twigs", 2),
    }, 
    TECH.SCIENCE_ONE, "warchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/warchair2.xml", "warchair2.tex")
    
    AddRecipe2("pigroast", 
    {
        Ingredient("meat", 4),
        Ingredient("twigs", 3),
        Ingredient("charcoal", 3),
    }, 
    TECH.SCIENCE_ONE, "pigroast_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/pigroast.xml", "pigroast.tex")
    
    AddRecipe2("weaponsrack", 
    {
        Ingredient("boards", 4),
        Ingredient("rope", 1),
        Ingredient("spear", 1),
    }, 
    TECH.SCIENCE_ONE, "weaponsrack_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/weaponsrack.xml", "weaponsrack.tex")
    
    AddRecipe2("authordesk", 
    {
        Ingredient("boards", 2),
        Ingredient("lightbulb", 1),
        Ingredient("featherpencil", 1),
        Ingredient("papyrus", 1),
    }, 
    TECH.SCIENCE_ONE, "authordesk_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/authordesk.xml", "authordesk.tex")
    
    AddRecipe2("authorchair1", 
    {
        Ingredient("boards", 1),
        Ingredient("papyrus", 2),
    }, 
    TECH.SCIENCE_ONE, "authorchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/authorchair1.xml", "authorchair1.tex")
    
    AddRecipe2("authorchair2", 
    {
        Ingredient("boards", 1),
        Ingredient("papyrus", 2),
    }, 
    TECH.SCIENCE_ONE, "authorchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/authorchair2.xml", "authorchair2.tex")
    
    AddRecipe2("bookcase", 
    {
        Ingredient("boards", 4),
        Ingredient("papyrus", 4),
    }, 
    TECH.SCIENCE_ONE, "bookcase_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/bookcase.xml", "bookcase.tex")
    
    AddRecipe2("spidertent", 
    {
        Ingredient("silk", 6),
        Ingredient("twigs", 3),
        Ingredient("rope", 1),
    }, 
    TECH.SCIENCE_ONE, "spidertent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spidertent.xml", "spidertent.tex")
    
    AddRecipe2("spidertable", 
    {
        Ingredient("boards", 2),
        Ingredient("silk", 2),
    }, 
    TECH.SCIENCE_ONE, "spidertable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spidertable.xml", "spidertable.tex")
    
    AddRecipe2("spiderchair1", 
    {
        Ingredient("log", 2),
        Ingredient("silk", 2),
    }, 
    TECH.SCIENCE_ONE, "spiderchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spiderchair1.xml", "spiderchair1.tex")
    
    AddRecipe2("spiderchair2", 
    {
        Ingredient("log", 2),
        Ingredient("silk", 2),
    }, 
    TECH.SCIENCE_ONE, "spiderchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spiderchair2.xml", "spiderchair2.tex")
    
    AddRecipe2("toychest", 
    {
        Ingredient("silk", 2),
        Ingredient("boards", 3),
    }, 
    TECH.SCIENCE_ONE, "toychest_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/toychest.xml", "toychest.tex")
    
    AddRecipe2("geartent", 
    {
        Ingredient("boards", 3),
        Ingredient("gears", 4),
        Ingredient("transistor", 1),
    }, 
    TECH.SCIENCE_ONE, "geartent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geartent.xml", "geartent.tex")
    
    AddRecipe2("geartable", 
    {
        Ingredient("boards", 1),
        Ingredient("gears", 1),
    }, 
    TECH.SCIENCE_ONE, "geartable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geartable.xml", "geartable.tex")
    
    AddRecipe2("gearchair1", 
    {
        Ingredient("pigskin", 1),
        Ingredient("gears", 1),
    }, 
    TECH.SCIENCE_ONE, "gearchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/gearchair1.xml", "gearchair1.tex")
    
    AddRecipe2("gearchair2", 
    {
        Ingredient("pigskin", 1),
        Ingredient("gears", 1),
    }, 
    TECH.SCIENCE_ONE, "gearchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/gearchair2.xml", "gearchair2.tex")
    
    AddRecipe2("geardrawer", 
    {
        Ingredient("boards", 3),
        Ingredient("twigs", 2),
        Ingredient("gears", 2),
    }, 
    TECH.SCIENCE_ONE, "geardrawer_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geardrawer.xml", "geardrawer.tex")
    
    AddRecipe2("kinglytent", 
    {
        Ingredient("marble", 8),
        Ingredient("papyrus", 2),
        Ingredient("rope", 1),
    }, 
    TECH.SCIENCE_ONE, "kinglytent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglytent.xml", "kinglytent.tex")
        
    AddRecipe2("kinglytable", 
    {
        Ingredient("marble", 4),
    }, 
    TECH.SCIENCE_ONE, "kinglytable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglytable.xml", "kinglytable.tex")
        
    AddRecipe2("kinglychair1", 
    {
        Ingredient("pigskin", 1),
        Ingredient("twigs", 2),
        Ingredient("marble", 1),
    }, 
    TECH.SCIENCE_ONE, "kinglychair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglychair1.xml", "kinglychair1.tex")
    
    AddRecipe2("kinglychair2", 
    {
        Ingredient("pigskin", 1),
        Ingredient("twigs", 2),
        Ingredient("marble", 1),
    }, 
    TECH.SCIENCE_ONE, "kinglychair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglychair2.xml", "kinglychair2.tex")
        
    AddRecipe2("chesset", 
    {
        Ingredient("marble", 1),
        Ingredient("charcoal", 1),
        Ingredient("turf_checkerfloor", 1),
        Ingredient("boards", 2),
    }, 
    TECH.SCIENCE_ONE, "chesset_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/chesset.xml", "chesset.tex")
    
    AddRecipe2("coatrack", 
    {
        Ingredient("marble", 1),
        Ingredient("boards", 2),
    }, 
    TECH.SCIENCE_ONE, "coatrack_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/coatrack.xml", "coatrack.tex")
else
    AddRecipe2("fountain_werepig", 
    {
        Ingredient("moonrocknugget", 10),
        Ingredient("ice", 5),
    }, 
    TECH.CARPENTRY_TWO, "fountain_werepig_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/fountain_werepig.xml", "fountain_werepig.tex")
    
    AddRecipe2("workbench", 
    {
        Ingredient("boards", 2),
        Ingredient("hammer", 1),
        Ingredient("goldnugget", 1),
    }, 
    TECH.CARPENTRY_TWO, "workbench_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/workbench.xml", "workbench.tex")
    
    AddRecipe2("workchair1", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 4),
    }, 
    TECH.CARPENTRY_TWO, "workchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/workchair1.xml", "workchair1.tex")
    
    AddRecipe2("workchair2", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 4),
    }, 
    TECH.CARPENTRY_TWO, "workchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/workchair2.xml", "workchair2.tex")
    
    AddRecipe2("geniusign", 
    {
        Ingredient("boards", 1),
        Ingredient("charcoal", 1),
    }, 
    TECH.CARPENTRY_TWO, "geniusign_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geniusign.xml", "geniusign.tex")
    
    AddRecipe2("whirlygismo", 
    {
        Ingredient("transistor", 1),
        Ingredient("cutstone", 1),
    }, 
    TECH.CARPENTRY_TWO, "whirlygismo_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/whirlygismo.xml", "whirlygismo.tex")
    
    AddRecipe2("electricthingamajig", 
    {
        Ingredient("transistor", 1),
        Ingredient("cutstone", 1),
    }, 
    TECH.CARPENTRY_TWO, "electricthingamajig_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/electricthingamajig.xml", "electricthingamajig.tex")
    
    AddRecipe2("metaldoohicky", 
    {
        Ingredient("transistor", 1),
        Ingredient("cutstone", 1),
    }, 
    TECH.CARPENTRY_TWO, "metaldoohicky_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/metaldoohicky.xml", "metaldoohicky.tex")
    
    AddRecipe2("firetent", 
    {
        Ingredient("charcoal", 6),
        Ingredient("twigs", 3),
        Ingredient("silk", 3),
    }, 
    TECH.CARPENTRY_TWO, "firetent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/firetent.xml", "firetent.tex")
    
    AddRecipe2("firetable", 
    {
        Ingredient("boards", 2),
        Ingredient("charcoal", 2),
        Ingredient("twigs", 2),
    }, 
    TECH.CARPENTRY_TWO, "firetable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/firetable.xml", "firetable.tex")
    
    AddRecipe2("beanbag1", 
    {
        Ingredient("mosquitosack", 2),
        Ingredient("charcoal", 3),
    }, 
    TECH.CARPENTRY_TWO, "beanbag1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/beanbag1.xml", "beanbag1.tex")
    
    AddRecipe2("beanbag2", 
    {
        Ingredient("mosquitosack", 2),
        Ingredient("charcoal", 3),
    }, 
    TECH.CARPENTRY_TWO, "beanbag2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/beanbag2.xml", "beanbag2.tex")
    
    AddRecipe2("burningman", 
    {
        Ingredient("boards", 3),
        Ingredient("charcoal", 3),
    }, 
    TECH.CARPENTRY_TWO, "burningman_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/burningman.xml", "burningman.tex")
        
    AddRecipe2("girlytent", 
    {
        Ingredient("silk", 3),
        Ingredient("twigs", 2),
        Ingredient("petals", 10),
    }, 
    TECH.CARPENTRY_TWO, "girlytent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlytent.xml", "girlytent.tex")
    
    AddRecipe2("girlytable", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 5),
        Ingredient("twigs", 4),
    }, 
    TECH.CARPENTRY_TWO, "girlytable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlytable.xml", "girlytable.tex")
    
    AddRecipe2("girlychair1", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 3),
        Ingredient("twigs", 3),
    }, 
    TECH.CARPENTRY_TWO, "girlychair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlychair1.xml", "girlychair1.tex")
    
    AddRecipe2("girlychair2", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 3),
        Ingredient("twigs", 3),
    }, 
    TECH.CARPENTRY_TWO, "girlychair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlychair2.xml", "girlychair2.tex")
    
    AddRecipe2("girlydisplay", 
    {
        Ingredient("boards", 3),
        Ingredient("butterfly", 5),
        Ingredient("twigs", 3),
    }, 
    TECH.CARPENTRY_TWO, "girlydisplay_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/girlydisplay.xml", "girlydisplay.tex")
    
    AddRecipe2("dollhouse", 
    {
        Ingredient("boards", 1),
        Ingredient("petals", 3),
        Ingredient("rocks", 3),
    }, 
    TECH.CARPENTRY_TWO, "dollhouse_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/dollhouse.xml", "dollhouse.tex")
    
    AddRecipe2("balloontent", 
    {
        Ingredient("mosquitosack", 5),
    }, 
    TECH.CARPENTRY_TWO, "balloontent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloontent.xml", "balloontent.tex")
    
    AddRecipe2("balloontable", 
    {
        Ingredient("mosquitosack", 4),
    }, 
    TECH.CARPENTRY_TWO, "balloontable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloontable.xml", "balloontable.tex")
    
    AddRecipe2("balloonchair", 
    {
        Ingredient("mosquitosack", 2),
    }, 
    TECH.CARPENTRY_TWO, "balloonchair_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloonchair.xml", "balloonchair.tex")
    
    AddRecipe2("balloonarch", 
    {
        Ingredient("mosquitosack", 6),
    }, 
    TECH.CARPENTRY_TWO, "balloonarch_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/balloonarch.xml", "balloonarch.tex")
    
    AddRecipe2("circustent", 
    {
        Ingredient("twigs", 2),
        Ingredient("cutgrass", 6),
        Ingredient("berries", 6),
    }, 
    TECH.CARPENTRY_TWO, "circustent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circustent.xml", "circustent.tex")
        
    AddRecipe2("circustable", 
    {
        Ingredient("boards", 1),
        Ingredient("berries", 5),
        Ingredient("twigs", 3),
    
    }, 
    TECH.CARPENTRY_TWO, "circustable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circustable.xml", "circustable.tex")
    
    AddRecipe2("circuschair1", 
    {
        Ingredient("boards", 2),
        Ingredient("beefalowool", 3),
        Ingredient("berries", 4),
    }, 
    TECH.CARPENTRY_TWO, "circuschair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circuschair1.xml", "circuschair1.tex")
    
    AddRecipe2("circuschair2", 
    {
        Ingredient("boards", 2),
        Ingredient("beefalowool", 3),
        Ingredient("berries", 4),
    }, 
    TECH.CARPENTRY_TWO, "circuschair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circuschair2.xml", "circuschair2.tex")
    
    AddRecipe2("circusdrawer", 
    {
        Ingredient("boards", 3),
        Ingredient("berries", 3),
        Ingredient("twigs", 2),
    }, 
    TECH.CARPENTRY_TWO, "circusdrawer_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/circusdrawer.xml", "circusdrawer.tex")
    
    AddRecipe2("barbell", 
    {
        Ingredient("rocks", 12),
        Ingredient("log", 1),
    }, 
    TECH.CARPENTRY_TWO, "barbell_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/barbell.xml", "barbell.tex")
    
    AddRecipe2("cabintent", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 6),
        Ingredient("rope", 2),
    }, 
    TECH.CARPENTRY_TWO, "cabintent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabintent.xml", "cabintent.tex")
    
    AddRecipe2("cabintable", 
    {
        Ingredient("boards", 2),
        Ingredient("twigs", 2),
    }, 
    TECH.CARPENTRY_TWO, "cabintable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabintable.xml", "cabintable.tex")
    
    AddRecipe2("cabinchair1", 
    {
        Ingredient("boards", 1),
        Ingredient("twigs", 3),
    }, 
    TECH.CARPENTRY_TWO, "cabinchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabinchair1.xml", "cabinchair1.tex")
    
    AddRecipe2("cabinchair2", 
    {
        Ingredient("boards", 1),
        Ingredient("twigs", 3),
    }, 
    TECH.CARPENTRY_TWO, "cabinchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabinchair2.xml", "cabinchair2.tex")
    
    AddRecipe2("cabinshelves", 
    {
        Ingredient("boards", 1),
        Ingredient("twigs", 3),
    }, 
    TECH.CARPENTRY_TWO, "cabinshelves_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/cabinshelves.xml", "cabinshelves.tex")
    
    AddRecipe2("wartent", 
    {
        Ingredient("beefalowool", 10),
        Ingredient("twigs", 2),
        Ingredient("rope", 1),
    }, 
    TECH.CARPENTRY_TWO, "wartent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/wartent.xml", "wartent.tex")
    
    AddRecipe2("wartable", 
    {
        Ingredient("boards", 2),
        Ingredient("beefalowool", 2),
        Ingredient("log", 2),
    }, 
    TECH.CARPENTRY_TWO, "wartable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/wartable.xml", "wartable.tex")
    
    AddRecipe2("warchair1", 
    {
        Ingredient("boards", 1),
        Ingredient("beefalowool", 1),
        Ingredient("twigs", 2),
    }, 
    TECH.CARPENTRY_TWO, "warchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/warchair1.xml", "warchair1.tex")
    
    AddRecipe2("warchair2", 
    {
        Ingredient("boards", 1),
        Ingredient("beefalowool", 1),
        Ingredient("twigs", 2),
    }, 
    TECH.CARPENTRY_TWO, "warchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/warchair2.xml", "warchair2.tex")
    
    AddRecipe2("pigroast", 
    {
        Ingredient("meat", 4),
        Ingredient("twigs", 3),
        Ingredient("charcoal", 3),
    }, 
    TECH.CARPENTRY_TWO, "pigroast_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/pigroast.xml", "pigroast.tex")
    
    AddRecipe2("weaponsrack", 
    {
        Ingredient("boards", 4),
        Ingredient("rope", 1),
        Ingredient("spear", 1),
    }, 
    TECH.CARPENTRY_TWO, "weaponsrack_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/weaponsrack.xml", "weaponsrack.tex")
    
    AddRecipe2("authordesk", 
    {
        Ingredient("boards", 2),
        Ingredient("lightbulb", 1),
        Ingredient("featherpencil", 1),
        Ingredient("papyrus", 1),
    }, 
    TECH.CARPENTRY_TWO, "authordesk_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/authordesk.xml", "authordesk.tex")
    
    AddRecipe2("authorchair1", 
    {
        Ingredient("boards", 1),
        Ingredient("papyrus", 2),
    }, 
    TECH.CARPENTRY_TWO, "authorchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/authorchair1.xml", "authorchair1.tex")
    
    AddRecipe2("authorchair2", 
    {
        Ingredient("boards", 1),
        Ingredient("papyrus", 2),
    }, 
    TECH.CARPENTRY_TWO, "authorchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/authorchair2.xml", "authorchair2.tex")
    
    AddRecipe2("bookcase", 
    {
        Ingredient("boards", 4),
        Ingredient("papyrus", 4),
    }, 
    TECH.CARPENTRY_TWO, "bookcase_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/bookcase.xml", "bookcase.tex")
    
    AddRecipe2("spidertent", 
    {
        Ingredient("silk", 6),
        Ingredient("twigs", 3),
        Ingredient("rope", 1),
    }, 
    TECH.CARPENTRY_TWO, "spidertent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spidertent.xml", "spidertent.tex")
    
    AddRecipe2("spidertable", 
    {
        Ingredient("boards", 2),
        Ingredient("silk", 2),
    }, 
    TECH.CARPENTRY_TWO, "spidertable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spidertable.xml", "spidertable.tex")
    
    AddRecipe2("spiderchair1", 
    {
        Ingredient("log", 2),
        Ingredient("silk", 2),
    }, 
    TECH.CARPENTRY_TWO, "spiderchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spiderchair1.xml", "spiderchair1.tex")
    
    AddRecipe2("spiderchair2", 
    {
        Ingredient("log", 2),
        Ingredient("silk", 2),
    }, 
    TECH.CARPENTRY_TWO, "spiderchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/spiderchair2.xml", "spiderchair2.tex")
    
    AddRecipe2("toychest", 
    {
        Ingredient("silk", 2),
        Ingredient("boards", 3),
    }, 
    TECH.CARPENTRY_TWO, "toychest_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/toychest.xml", "toychest.tex")
    
    AddRecipe2("geartent", 
    {
        Ingredient("boards", 3),
        Ingredient("gears", 4),
        Ingredient("transistor", 1),
    }, 
    TECH.CARPENTRY_TWO, "geartent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geartent.xml", "geartent.tex")
    
    AddRecipe2("geartable", 
    {
        Ingredient("boards", 1),
        Ingredient("gears", 1),
    }, 
    TECH.CARPENTRY_TWO, "geartable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geartable.xml", "geartable.tex")
    
    AddRecipe2("gearchair1", 
    {
        Ingredient("pigskin", 1),
        Ingredient("gears", 1),
    }, 
    TECH.CARPENTRY_TWO, "gearchair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/gearchair1.xml", "gearchair1.tex")
    
    AddRecipe2("gearchair2", 
    {
        Ingredient("pigskin", 1),
        Ingredient("gears", 1),
    }, 
    TECH.CARPENTRY_TWO, "gearchair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/gearchair2.xml", "gearchair2.tex")
    
    AddRecipe2("geardrawer", 
    {
        Ingredient("boards", 3),
        Ingredient("twigs", 2),
        Ingredient("gears", 2),
    }, 
    TECH.CARPENTRY_TWO, "geardrawer_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/geardrawer.xml", "geardrawer.tex")
    
    AddRecipe2("kinglytent", 
    {
        Ingredient("marble", 8),
        Ingredient("papyrus", 2),
        Ingredient("rope", 1),
    }, 
    TECH.CARPENTRY_TWO, "kinglytent_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglytent.xml", "kinglytent.tex")
        
    AddRecipe2("kinglytable", 
    {
        Ingredient("marble", 4),
    }, 
    TECH.CARPENTRY_TWO, "kinglytable_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglytable.xml", "kinglytable.tex")
        
    AddRecipe2("kinglychair1", 
    {
        Ingredient("pigskin", 1),
        Ingredient("twigs", 2),
        Ingredient("marble", 1),
    }, 
    TECH.CARPENTRY_TWO, "kinglychair1_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglychair1.xml", "kinglychair1.tex")
    
    AddRecipe2("kinglychair2", 
    {
        Ingredient("pigskin", 1),
        Ingredient("twigs", 2),
        Ingredient("marble", 1),
    }, 
    TECH.CARPENTRY_TWO, "kinglychair2_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/kinglychair2.xml", "kinglychair2.tex")
        
    AddRecipe2("chesset", 
    {
        Ingredient("marble", 1),
        Ingredient("charcoal", 1),
        Ingredient("turf_checkerfloor", 1),
        Ingredient("boards", 2),
    }, 
    TECH.CARPENTRY_TWO, "chesset_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/chesset.xml", "chesset.tex")
    
    AddRecipe2("coatrack", 
    {
        Ingredient("marble", 1),
        Ingredient("boards", 2),
    }, 
    TECH.CARPENTRY_TWO, "coatrack_placer", {"FURNITURE"})
    RegisterInventoryItemAtlas("images/inventoryimages/coatrack.xml", "coatrack.tex")
end

-----Function to conditionally add the "sittable" component-----
local function AddSittableComponent(inst, enableSittable)
    if enableSittable then
        inst:AddComponent("sittable")
        inst.AnimState:SetFinalOffset(-1)
    end
end

local function ApplyComponentLogic(prefab)
    AddPrefabPostInit(prefab, function(inst)
        local enableSittable = GetModConfigData("enable_sittable")
        AddSittableComponent(inst, enableSittable)
    end)
end

local prefabsToModify = {
    "authorchair1",
    "authorchair2",
    "balloonchair",
    "beanbag1",
    "beanbag2",
    "cabinchair1",
    "cabinchair2",
    "circuschair1",
    "circuschair2",
    "gearchair1",
    "gearchair2",
    "girlychair1",
    "girlychair2",
    "kinglychair1",
    "kinglychair2",
    "spiderchair1",
    "spiderchair2",
    "warchair1",
    "warchair2",
    "workchair1",
    "workchair2",
}
for _, prefab in ipairs(prefabsToModify) do
    ApplyComponentLogic(prefab)
end


-----widget setup-----    
--------------------------------------------------------------------------
--* bookcase *
--------------------------------------------------------------------------
local params = {}

params.bookcase = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.bookcase.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.bookcase.widget.slotpos ~= nil and #params.bookcase.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "bookcase" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end
--------------------------------------------------------------------------
--* cabinshelves *
-------------------------------------------------------------------------- 
local params = {}

params.cabinshelves = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.cabinshelves.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.cabinshelves.widget.slotpos ~= nil and #params.cabinshelves.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "cabinshelves" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end

--------------------------------------------------------------------------
--* circusdrawer *
--------------------------------------------------------------------------
local params = {}

params.circusdrawer = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.circusdrawer.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.circusdrawer.widget.slotpos ~= nil and #params.circusdrawer.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "circusdrawer" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end
--------------------------------------------------------------------------
--* coatrack widget *
--------------------------------------------------------------------------
local params = {}

params.coatrack = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.coatrack.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.coatrack.widget.slotpos ~= nil and #params.coatrack.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "coatrack" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end
--------------------------------------------------------------------------
--* girlydisplay *
--------------------------------------------------------------------------
local params = {}

params.girlydisplay = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.girlydisplay.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.girlydisplay.widget.slotpos ~= nil and #params.girlydisplay.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "girlydisplay" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end
--------------------------------------------------------------------------
--* weaponsrack *
--------------------------------------------------------------------------
local params = {}

params.weaponsrack = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.weaponsrack.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.weaponsrack.widget.slotpos ~= nil and #params.weaponsrack.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "weaponsrack" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end
--------------------------------------------------------------------------
--* geardrawer *
--------------------------------------------------------------------------
local params = {}

params.geardrawer = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.geardrawer.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.geardrawer.widget.slotpos ~= nil and #params.geardrawer.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "geardrawer" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end
--------------------------------------------------------------------------
--* toychest *
--------------------------------------------------------------------------
local params = {}

params.toychest = {
  widget =
  {
      slotpos = {},
      animbank = "ui_chester_shadow_3x4",
      animbuild = "ui_chester_shadow_3x4",
      pos = Vector3(0, 220, 0),
      side_align_tip = 160,
  },
  type = "chest",
}

for y = 2.5, -0.5, -1 do
    for x = 0, 2 do
        table.insert(params.toychest.widget.slotpos, Vector3(75 * x - 75 * 2 + 75, 75 * y - 75 * 2 + 75, 0))
    end
end

containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, params.toychest.widget.slotpos ~= nil and #params.toychest.widget.slotpos or 0)

local containers_widgetsetup = containers.widgetsetup

function containers.widgetsetup(container, prefab, data)
    local t = prefab or container.inst.prefab
    if t == "toychest" then
        local t = params[t]
        if t ~= nil then
            for k, v in pairs(t) do
                container[k] = v
            end
            container:SetNumSlots(container.widget.slotpos ~= nil and #container.widget.slotpos or 0)
        end
    else
        return containers_widgetsetup(container, prefab)
    end
end
--------------------------------------------------------------------------

local Spacing = GetModConfigData("spacing")

if Spacing == 0 then
    for _,f in pairs(GLOBAL.AllRecipes) do
        f.min_spacing = 0
    end
elseif Spacing == 0.5 then
    for _,f in pairs(GLOBAL.AllRecipes) do
        f.min_spacing = 0.5
    end
elseif Spacing == 1 then
    for _,f in pairs(GLOBAL.AllRecipes) do
        f.min_spacing = 1
    end
elseif Spacing == 2 then
    --Do nothing
end

modimport("strings.lua")