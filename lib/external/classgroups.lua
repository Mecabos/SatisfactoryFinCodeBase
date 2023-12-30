--[[
    This Lua script is creating a structured way to manage and access different classes of components in a system. It's defining a global table ClassSet with different categories of components, each category containing a set of classes.

Here's how it's useful:

Organization: The ClassSet table organizes different classes of components into categories. This makes it easier to manage and understand the different types of components in the system.

Easy Access: The buildSet function creates a table for each category where the key and value are both the class name. This allows for easy access to the classes using their names.

Grouping: The generateAllFromClasses function generates a list of all classes in a set. This is useful when you want to perform an operation on all classes in a category. The All key in each category set provides this list.

Flexibility: The script provides different ways to access components. You can get a component by its specific class, or you can get all components in a category.

For example, if you have a component of class Build_Bar_C in the Foo category, you can access it like this:
local bar = component.proxy( component.findComponent( findClass( ClassSet.Foo.Build_Bar_C ) )[ 1 ] )
Or you can get all components in the Foo category like this:
local barAny = component.getComponentsByClass( ClassSet.Foo.All )[ 1 ]
This structure provides a flexible and organized way to manage and access different classes of components in a system.
]] 

-- Sets of NetworkComponent and PCIDevice classes commonly used
-- Classes in a set should really share common functions and properties
-- Why?  Because magic numbers/strings/etc are evil
-- It would be REALLY nice if Lua did proper typing and class heirarcy.
-- Subsequently we can't just do object is type, we need a complete list of
-- every class to compare against.
ClassSet = {}

--[[
ClassSet.Foo = buildSet(
    {
        "Build_Bar_C",
        "Build_Bar2_C",
    }
)
-- foo now has individual elements where:
--    key=value=class
-- such that one can:
--    -- Get by this specific class
--    local bar = component.proxy( component.findComponent( findClass( ClassSet.Foo.Build_Bar_C ) )[ 1 ] )
--    print( bar.id )
-- or:
--    -- Get by this specific class
--    local bar2 = component.getComponentsByClass( ClassSet.Foo.Build_Bar2_C )[ 1 ]
--    print( bar2.id )
-- or:
--    -- Get by all the classes in ClassSet.Foo
--    local barAny = component.getComponentsByClass( ClassSet.Foo.All )[ 1 ]
--    print( barAny.id )
]]

local function generateAllFromClasses(set)
    local all = {}
    for _, class in pairs(set) do
        table.insert(all, class)
    end
    return all
end


--- Build a set of classes
--- @param classes table A table of class names
--- @return ClassSet 
local function buildSet(classes)
    local set = {}
    for _, class in pairs(classes) do
        set[class] = class
    end
    set.All = generateAllFromClasses(set)
    return set
end

-- Build the global table
ClassSet.CircuitSwitches = buildSet({"CircuitSwitch"})

ClassSet.CodeableSplitters = buildSet({"CodeableSplitter"})

ClassSet.Displays = {}

ClassSet.Displays.GPUs = buildSet({"GPU_T1_C"})

ClassSet.Displays.Signs = {}

ClassSet.Displays.Signs.ReallySimpleSigns = buildSet({"Build_RSS_1x1_Ceiling_C", "Build_RSS_1x2_Ceiling_C",
                                                      "Build_RSS_2x1_Ceiling_C", "Build_RSS_7x1_Ceiling_C",
                                                      "Build_RSS_1x1_Conv_C", "Build_RSS_1x1_Conv_1side_C",
                                                      "Build_RSS_1x2_Conv_C", "Build_RSS_1x2_Conv_1side_C",
                                                      "Build_RSS_1x1_Pipe_C", "Build_RSS_1x1_Pipe_1side_C",
                                                      "Build_RSS_1x2_Pipe_C", "Build_RSS_1x2_Pipe_1side_C",
                                                      "Build_RSS_2x1_Pipe_C", "Build_RSS_2x1_Pipe_1side_C",
                                                      "Build_RSS_7x1_Pipe_C", "Build_RSS_7x1_Pipe_1side_C",
                                                      "Build_RSS_1x1_Stand_C", "Build_RSS_1x2_Stand_C",
                                                      "Build_RSS_2x1_Stand_C", "Build_RSS_7x1_Stand_C",
                                                      "Build_RSS_1x1_Wall_C", "Build_RSS_1x2_Wall_C",
                                                      "Build_RSS_1x7_Wall_C", "Build_RSS_2x1_Wall_C",
                                                      "Build_RSS_7x1_Wall_C", "Build_RSS_1x1_C", "Build_RSS_1x2_C",
                                                      "Build_RSS_2x1_C", "Build_RSS_7x1_NEW_C",
                                                      "Build_RSS_Holoscreen_1x1_Ceiling_C",
                                                      "Build_RSS_Holoscreen_1x2_Ceiling_C",
                                                      "Build_RSS_Holoscreen_2x1_Ceiling_C",
                                                      "Build_RSS_Holoscreen_7x1_Ceiling_C",
                                                      "Build_RSS_Holoscreen_1x1_Conv_C",
                                                      "Build_RSS_Holoscreen_1x1_Conv_1side_C",
                                                      "Build_RSS_Holoscreen_1x2_Conv_C",
                                                      "Build_RSS_Holoscreen_1x2_Conv_1side_C",
                                                      "Build_RSS_Holoscreen_1x1_Pipe_C",
                                                      "Build_RSS_Holoscreen_1x1_Pipe_1side_C",
                                                      "Build_RSS_Holoscreen_1x2_Pipe_C",
                                                      "Build_RSS_Holoscreen_1x2_Pipe_1side_C",
                                                      "Build_RSS_Holoscreen_2x1_Pipe_C",
                                                      "Build_RSS_Holoscreen_2x1_Pipe_1side_C",
                                                      "Build_RSS_Holoscreen_7x1_Pipe_C",
                                                      "Build_RSS_Holoscreen_7x1_Pipe_1side_C",
                                                      "Build_RSS_Holoscreen_1x1_Stand_C",
                                                      "Build_RSS_Holoscreen_1x2_Stand_C",
                                                      "Build_RSS_Holoscreen_2x1_Stand_C",
                                                      "Build_RSS_Holoscreen_7x1_Stand_C",
                                                      "Build_RSS_Holoscreen_1x1_Wall_C",
                                                      "Build_RSS_Holoscreen_1x2_Wall_C",
                                                      "Build_RSS_Holoscreen_1x7_Wall_C",
                                                      "Build_RSS_Holoscreen_2x1_Wall_C",
                                                      "Build_RSS_Holoscreen_7x1_Wall_C", "Build_RSS_Holoscreen_1x1_C",
                                                      "Build_RSS_Holoscreen_1x2_C", "Build_RSS_Holoscreen_2x1_C",
                                                      "Build_RSS_Holoscreen_7x1_C", "Build_RssRounded_Flat_C",
                                                      "Build_RssRounded_Holo_C", "Build_RSS_05x05_Vanilla_C",
                                                      "Build_RSS_16x8_Vanilla_C", "Build_RSS_1x1_Vanilla_C",
                                                      "Build_RSS_2x05_Vanilla_C", "Build_RSS_2x1_Vanilla_C",
                                                      "Build_RSS_2x2_Vanilla_C", "Build_RSS_2x3_Vanilla_C",
                                                      "Build_RSS_3x05_Vanilla_C", "Build_RSS_4x05_Vanilla_C",
                                                      "Build_RSS_8x4_Vanilla_C", "Build_FoundationSign_8x8x1_C",
                                                      "Build_RssDrohne_Flat_1x1_C", "Build_RssDrohne_Flat_1x2_C",
                                                      "Build_RssDrohne_Flat_2x1_C", "Build_RssDrohne_Flat_7x1_C"})

ClassSet.Displays.Signs.WidgetSigns = buildSet({"Build_StandaloneWidgetSign_Huge_C",
                                                "Build_StandaloneWidgetSign_Large_C",
                                                "Build_StandaloneWidgetSign_Medium_C",
                                                "Build_StandaloneWidgetSign_Portrait_C",
                                                "Build_StandaloneWidgetSign_Small_C",
                                                "Build_StandaloneWidgetSign_SmallVeryWide_C",
                                                "Build_StandaloneWidgetSign_SmallWide_C",
                                                "Build_StandaloneWidgetSign_Square_C",
                                                "Build_StandaloneWidgetSign_Square_Small_C",
                                                "Build_StandaloneWidgetSign_Square_Tiny_C"})

ClassSet.Displays.Screens = buildSet({"ModuleScreen_C", "ScreenDriver_C", "Build_Screen_C"})

ClassSet.Displays.TextDisplays = buildSet({"ModuleTextDisplay_C"})

ClassSet.Displays.Labels = buildSet({"Module_Label_1x1_C", "Module_Label_2x1_C"})

ClassSet.FluidPumps = buildSet({"PipelinePump"})

ClassSet.Networking = {}

ClassSet.Networking.InterNet = buildSet({"InternetCard_C"})

ClassSet.Networking.IntraNet = buildSet({"NetworkCard_C"})

ClassSet.Networking.Routers = buildSet({"NetworkRouter_C"})

ClassSet.Networking.WirelessAccessPoints = buildSet({"WirelessAccessPoint_C"})

ClassSet.ModulePanels = buildSet({"LargeControlPanel", "LargeVerticalControlPanel", "MCP_1Point_C",
                                  "MCP_1Point_Center_C", "MCP_2Point_C", "MCP_3Point_C", "MCP_6Point_C",
                                  "SizeableModulePanel"})

ClassSet.Modules = {}

-- These all have:
-- properties:
-- functions:
--  Trigger()
-- signals:
--  Trigger
ClassSet.Modules.Buttons =
    buildSet({"ModuleButton", "ModuleStopButton", "PushbuttonModule", "MushroomPushbuttonModule"})

-- These all have:
-- properties:
-- functions:
--  setColor()
-- signals:
--  valueChanged
ClassSet.Modules.Encoders = buildSet({"MCP_Mod_Encoder_C"})

-- These all have:
-- properties:
--  state
-- functions:
-- signals:
--  ChangeState
ClassSet.Modules.Levers = buildSet({"ModuleSwitch_C"})

-- These all have:
-- properties:
--  limit
--  percent
-- functions:
--  setColor()
-- signals:
ClassSet.Modules.Gauges = buildSet({"MCP_Mod_Gauge_C", "Module_BigGauge_C"})

-- These all have:
-- properties:
-- functions:
--  setColor()
-- signals:
ClassSet.Modules.Indicators = buildSet({"IndicatorModule"})

-- These all can be bound to a GPU for rendering
ClassSet.Modules.Screens = buildSet({"ModuleScreen_C"})

-- These all have:
-- properties:
--  monospace
--  size
--  text
-- functions:
-- signals:
ClassSet.Modules.TextDisplays = buildSet({"ModuleTextDisplay_C"})

-- These all have: ???
ClassSet.Modules.Labels = buildSet({"Module_Label_1x1_C", "Module_Label_2x1_C"})

-- These all have:
-- properties:
-- functions:
--  setColor()
--  setText()
-- signals:
ClassSet.Modules.MicroDisplays = buildSet({"LargeMicroDisplayModule", "MicroDisplayModule"})

ClassSet.Modules.Potentiometers = {}

-- These all have:
-- properties:
-- functions:
--  rotate()
-- signals:
--  PotRotate
ClassSet.Modules.Potentiometers.Simple = buildSet({"ModulePotentiometer"})

-- These all have:
-- properties:
--  value
--  max
--  min
-- functions:
--  setColor()
-- signals:
--  valueChanged
ClassSet.Modules.Potentiometers.Complex = buildSet({"MCP_Mod_Potentiometer_C", -- These all have:
-- properties:
--  autovalue
-- functions:
--  setText()
-- signals:
"MCP_Mod_PotWNum_C"})

-- These all have:
-- properties:
--  state
-- functions:
-- signals:
--  ChangeState
ClassSet.Modules.Switches = buildSet({"ModuleSwitch_C", -- These all have:
-- properties:
-- functions:
--  setColor()
-- signals:
"MCP_Mod_2Pos_Switch_C", "MCP_Mod_3Pos_Switch_C"})

ClassSet.Storage = {}

ClassSet.Storage.Solids = buildSet({"FGBuildableStorage", "Build_StorageContainerMk1_C", "Build_StorageContainerMk2_C",
                                    "Build_BBus_C", "Build_BBus_2_C", "BP_X3_CompactStorage_C", "BP_X3Storage_Mk1_C",
                                    "BP_X3Storage_Mk1plus_C", "BP_X3Storage_Mk2plus_C", "BP_X3Storage_Mk3plus_C"})

-- These all have:
-- properties:
--  fluidContent
--  maxFluidContent
--  flowFill
--  flowDrain
--  flowLimit
-- functions:
-- signals:
ClassSet.Storage.Fluids = buildSet({"PipeReservoir", "Build_PipeStorageTank_C", "Build_IndustrialTank_C",
                                    "Build_CeilBuff_C"})

