--- This is the documentation of the Satisfactory Modding API.
--- The type of an item (iron plate, iron rod, leaves)
---@class ItemType:Object
---@field public form number @The matter state of this resource. 1: Solid 2: Liquid 3: Gas 4: Heat
---@field public energy number @How much energy this resource provides if used as fuel.
---@field public radioactiveDecay number @The amount of radiation this item radiates.
---@field public name string @The name of the item.
---@field public description string @The description of this item.
---@field public max number @The maximum stack size of this item.
---@field public canBeDiscarded boolean @True if this item can be discarded.
---@field public category ItemCategory-Class @The category in which this item is in.
---@field public fluidColor Color @The color of this fluid.
local ItemType

--- The base class of every object.
---@class Object
---@field public hash number @A Hash of this object. This is a value that nearly uniquely identifies this object.
---@field public internalName string @The unreal engine internal name of this object.
---@field public internalPath string @The unreal engine internal path name of this object.
---@field public hash number @A Hash of this object. This is a value that nearly uniquely identifies this object.
---@field public internalName string @The unreal engine internal name of this object.
---@field public internalPath string @The unreal engine internal path name of this object.
local Object
--- Returns the hash of this class. This is a value that nearly uniquely idenfies this object.
---@return number
function Object:getHash() end
--- Returns the type (aka class) of this class instance.
---@return Class
function Object:getType() end

--- A struct that holds information about a recipe in its class. Means don't use it as object, use it as class type!
---@class Recipe:Object
---@field public name string @The name of this recipe.
---@field public duration number @The duration how much time it takes to cycle the recipe once.
local Recipe

--- This is the base class of all things that can exist within the world by them self.
---@class Actor:Object
---@field public location Vector @The location of the actor in the world.
---@field public scale Vector @The scale of the actor in the world.
---@field public rotation Rotator @The rotation of the actor in the world.
local Actor
--- Returns a list of power connectors this actor might have.
---@return PowerConnection[]
function Actor:getPowerConnectors() end
--- Returns a list of factory connectors this actor might have.
---@return FactoryConnection[]
function Actor:getFactoryConnectors() end
--- Returns a list of pipe connectors this actor might have.
---@return PipeConnection[]
function Actor:getPipeConnectors() end
--- Returns a list of inventories this actor might have.
---@return Inventory[]
function Actor:getInventories() end
--- Returns the name of network connectors this actor might have.
---@return ActorComponent[]
function Actor:getNetworkConnectors() end

--- A component/part of an actor in the world.
---@class ActorComponent:Object
---@field public owner Actor @The parent actor of which this component is part of
local ActorComponent

--- The Fence can be built on the edges of floors to prevent you from falling off.
---@class Build_Fence_01_C:FGBuildableWall
local Build_Fence_01_C

--- 
---@class FGBuildableWall:FGBuildableFactoryBuilding
local FGBuildableWall

--- 
---@class FGBuildableFactoryBuilding:FGBuildable
local FGBuildableFactoryBuilding

--- 
---@class FGBuildable:Actor
local FGBuildable

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_FoundationGlass_01_C:FGBuildableFoundation
local Build_FoundationGlass_01_C

--- 
---@class FGBuildableFoundation:FGBuildableFactoryBuilding
local FGBuildableFoundation

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_Foundation_8x1_01_C:FGBuildableFoundation
local Build_Foundation_8x1_01_C

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_Foundation_8x2_01_C:FGBuildableFoundation
local Build_Foundation_8x2_01_C

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_Foundation_8x4_01_C:FGBuildableFoundation
local Build_Foundation_8x4_01_C

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_Foundation_Frame_01_C:FGBuildableFoundation
local Build_Foundation_Frame_01_C

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_PillarBase_C:FGBuildableFoundation
local Build_PillarBase_C

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_PillarMiddle_C:FGBuildableFoundation
local Build_PillarMiddle_C

--- Provides a flat floor to build your factory on. 
--- Buildings on top of the foundation are adjusted to a grid, to make it easier to line them up to each other.
---@class Build_PillarTop_C:FGBuildableFoundation
local Build_PillarTop_C

--- Provides an optional factory look that is smoother and offers possibilities for recreational activities. 
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_QuarterPipe_C:FGBuildableFoundation
local Build_QuarterPipe_C

--- Provides an optional factory look that is smoother and offers possibilities for recreational activities. 
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_QuarterPipeCorner_01_C:FGBuildableFoundation
local Build_QuarterPipeCorner_01_C

--- Provides an optional factory look that is smoother and offers possibilities for recreational activities. 
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_QuarterPipeCorner_02_C:FGBuildableFoundation
local Build_QuarterPipeCorner_02_C

--- Provides an optional factory look that is smoother and offers possibilities for recreational activities. 
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_QuarterPipeCorner_03_C:FGBuildableFoundation
local Build_QuarterPipeCorner_03_C

--- Provides an optional factory look that is smoother and offers possibilities for recreational activities. 
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_QuarterPipeCorner_04_C:FGBuildableFoundation
local Build_QuarterPipeCorner_04_C

--- Provides an optional factory look that is smoother and offers possibilities for recreational activities. 
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_QuarterPipe_02_C:FGBuildableFoundation
local Build_QuarterPipe_02_C

--- A ladder with a default height of 2 meters, which can be extended while building. Snaps to walls and foundations.
---@class Build_Ladder_C:FGBuildableLadder
local Build_Ladder_C

--- 
---@class FGBuildableLadder:FGBuildable
local FGBuildableLadder

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_RampDouble_C:FGBuildableFoundation
local Build_RampDouble_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_RampDouble_8x1_C:FGBuildableFoundation
local Build_RampDouble_8x1_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_RampInverted_8x1_C:FGBuildableFoundation
local Build_RampInverted_8x1_C

--- Inverted Ramps mostly provide aesthetic options.
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_RampInverted_8x1_Corner_01_C:FGBuildableFoundation
local Build_RampInverted_8x1_Corner_01_C

--- Inverted Ramps mostly provide aesthetic options.
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_RampInverted_8x1_Corner_02_C:FGBuildableFoundation
local Build_RampInverted_8x1_Corner_02_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_RampInverted_8x2_01_C:FGBuildableFoundation
local Build_RampInverted_8x2_01_C

--- Inverted Ramps mostly provide aesthetic options.
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_RampInverted_8x2_Corner_01_C:FGBuildableFoundation
local Build_RampInverted_8x2_Corner_01_C

--- Inverted Ramps mostly provide aesthetic options.
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_RampInverted_8x2_Corner_02_C:FGBuildableFoundation
local Build_RampInverted_8x2_Corner_02_C

--- Inverted Ramps mostly provide aesthetic options.
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_RampInverted_8x4_Corner_01_C:FGBuildableFoundation
local Build_RampInverted_8x4_Corner_01_C

--- Inverted Ramps mostly provide aesthetic options.
--- Still utilizes the standard foundation building grid for improved building placement.
---@class Build_RampInverted_8x4_Corner_02_C:FGBuildableFoundation
local Build_RampInverted_8x4_Corner_02_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_Ramp_8x1_01_C:FGBuildableFoundation
local Build_Ramp_8x1_01_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_Ramp_8x2_01_C:FGBuildableFoundation
local Build_Ramp_8x2_01_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_Ramp_8x4_01_C:FGBuildableFoundation
local Build_Ramp_8x4_01_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_Ramp_8x4_Inverted_01_C:FGBuildableFoundation
local Build_Ramp_8x4_Inverted_01_C

--- Snaps to foundations to make it easier to get on top of them. Works especially well with vehicles.
---@class Build_Ramp_8x8x8_C:FGBuildableFoundation
local Build_Ramp_8x8x8_C

--- Ramps make it easier to get up onto Foundations for Pioneers and their Vehicles.
--- Height: 1 m
---@class Build_Ramp_Diagonal_8x1_01_C:FGBuildableFoundation
local Build_Ramp_Diagonal_8x1_01_C

--- Ramps make it easier to get up onto Foundations for Pioneers and their Vehicles.
--- Height: 1 m
---@class Build_Ramp_Diagonal_8x1_02_C:FGBuildableFoundation
local Build_Ramp_Diagonal_8x1_02_C

--- Ramps make it easier to get up onto Foundations for Pioneers and their Vehicles.
--- Height: 2 m
---@class Build_Ramp_Diagonal_8x2_01_C:FGBuildableFoundation
local Build_Ramp_Diagonal_8x2_01_C

--- Ramps make it easier to get up onto Foundations for Pioneers and their Vehicles.
--- Height: 2 m
---@class Build_Ramp_Diagonal_8x2_02_C:FGBuildableFoundation
local Build_Ramp_Diagonal_8x2_02_C

--- Ramps make it easier to get up onto Foundations for Pioneers and their Vehicles.
--- Height: 4 m
---@class Build_Ramp_Diagonal_8x4_01_C:FGBuildableFoundation
local Build_Ramp_Diagonal_8x4_01_C

--- Ramps make it easier to get up onto Foundations for Pioneers and their Vehicles.
--- Height: 4 m
---@class Build_Ramp_Diagonal_8x4_02_C:FGBuildableFoundation
local Build_Ramp_Diagonal_8x4_02_C

--- Snaps to foundations.
--- Makes it easier to get to other floors of your structures.
---@class Build_Stairs_Left_01_C:FGBuildableStair
local Build_Stairs_Left_01_C

--- 
---@class FGBuildableStair:FGBuildableFoundation
local FGBuildableStair

--- Snaps to foundations.
--- Makes it easier to get to other floors of your structures.
---@class Build_Stairs_Right_01_C:FGBuildableStair
local Build_Stairs_Right_01_C

--- The Stairs allow you to move to the upper floors of your buildings.
--- Height: 4 m
---@class Build_Stair_1b_C:FGBuildableStair
local Build_Stair_1b_C

--- Snaps to foundations and other walkways.
--- Specifically made for humans to walk on.
---@class Build_WalkwayCross_C:FGBuildableWalkway
local Build_WalkwayCross_C

--- 
---@class FGBuildableWalkway:FGBuildableFactoryBuilding
local FGBuildableWalkway

--- Snaps to foundations and other walkways.
--- Specifically made for humans to walk on.
---@class Build_WalkwayRamp_C:FGBuildableWalkway
local Build_WalkwayRamp_C

--- Snaps to foundations and other walkways.
--- Specifically made for humans to walk on.
---@class Build_WalkwayStraight_C:FGBuildableWalkway
local Build_WalkwayStraight_C

--- Snaps to foundations and other walkways.
--- Specifically made for humans to walk on.
---@class Build_WalkwayT_C:FGBuildableWalkway
local Build_WalkwayT_C

--- Snaps to foundations and other walkways.
--- Specifically made for humans to walk on.
---@class Build_WalkwayTrun_C:FGBuildableWalkway
local Build_WalkwayTrun_C

--- Snaps to foundations and other walls.
--- Useful for building multi-floor structures.
---@class Build_Wall_8x4_01_C:FGBuildableWall
local Build_Wall_8x4_01_C

--- Snaps to foundations and other walls.
--- Useful for building multi-floor structures.
---@class Build_Wall_8x4_02_C:FGBuildableWall
local Build_Wall_8x4_02_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 3 conveyor belt connections.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_01_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_01_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 3 conveyor belt connections.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_01_Steel_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_01_Steel_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 2 conveyor belt connections.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_02_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_02_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 2 conveyor belt connections.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_02_Steel_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_02_Steel_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 1 conveyor belt connection.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_03_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_03_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 1 conveyor belt connection.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_03_Steel_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_03_Steel_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 1 conveyor belt connection perpendicular to the wall.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_04_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_04_C

--- Walls connect to other Walls and Floors. Use these to make buildings with several floors.
--- Has 1 conveyor belt connection perpendicular to the wall.
--- Height: 4 m
---@class Build_Wall_Conveyor_8x4_04_Steel_C:FGBuildableWall
local Build_Wall_Conveyor_8x4_04_Steel_C

--- Snaps to foundations and other walls.
--- The door allows Pioneers to pass through the wall.
---@class Build_Wall_Door_8x4_01_C:FGBuildableWall
local Build_Wall_Door_8x4_01_C

--- Snaps to foundations and other walls.
--- The door allows Pioneers to pass through the wall.
---@class Build_Wall_Door_8x4_01_Steel_C:FGBuildableWall
local Build_Wall_Door_8x4_01_Steel_C

--- Snaps to foundations and other walls.
--- The door allows Pioneers to pass through the wall.
---@class Build_Wall_Door_8x4_02_C:FGBuildableWall
local Build_Wall_Door_8x4_02_C

--- Snaps to foundations and other walls.
--- The door allows Pioneers to pass through the wall.
---@class Build_Wall_Door_8x4_02_Steel_C:FGBuildableWall
local Build_Wall_Door_8x4_02_Steel_C

--- Snaps to foundations and other walls.
--- The door allows Pioneers to pass through the wall.
---@class Build_Wall_Door_8x4_03_C:FGBuildableWall
local Build_Wall_Door_8x4_03_C

--- Snaps to foundations and other walls.
--- The door allows Pioneers to pass through the wall.
---@class Build_Wall_Door_8x4_03_Steel_C:FGBuildableWall
local Build_Wall_Door_8x4_03_Steel_C

--- Snaps to foundations and other walls.
--- The gate allows Pioneers to pass through the wall.
---@class Build_Wall_Gate_8x4_01_C:FGBuildableWall
local Build_Wall_Gate_8x4_01_C

--- Snaps to foundations and other walls.
--- The windows allow Pioneers to see through the wall.
---@class Build_Wall_Window_8x4_01_C:FGBuildableWall
local Build_Wall_Window_8x4_01_C

--- Snaps to foundations and other walls.
--- The windows allow Pioneers to see through the wall.
---@class Build_Wall_Window_8x4_02_C:FGBuildableWall
local Build_Wall_Window_8x4_02_C

--- Snaps to foundations and other walls.
--- The windows allow Pioneers to see through the wall.
---@class Build_Wall_Window_8x4_03_C:FGBuildableWall
local Build_Wall_Window_8x4_03_C

--- Snaps to foundations and other walls.
--- The windows allow Pioneers to see through the wall.
---@class Build_Wall_Window_8x4_04_C:FGBuildableWall
local Build_Wall_Window_8x4_04_C

--- Crafts two parts into another part.
--- 
--- Can be automated by feeding parts into it with a conveyor belt connected to the input. The produced parts can be automatically extracted by connecting a conveyor belt to the output.
---@class Build_AssemblerMk1_C:Manufacturer
local Build_AssemblerMk1_C

--- The base class of every machine that uses a recipe to produce something automatically.
---@class Manufacturer:Factory
local Manufacturer
--- Returns the currently set recipe of the manufacturer.
---@return Recipe-Class
function Manufacturer:getRecipe() end
--- Returns the list of recipes this manufacturer can get set to and process.
---@return Recipe-Class[]
function Manufacturer:getRecipes() end
--- Sets the currently producing recipe of this manufacturer.
---@param recipe Recipe-Class @The recipe this manufacturer should produce.
---@return boolean
function Manufacturer:setRecipe(recipe) end
--- Returns the input inventory of this manufacturer.
---@return Inventory
function Manufacturer:getInputInv() end
--- Returns the output inventory of this manufacturer.
---@return Inventory
function Manufacturer:getOutputInv() end

--- The base class of most machines you can build.
---@class Factory:FGBuildable
---@field public progress number @The current production progress of the current production cycle.
---@field public powerConsumProducing number @The power consumption when producing.
---@field public productivity number @The productivity of this factory.
---@field public cycleTime number @The time that passes till one production cycle is finsihed.
---@field public maxPotential number @The maximum potential this factory can be set to.
---@field public minPotential number @The minimum potential this factory needs to be set to.
---@field public standby boolean @True if the factory is in standby.
---@field public potential number @The potential this factory is currently set to. (the overclock value)  0 = 0%, 1 = 100%
local Factory

--- text here
---@class Build_AutomatedWorkBench_C:FGBuildableAutomatedWorkBench
local Build_AutomatedWorkBench_C

--- 
---@class FGBuildableAutomatedWorkBench:Manufacturer
local FGBuildableAutomatedWorkBench

--- The Blender is capable of blending fluids and combining them with solid parts in various processes.
--- Head Lift: 10 meters.
--- (Allows fluids to be transported 10 meters upwards).
--- 
--- Contains both Conveyor Belt and Pipe inputs and outputs.
---@class Build_Blender_C:Manufacturer
local Build_Blender_C

--- Merges up to three conveyor belts into one.
---@class Build_ConveyorAttachmentMerger_C:FGBuildableAttachmentMerger
local Build_ConveyorAttachmentMerger_C

--- 
---@class FGBuildableAttachmentMerger:FGBuildableConveyorAttachment
local FGBuildableAttachmentMerger

--- 
---@class FGBuildableConveyorAttachment:Factory
local FGBuildableConveyorAttachment

--- Splits conveyor belts in three. 
--- Useful to move parts and resources from oversaturated conveyor belts.
---@class Build_ConveyorAttachmentSplitter_C:FGBuildableAttachmentSplitter
local Build_ConveyorAttachmentSplitter_C

--- 
---@class FGBuildableAttachmentSplitter:FGBuildableConveyorAttachment
local FGBuildableAttachmentSplitter

--- Splits conveyor belts in three. 
--- You can set rules for each output to decide exactly where each part should go.
---@class Build_ConveyorAttachmentSplitterProgrammable_C:FGBuildableSplitterSmart
local Build_ConveyorAttachmentSplitterProgrammable_C

--- 
---@class FGBuildableSplitterSmart:FGBuildableAttachmentSplitter
local FGBuildableSplitterSmart

--- Splits conveyor belts in three.
--- You can set a rule for each output to decide exactly what part should go there.
---@class Build_ConveyorAttachmentSplitterSmart_C:FGBuildableSplitterSmart
local Build_ConveyorAttachmentSplitterSmart_C

--- Can be placed on ceilings to light up indoor factory spaces.
--- 
--- Light color and intensity can be modified.
--- Allows up to two Power Line connections.
---@class Build_CeilingLight_C:LightSource
local Build_CeilingLight_C

--- The base class for all light you can build.
---@class LightSource:FGBuildable
---@field public isLightEnabled boolean @True if the light is enabled
---@field public isTimeOfDayAware boolean @True if the light should automatically turn on and off depending on the time of the day.
---@field public intensity number @The intensity of the light.
---@field public colorSlot number @The color slot the light uses.
local LightSource
--- Returns the light color that is referenced by the given slot.
---@param slot number @The slot you want to get the referencing color from.
---@return Color
function LightSource:getColorFromSlot(slot) end
--- Allows to update the light color that is referenced by the given slot.
---@param slot number @The slot you want to update the referencing color for.
---@param color Color @The color this slot should now reference.
function LightSource:setColorFromSlot(slot, color) end

--- Crafts one part into another part.
--- 
--- Can be automated by feeding parts into it with a conveyor belt connected to the input. The produced parts can be automatically extracted by connecting a conveyor belt to the output.
---@class Build_ConstructorMk1_C:Manufacturer
local Build_ConstructorMk1_C

--- Converts any 2 raw resources into 1 raw resource of your choosing.
--- Requires 40 MW of power to operate.
--- Is built using the super rare resource Strange Alien Metal.
---@class Build_Converter_C:FGBuildableConverter
local Build_Converter_C

--- 
---@class FGBuildableConverter:Manufacturer
local FGBuildableConverter

--- Transports up to 60 resources per minute. Used to move resources between buildings.
---@class Build_ConveyorBeltMk1_C:FGBuildableConveyorBelt
local Build_ConveyorBeltMk1_C

--- 
---@class FGBuildableConveyorBelt:FGBuildableConveyorBase
local FGBuildableConveyorBelt

--- 
---@class FGBuildableConveyorBase:FGBuildable
local FGBuildableConveyorBase

--- Transports up to 120 resources per minute. Used to move resources between buildings.
---@class Build_ConveyorBeltMk2_C:Build_ConveyorBeltMk1_C
local Build_ConveyorBeltMk2_C

--- Transports up to 270 resources per minute. Used to move resources between buildings.
---@class Build_ConveyorBeltMk3_C:Build_ConveyorBeltMk1_C
local Build_ConveyorBeltMk3_C

--- Transports up to 480 resources per minute. Used to move resources between buildings.
---@class Build_ConveyorBeltMk4_C:Build_ConveyorBeltMk1_C
local Build_ConveyorBeltMk4_C

--- Transports up to 780 resources per minute. Used to move resources between buildings.
---@class Build_ConveyorBeltMk5_C:Build_ConveyorBeltMk1_C
local Build_ConveyorBeltMk5_C

--- Transports up to 60 resources per minute. Used to move resources between floors.
---@class Build_ConveyorLiftMk1_C:FGBuildableConveyorLift
local Build_ConveyorLiftMk1_C

--- 
---@class FGBuildableConveyorLift:FGBuildableConveyorBase
local FGBuildableConveyorLift

--- Transports up to 120 resources per minute. Used to move resources between floors.
---@class Build_ConveyorLiftMk2_C:Build_ConveyorLiftMk1_C
local Build_ConveyorLiftMk2_C

--- Transports up to 270 resources per minute. Used to move resources between floors.
---@class Build_ConveyorLiftMk3_C:Build_ConveyorLiftMk1_C
local Build_ConveyorLiftMk3_C

--- Transports up to 480 resources per minute. Used to move resources between floors.
---@class Build_ConveyorLiftMk4_C:Build_ConveyorLiftMk1_C
local Build_ConveyorLiftMk4_C

--- Transports up to 780 resources per minute. Used to move resources between floors.
---@class Build_ConveyorLiftMk5_C:Build_ConveyorLiftMk1_C
local Build_ConveyorLiftMk5_C

--- Can be used as a connection for conveyor belts. The height of the pole can be adjusted.
--- Useful to route conveyor belts in a more controlled manner and over long distances.
---@class Build_ConveyorPole_C:FGBuildablePole
local Build_ConveyorPole_C

--- 
---@class FGBuildablePole:FGBuildablePoleBase
local FGBuildablePole

--- 
---@class FGBuildablePoleBase:FGBuildable
local FGBuildablePoleBase

--- Support for conveyor belts. Can be stacked on other stackable supports.
---@class Build_ConveyorPoleStackable_C:FGConveyorPoleStackable
local Build_ConveyorPoleStackable_C

--- 
---@class FGConveyorPoleStackable:FGBuildablePole
local FGConveyorPoleStackable

--- Can be attached to walls and is used as a connection for conveyor belts.
--- Useful to route conveyor belts in a more controlled manner and over long distances.
---@class Build_ConveyorPoleWall_C:FGBuildable
local Build_ConveyorPoleWall_C

--- A base class for all vehciles.
---@class Vehicle:Actor
---@field public health number @The health of the vehicle.
---@field public maxHealth number @The maximum amount of health this vehicle can have.
---@field public isSelfDriving boolean @True if the vehicle is currently self driving.
local Vehicle

--- Drone Ports can have one other Port assigned as their transport destination.
--- Each Drone Port can contain a single Drone, which transports available input back and forth between its home and destination Ports.
--- 
--- The Drone Port interface provides delivery details and allows management of Port connections.
---@class Build_DroneStation_C:FGBuildableDroneStation
local Build_DroneStation_C

--- 
---@class FGBuildableDroneStation:Factory
local FGBuildableDroneStation

--- A tall light tower, specifically designed for illuminating large or outdoor spaces.
--- 
--- Light color and intensity can be modified.
--- Allows up to two Power Line connections.
---@class Build_FloodlightPole_C:FGBuildableFloodlight
local Build_FloodlightPole_C

--- 
---@class FGBuildableFloodlight:LightSource
local FGBuildableFloodlight

--- Can be attached to Walls and Foundations to illuminate large spaces.
--- 
--- Light color and intensity can be modified.
--- Allows up to two Power Line connections.
---@class Build_FloodlightWall_C:FGBuildableFloodlight
local Build_FloodlightWall_C

--- Smelts two resources into alloy ingots.
--- 
--- Can be automated by feeding ore into it with a conveyor belt connected to the inputs. The produced ingots can be automatically extracted by connecting a conveyor belt to the output.
---@class Build_FoundryMk1_C:Manufacturer
local Build_FoundryMk1_C

--- Normal extraction rate: 60m³ fluid per minute.
--- Head Lift: 10 meters.
--- (Allows fluids to be transported 10 meters upwards.)
--- 
--- Can be placed on the activated sub-nodes of a Resource Well to collect the pressurized resources. Does not require Power.
---@class Build_FrackingExtractor_C:FGBuildableFrackingExtractor
local Build_FrackingExtractor_C

--- 
---@class FGBuildableFrackingExtractor:FGBuildableResourceExtractor
local FGBuildableFrackingExtractor

--- 
---@class FGBuildableResourceExtractor:FGBuildableResourceExtractorBase
local FGBuildableResourceExtractor

--- 
---@class FGBuildableResourceExtractorBase:Factory
local FGBuildableResourceExtractorBase

--- Can be placed on a Resource Well to activate it by pressurizing the underground resource.
--- Once activated, Resource Well Extractors can be placed on the surrounding sub-nodes to extract the resource.
--- Requires Power. Overclocking increases the output potential of the entire Resource Well.
---@class Build_FrackingSmasher_C:FGBuildableFrackingActivator
local Build_FrackingSmasher_C

--- 
---@class FGBuildableFrackingActivator:FGBuildableResourceExtractorBase
local FGBuildableFrackingActivator

--- Burns various forms of biomass to generate electricity for the power grid.
--- Has no input and must therefore be fed biomass manually.
--- 
--- Resource consumption will automatically be lowered to meet power demands.
---@class Build_GeneratorBiomass_C:FGBuildableGeneratorFuel
local Build_GeneratorBiomass_C

--- 
---@class FGBuildableGeneratorFuel:FGBuildableGenerator
local FGBuildableGeneratorFuel

--- 
---@class FGBuildableGenerator:Factory
local FGBuildableGenerator

--- Burns Biomass to produce power. Biomass must be loaded manually and is obtained by picking up flora in the world. Produces up to 20MW of power while operating.
---@class Build_GeneratorIntegratedBiomass_C:FGBuildableGeneratorFuel
local Build_GeneratorIntegratedBiomass_C

--- Burns Coal to boil Water, the produced steam rotates turbines to generate electricity for the power grid.
--- Has a Conveyor Belt and Pipe input, so both the Coal and Water supply can be automated.
--- 
--- Caution: Always generates at the set clockspeed. Shuts down if fuel requirements are not met.
---@class Build_GeneratorCoal_C:FGBuildableGeneratorFuel
local Build_GeneratorCoal_C

--- Consumes Fuel to generate electricity for the power grid.
--- Has a Pipe input so the Fuel supply can be automated.
--- 
--- Caution: Always generates at the set clockspeed. Shuts down if fuel requirements are not met.
---@class Build_GeneratorFuel_C:FGBuildableGeneratorFuel
local Build_GeneratorFuel_C

--- Has to be built on a Geyser. Generates power.
--- 
--- Caution: Power production fluctuates.
--- 
--- Power Production:
--- Impure 50-150 MW (100 MW average)
--- Normal 100-300 MW (200 MW average)
--- Pure 200-600 MW (400 MW average)
---@class Build_GeneratorGeoThermal_C:FGBuildableGeneratorGeoThermal
local Build_GeneratorGeoThermal_C

--- 
---@class FGBuildableGeneratorGeoThermal:FGBuildableGenerator
local FGBuildableGeneratorGeoThermal

--- Consumes Nuclear Fuel Rods and Water to produce electricity for the power grid.
--- 
--- Produces Nuclear Waste, which is extracted from the conveyor belt output.
--- 
--- Caution: Always generates at the set clockspeed. Shuts down if fuel requirements are not met.
---@class Build_GeneratorNuclear_C:FGBuildableGeneratorNuclear
local Build_GeneratorNuclear_C

--- 
---@class FGBuildableGeneratorNuclear:FGBuildableGeneratorFuel
local FGBuildableGeneratorNuclear

--- The FICSIT Particle Accelerator uses electromagnetic fields to propel particles to very high speeds and energies. The specific design allows for a variety of processes, such as matter generation and conversion.
--- 
--- Warning: Power usage is extremely high, unstable, and varies per recipe.
---@class Build_HadronCollider_C:FGBuildableManufacturerVariablePower
local Build_HadronCollider_C

--- 
---@class FGBuildableManufacturerVariablePower:Manufacturer
local FGBuildableManufacturerVariablePower

--- It comes bearing gifts.
--- Produces 15 Gifts per minute.
---@class Build_TreeGiftProducer_C:FGBuildableFactorySimpleProducer
local Build_TreeGiftProducer_C

--- 
---@class FGBuildableFactorySimpleProducer:Factory
local FGBuildableFactorySimpleProducer

--- 
---@class Build_HubTerminal_C:FGBuildableHubTerminal
local Build_HubTerminal_C

--- 
---@class FGBuildableHubTerminal:FGBuildable
local FGBuildableHubTerminal

--- Can be attached to walls to allow Hyper Tubes to pass through them.
---@class Build_HyperTubeWallHole_C:FGBuildable
local Build_HyperTubeWallHole_C

--- Can be attached to walls. 
--- Supports for Hyper Tubes to allow for longer distances.
---@class Build_HyperTubeWallSupport_C:FGBuildable
local Build_HyperTubeWallSupport_C

--- Can contain up to 2400m³ of fluid.
--- Has an input and output for pipes.
---@class Build_IndustrialTank_C:PipeReservoir
local Build_IndustrialTank_C

--- The base class for all fluid tanks.
---@class PipeReservoir:Factory
---@field public fluidContent number @The amount of fluid in the tank.
---@field public maxFluidContent number @The maximum amount of fluid this tank can hold.
---@field public flowFill number @The currentl inflow rate of fluid.
---@field public flowDrain number @The current outflow rate of fluid.
---@field public flowLimit number @The maximum flow rate of fluid this tank can handle.
local PipeReservoir
--- Emptys the whole fluid container.
function PipeReservoir:flush() end
--- Returns the type of the fluid.
---@return ItemType-Class
function PipeReservoir:getFluidType() end

--- Propels you upwards through the air.
--- Make sure you land softly.
---@class Build_JumpPad_C:Factory
local Build_JumpPad_C

--- Used for quick, vertical traversal.
--- The launch angle can be adjusted while building.
--- Caution: Be sure to land safely!
---@class Build_JumpPadAdjustable_C:FGBuildableJumppad
local Build_JumpPadAdjustable_C

--- 
---@class FGBuildableJumppad:Factory
local FGBuildableJumppad

--- Propels you forwards through the air.
--- Make sure you land softly.
---@class Build_JumpPadTilted_C:Build_JumpPad_C
local Build_JumpPadTilted_C

--- Generates a speed dampening jelly.
--- Guarantees a safe landing.
---@class Build_LandingPad_C:Factory
local Build_LandingPad_C

--- Useful for sectioning and modifying many lights at once.
--- 
--- Controls all Lights connected to the Power Grid attached to the 'Light Power Connector'.
--- (Other Control Panels and Power Switches interrupt the connection.)
---@class Build_LightsControlPanel_C:LightsControlPanel
local Build_LightsControlPanel_C

--- A control panel to configure multiple lights at once.
---@class LightsControlPanel:FGBuildableControlPanelHost
---@field public isLightEnabled boolean @True if the lights should be enabled
---@field public isTimeOfDayAware boolean @True if the lights should automatically turn on and off depending on the time of the day.
---@field public intensity number @The intensity of the lights.
---@field public colorSlot number @The color slot the lights should use.
local LightsControlPanel

--- 
---@class FGBuildableControlPanelHost:CircuitBridge
local FGBuildableControlPanelHost

--- A building that can connect two circuit networks together.
---@class CircuitBridge:FGBuildable
---@field public isBridgeConnected boolean @True if the bridge is connected to two circuits.
---@field public isBridgeActive boolean @True if the two circuits are connected to each other and act as one entity.
local CircuitBridge

--- Provides a good overview which makes factory construction easier.
---@class Build_LookoutTower_C:Factory
local Build_LookoutTower_C

--- The Molecular Analysis Machine is used to analyse new and exotic materials found on alien planets.
--- R&D will assist Pioneers through the MAM to turn any valuable data into usable research options and new technologies.
---@class Build_Mam_C:FGBuildableMAM
local Build_Mam_C

--- 
---@class FGBuildableMAM:FGBuildable
local FGBuildableMAM

--- Crafts three or four parts into another part.
--- 
--- Can be automated by feeding parts into it with a conveyor belt connected to the input. The produced parts can be automatically extracted by connecting a conveyor belt to the output.
---@class Build_ManufacturerMk1_C:Manufacturer
local Build_ManufacturerMk1_C

--- Extracts solid resources from the resource node it is built on. 
--- The normal extraction rate is 60 resources per minute. 
--- The extraction rate is modified depending on resource node purity. Outputs all extracted resources onto connected conveyor belts.
---@class Build_MinerMk1_C:FGBuildableResourceExtractor
local Build_MinerMk1_C

--- Extracts solid resources from the resource node it is built on. 
--- The normal extraction rate is 120 resources per minute. 
--- The extraction rate is modified depending on resource node purity. Outputs all extracted resources onto connected conveyor belts.
---@class Build_MinerMk2_C:FGBuildableResourceExtractor
local Build_MinerMk2_C

--- Extracts solid resources from the resource node it is built on. 
--- The normal extraction rate is 240 resources per minute. 
--- The extraction rate is modified depending on resource node purity. Outputs all extracted resources onto connected conveyor belts.
---@class Build_MinerMk3_C:Build_MinerMk2_C
local Build_MinerMk3_C

--- Normal extraction rate: 120m³ oil per minute.
--- Head Lift: 10 meters.
--- (Allows fluids to be transported 10 meters upwards.)
--- 
--- Can be built on an Oil Node to extract Crude Oil. Extraction rates depend on node purity.
---@class Build_OilPump_C:FGBuildableResourceExtractor
local Build_OilPump_C

--- Refines fluid and/or solid parts into other parts.
--- Head Lift: 10 meters.
--- (Allows fluids to be transported 10 meters upwards.)
--- 
--- Contains both a Conveyor Belt and Pipe input and output, to allow for the automation of various recipes.
---@class Build_OilRefinery_C:Manufacturer
local Build_OilRefinery_C

--- Used for the packaging and unpacking of fluids.
--- Head Lift: 10 meters.
--- (Allows fluids to be transported 10 meters upwards.)
--- 
--- Contains both a Conveyor Belt and Pipe input and output, to allow for the automation of various recipes.
---@class Build_Packager_C:Manufacturer
local Build_Packager_C

--- Tubes for transporting FICSIT employees.
--- A Hyper Tube Entrance needs to be attached to power and enter a Hyper Tube system.
---@class Build_PipeHyper_C:FGBuildablePipeHyper
local Build_PipeHyper_C

--- 
---@class FGBuildablePipeHyper:FGBuildablePipeBase
local FGBuildablePipeHyper

--- 
---@class FGBuildablePipeBase:FGBuildable
local FGBuildablePipeBase

--- Used to enter and power a Hyper Tube.
---@class Build_PipeHyperStart_C:FGPipeHyperStart
local Build_PipeHyperStart_C

--- 
---@class FGPipeHyperStart:FGBuildablePipeHyperPart
local FGPipeHyperStart

--- 
---@class FGBuildablePipeHyperPart:FGBuildablePipePart
local FGBuildablePipeHyperPart

--- 
---@class FGBuildablePipePart:Factory
local FGBuildablePipePart

--- Supports for Hyper Tubes to allow for longer distances.
---@class Build_PipeHyperSupport_C:FGBuildablePipelineSupport
local Build_PipeHyperSupport_C

--- 
---@class FGBuildablePipelineSupport:FGBuildablePoleBase
local FGBuildablePipelineSupport

--- Can be attached to a pipeline to split it 4-way.
---@class Build_PipelineJunction_Cross_C:FGBuildablePipelineJunction
local Build_PipelineJunction_Cross_C

--- 
---@class FGBuildablePipelineJunction:FGBuildablePipelineAttachment
local FGBuildablePipelineJunction

--- 
---@class FGBuildablePipelineAttachment:Factory
local FGBuildablePipelineAttachment

--- Outside indicators show volume, flow rate and direction.
--- Transports up to 300m³ of fluid per minute.
--- Used to transport fluids.
---@class Build_Pipeline_C:FGBuildablePipeline
local Build_Pipeline_C

--- 
---@class FGBuildablePipeline:FGBuildablePipeBase
local FGBuildablePipeline

--- Outside indicators show volume, flow rate and direction.
--- Transports up to 600m³ of fluid per minute.
--- Used to transport fluids.
---@class Build_PipelineMK2_C:FGBuildablePipeline
local Build_PipelineMK2_C

--- Support for Hyper Tubes. Can be stacked on other stackable supports.
---@class Build_HyperPoleStackable_C:FGBuildablePipelineSupport
local Build_HyperPoleStackable_C

--- Can be used as a connection for pipelines. The height of the support can be adjusted.
--- Useful to route pipelines in a more controlled manner and over long distances.
---@class Build_PipelineSupport_C:FGBuildablePipelineSupport
local Build_PipelineSupport_C

--- Support for pipelines. Can be stacked on other stackable supports.
---@class Build_PipeSupportStackable_C:FGBuildablePipelineSupport
local Build_PipeSupportStackable_C

--- Can be attached to walls.
--- Used to connect Pipelines over longer distances.
---@class Build_PipelineSupportWall_C:FGBuildable
local Build_PipelineSupportWall_C

--- Can be attached to walls, allowing Pipelines to pass through them.
---@class Build_PipelineSupportWallHole_C:FGBuildable
local Build_PipelineSupportWallHole_C

--- Can be attached to a Pipeline to apply Head Lift.
--- Maximum Head Lift: 20 meters
--- (Allows fluids to be transported 20 meters upwards.)
--- 
--- NOTE: Has an in- and output direction.
--- NOTE: Head Lift does not stack, so space between Pumps is recommended.
---@class Build_PipelinePump_C:PipelinePump
local Build_PipelinePump_C

--- A building that can pump fluids to a higher level within a pipeline.
---@class PipelinePump:FGBuildablePipelineAttachment
---@field public maxHeadlift number @The maximum amount of headlift this pump can provide.
---@field public designedHeadlift number @The amomunt of headlift this pump is designed for.
---@field public indicatorHeadlift number @The amount of headlift the indicator shows.
---@field public indicatorHeadliftPct number @The amount of headlift the indicator shows as percantage from max.
local PipelinePump

--- Can be attached to a Pipeline to apply Head Lift.
--- Maximum Head Lift: 50 meters
--- (Allows fluids to be transported 50 meters upwards.)
--- 
--- NOTE: Has an in- and output direction.
--- NOTE: Head Lift does not stack, so space between Pumps is recommended.
---@class Build_PipelinePumpMk2_C:PipelinePump
local Build_PipelinePumpMk2_C

--- Used to limit Pipeline flow rates.
--- Can be attached to a Pipeline.
--- 
--- NOTE: Has an in- and output direction.
---@class Build_Valve_C:PipelinePump
local Build_Valve_C

--- Used to connect Power Poles, Power Generators and Factory buildings.
---@class Build_PowerLine_C:FGBuildableWire
local Build_PowerLine_C

--- 
---@class FGBuildableWire:FGBuildable
local FGBuildableWire

--- Can handle up to 4 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleMk1_C:FGBuildablePowerPole
local Build_PowerPoleMk1_C

--- 
---@class FGBuildablePowerPole:FGBuildable
local FGBuildablePowerPole

--- Can handle up to 7 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleMk2_C:Build_PowerPoleMk1_C
local Build_PowerPoleMk2_C

--- Can handle up to 10 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleMk3_C:Build_PowerPoleMk1_C
local Build_PowerPoleMk3_C

--- Power Pole that attaches to a wall.
--- 
--- Can handle up to 4 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleWall_C:FGBuildablePowerPole
local Build_PowerPoleWall_C

--- Power Pole that attaches to a wall.
--- 
--- Can handle up to 7 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleWall_Mk2_C:Build_PowerPoleWall_C
local Build_PowerPoleWall_Mk2_C

--- Power Pole that attaches to a wall.
--- 
--- Can handle up to 10 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleWall_Mk3_C:Build_PowerPoleWall_C
local Build_PowerPoleWall_Mk3_C

--- Power Pole that attaches to a wall. Has one connector on each side of the wall.
--- 
--- Can handle up to 4 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleWallDouble_C:FGBuildablePowerPole
local Build_PowerPoleWallDouble_C

--- Power Pole that attaches to a wall. Has one connector on each side of the wall.
--- 
--- Can handle up to 7 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleWallDouble_Mk2_C:Build_PowerPoleWallDouble_C
local Build_PowerPoleWallDouble_Mk2_C

--- Power Pole that attaches to a wall. Has one connector on each side of the wall.
--- 
--- Can handle up to 10 Power Line connections.
--- 
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Build_PowerPoleWallDouble_Mk3_C:Build_PowerPoleWallDouble_Mk2_C
local Build_PowerPoleWallDouble_Mk3_C

--- Storage Capacity: 100 MWh (100 MW for 1 hour)
--- Max Charge Rate: 100 MW
--- Max Discharge Rate: Unlimited 
--- 
--- Can be connected to a Power Grid to store excess power production. The stored power can be used later in cases of high consumption.
---@class Build_PowerStorageMk1_C:PowerStorage
local Build_PowerStorageMk1_C

--- A building that can store power for later usage.
---@class PowerStorage:Factory
---@field public powerStore number @The current amount of energy stored in the storage.
---@field public powerCapacity number @The amount of energy the storage can hold max.
---@field public powerStorePercent number @The current power store in percent.
---@field public powerIn number @The amount of power coming into the storage.
---@field public powerOut number @The amount of power going out from the storage.
---@field public timeUntilFull number @The time in seconds until the storage is filled.
---@field public timeUntilEmpty number @The time in seconds until the storage is empty.
---@field public batteryStatus number @The current status of the battery. 0 = Idle, 1 = Idle Empty, 2 = Idle Full, 3 = Power In, 4 = Power Out
---@field public batteryMaxIndicatorLevel number @The maximum count of Level lights that are shown.
local PowerStorage

--- Can be switched ON/OFF to enable/disable the connection between two Power Grids.
--- 
--- Note the location of the A and B connection.
---@class Build_PowerSwitch_C:CircuitSwitch
local Build_PowerSwitch_C

--- A circuit bridge that can be activated and deactivate by the player.
---@class CircuitSwitch:CircuitBridge
---@field public isSwitchOn boolean @True if the two circuits are connected to each other and act as one entity.
local CircuitSwitch

--- Reveals an area around itself on the map. The area is gradually revealed over time up to a maximum.
--- Placing the tower higher up increases the maximum area revealed.
---@class Build_RadarTower_C:FGBuildableRadarTower
local Build_RadarTower_C

--- 
---@class FGBuildableRadarTower:Factory
local FGBuildableRadarTower

--- Got excess resources? Fear not, for FICSIT does not waste! The newly developed AWESOME Sink turns any useful part straight into research data, as fast as you can supply it! 
--- Participating pioneers will be compensated with Coupons to be spend at the AWESOME Shop.
---@class Build_ResourceSink_C:FGBuildableResourceSink
local Build_ResourceSink_C

--- 
---@class FGBuildableResourceSink:Factory
local FGBuildableResourceSink

--- Redeem your FICSIT Coupons here! 
--- For those employees going the extra kilometer we have set aside special bonus milestones and rewards! Get your Coupons in the AWESOME Sink program now!
--- 
--- *No refunds possible.
---@class Build_ResourceSinkShop_C:FGBuildableResourceSinkShop
local Build_ResourceSinkShop_C

--- 
---@class FGBuildableResourceSinkShop:Factory
local FGBuildableResourceSinkShop

--- Smelts ore into ingots.
--- 
--- Can be automated by feeding ore into it with a conveyor belt connected to the input. The produced ingots can be automatically extracted by connecting a conveyor belt to the output.
---@class Build_SmelterMk1_C:Manufacturer
local Build_SmelterMk1_C

--- Requires deliveries of special Project Parts to complete Phases of Project Assembly.
--- Completing Phases in the Space Elevator will unlock new Tiers in the HUB Terminal.
---@class Build_SpaceElevator_C:FGBuildableSpaceElevator
local Build_SpaceElevator_C

--- 
---@class FGBuildableSpaceElevator:Factory
local FGBuildableSpaceElevator

--- Contains 24 slots for storing large amounts of items.
--- Has an input and output for conveyor belts.
---@class Build_StorageContainerMk1_C:FGBuildableStorage
local Build_StorageContainerMk1_C

--- 
---@class FGBuildableStorage:Factory
local FGBuildableStorage

--- Contains 48 slots for storing large amounts of items.
--- Has two inputs and outputs for conveyor belts.
---@class Build_StorageContainerMk2_C:FGBuildableStorage
local Build_StorageContainerMk2_C

--- A box you can put things in.
--- Has 25 inventory slots.
---@class Build_StorageIntegrated_C:FGBuildableStorage
local Build_StorageIntegrated_C

--- Contains 25 slots for storing large amounts of items.
---@class Build_StoragePlayer_C:FGBuildableStorage
local Build_StoragePlayer_C

--- Can contain up to 400m³ of fluid.
--- Has an in and output for pipes.
---@class Build_PipeStorageTank_C:PipeReservoir
local Build_PipeStorageTank_C

--- A small Street Light, perfect for lighting up factory pathways and roads.
--- 
--- Light color and intensity can be modified.
--- Allows up to two Power Line connections.
---@class Build_StreetLight_C:LightSource
local Build_StreetLight_C

--- The heart of your factory. This is where you complete FICSIT milestones to unlock additional blueprints of buildings, vehicles, parts, equipment etc.
---@class Build_TradingPost_C:FGBuildableTradingPost
local Build_TradingPost_C

--- 
---@class FGBuildableTradingPost:Factory
local FGBuildableTradingPost

--- Freight Cars that stop at the Freight Platform will be loaded or unloaded by the Freight Platform.
--- Loading and unloading options can be set inside the building.
--- Snaps to other Platforms and Stations.
--- Needs to be connected to a powered Railway to function.
---@class Build_TrainDockingStation_C:TrainPlatformCargo
local Build_TrainDockingStation_C

--- A train platform that allows for loading and unloading cargo cars.
---@class TrainPlatformCargo:TrainPlatform
---@field public isLoading boolean @True if the cargo platform is currently loading the docked cargo vehicle.
---@field public isUnloading boolean @True if the cargo platform is currently unloading the docked cargo vehicle.
---@field public dockedOffset number @The offset to the track start of the platform at were the vehicle docked.
---@field public outputFlow number @The current output flow rate.
---@field public inputFlow number @The current input flow rate.
---@field public fullLoad boolean @True if the docked cargo vehicle is fully loaded.
---@field public fullUnload boolean @Ture if the docked cargo vehicle is fully unloaded.
local TrainPlatformCargo

--- The base class for all train station parts.
---@class TrainPlatform:Factory
---@field public status number @The current docking status of the platform.
---@field public isReversed boolean @True if the orientation of the platform is reversed relative to the track/station.
local TrainPlatform
--- Returns the track graph of which this platform is part of.
---@return TrackGraph
function TrainPlatform:getTrackGraph() end
--- Returns the track pos at which this train platform is placed.
---@return RailroadTrack,number,number
function TrainPlatform:getTrackPos() end
--- Returns the connected platform in the given direction.
---@param direction number @The direction in which you want to get the connected platform.
---@return TrainPlatform
function TrainPlatform:getConnectedPlatform(direction) end
--- Returns the currently docked vehicle.
---@return Vehicle
function TrainPlatform:getDockedVehicle() end
--- Returns the master platform of this train station.
---@return RailroadVehicle
function TrainPlatform:getMaster() end
--- Returns the currently docked locomotive at the train station.
---@return RailroadVehicle
function TrainPlatform:getDockedLocomotive() end

--- Freight Cars that stop at the Freight Platform will be loaded or unloaded by the Freight Platform.
--- Loading and unloading options can be set inside the building.
--- Snaps to other Platforms and Stations.
--- Needs to be connected to a powered Railway to function.
---@class Build_TrainDockingStationLiquid_C:TrainPlatformCargo
local Build_TrainDockingStationLiquid_C

--- An empty train platform for when you need to create some empty space.
---@class Build_TrainPlatformEmpty_C:FGBuildableTrainPlatformEmpty
local Build_TrainPlatformEmpty_C

--- 
---@class FGBuildableTrainPlatformEmpty:TrainPlatform
local FGBuildableTrainPlatformEmpty

--- Locomotives can be set to drive to and stop at the Train Station.
--- You can connect power to the train station to power up the trains on the railway as well as transport the power to other stations.
---@class Build_TrainStation_C:RailroadStation
local Build_TrainStation_C

--- The train station master platform. This platform holds the name and manages docking of trains.
---@class RailroadStation:TrainPlatform
---@field public name string @The name of the railroad station.
---@field public dockedOffset number @The Offset to the beginning of the station at which trains dock.
local RailroadStation

--- 
---@class Build_RailroadSwitchControl_C:RailroadSwitchControl
local Build_RailroadSwitchControl_C

--- The controler object for a railroad switch.
---@class RailroadSwitchControl:Factory
local RailroadSwitchControl
--- Toggles the railroad switch like if you interact with it.
function RailroadSwitchControl:toggleSwitch() end
--- Returns the current switch position of this switch.
---@return number
function RailroadSwitchControl:switchPosition() end

--- Used to transport trains in a reliable and fast manner.
--- Has a wide turn angle so make sure to plan it out properly.
---@class Build_RailroadTrack_C:RailroadTrack
local Build_RailroadTrack_C

--- A peice of railroad track over which trains can drive.
---@class RailroadTrack:FGBuildable
---@field public length number @The length of the track.
---@field public isOwnedByPlatform boolean @True if the track is part of/owned by a railroad platform.
local RailroadTrack
--- Returns the closes track position from the given world position
---@param worldPos Vector @The world position form which you want to get the closest track position.
---@return RailroadTrack,number,number
function RailroadTrack:getClosestTrackPosition(worldPos) end
--- Returns the world location and world rotation of the track position from the given track position.
---@param track RailroadTrack @The track the track pos points to.
---@param offset number @The offset of the track pos.
---@param forward number @The forward direction of the track pos. 1 = with the track direction, -1 = against the track direction
---@return Vector,Vector
function RailroadTrack:getWorldLocAndRotAtPos(track, offset, forward) end
--- Returns the railroad track connection at the given direction.
---@param direction number @The direction of which you want to get the connector from. 0 = front, 1 = back
---@return RailroadTrackConnection
function RailroadTrack:getConnection(direction) end
--- Returns the track graph of which this track is part of.
---@return TrackGraph
function RailroadTrack:getTrackGraph() end

--- 
---@class Build_RailroadTrackIntegrated_C:RailroadTrack
local Build_RailroadTrackIntegrated_C

--- Either send or receive resources to vehicles. Has an inventory with 48 slots.
--- Transfers up to 120 stacks per minute to/from docked vehicle. 
--- Always refuels vehicles if it has access to a matching fuel type.
--- 
---@class Build_TruckStation_C:DockingStation
local Build_TruckStation_C

--- A docking station for wheeled vehicles to transfer cargo.
---@class DockingStation:Factory
---@field public isLoadMode boolean @True if the docking station loads docked vehicles, flase if it unloads them.
---@field public isLoadUnloading boolean @True if the docking station is currently loading or unloading a docked vehicle.
local DockingStation
--- Returns the fuel inventory of the docking station.
---@return Inventory
function DockingStation:getFuelInv() end
--- Returns the cargo inventory of the docking staiton.
---@return Inventory
function DockingStation:getInv() end
--- Returns the currently docked actor.
---@return Actor
function DockingStation:getDocked() end
--- Undocked the currently docked vehicle from this docking station.
function DockingStation:undock() end

--- Default extraction rate: 120m³ water per minute.
--- Head Lift: 10 meters.
--- (Allows fluids to be transported 10 meters upwards.)
--- 
--- Extracts water from the body of water it is built on.
--- Note that the water needs to be deep enough and that rivers do not commonly suffice.
---@class Build_WaterPump_C:FGBuildableWaterPump
local Build_WaterPump_C

--- 
---@class FGBuildableWaterPump:FGBuildableResourceExtractor
local FGBuildableWaterPump

--- Allows you to manually craft a large range of different parts. 
--- These parts can then be used in construction of different factory buildings, vehicles and equipment.
---@class Build_WorkBench_C:FGBuildable
local Build_WorkBench_C

--- The Craft Bench allows you to manually produce parts to use in constructing buildings.
---@class Build_WorkBenchIntegrated_C:FGBuildable
local Build_WorkBenchIntegrated_C

--- Used to manually craft equipment.
---@class Build_Workshop_C:FGBuildable
local Build_Workshop_C

--- The base class for all vehicles that used wheels for movement.
---@class WheeledVehicle:Vehicle
---@field public speed number @The current forward speed of this vehicle.
---@field public burnRatio number @The amount of fuel this vehicle burns.
---@field public wheelsOnGround number @The number of wheels currenlty on the ground.
---@field public hasFuel boolean @True if the vehicle has currently fuel to drive.
---@field public isInAir boolean @True if the vehicle is currently in the air.
---@field public wantsToMove boolean @True if the vehicle currently wants to move.
---@field public isDrifting boolean @True if the vehicle is currently drifting.
local WheeledVehicle
--- Returns the inventory that contains the fuel of the vehicle.
---@return Inventory
function WheeledVehicle:getFuelInv() end
--- Returns the inventory that contains the storage of the vehicle.
---@return Inventory
function WheeledVehicle:getStorageInv() end
--- Allows to check if the given item type is a valid fuel for this vehicle.
---@param item ItemType-Class @The item type you want to check.
---@return boolean
function WheeledVehicle:isValidFuel(item) end
--- Returns the index of the target that the vehicle tries to move to right now.
---@return number
function WheeledVehicle:getCurrentTarget() end
--- Sets the current target to the next target in the list.
function WheeledVehicle:nextTarget() end
--- Sets the target with the given index as the target this vehicle tries to move to right now.
---@param index number @The index of the target this vehicle should move to now.
function WheeledVehicle:setCurrentTarget(index) end
--- Returns the target struct at with the given index in the target list.
---@return TargetPoint
function WheeledVehicle:getTarget() end
--- Removes the target with the given index from the target list.
---@param index number @The index of the target point you want to remove from the target list.
function WheeledVehicle:removeTarget(index) end
--- Adds the given target point struct at the end of the target list.
---@param target TargetPoint @The target point you want to add.
function WheeledVehicle:addTarget(target) end
--- Allows to set the target at the given index to the given target point struct.
---@param index number @The index of the target point you want to update with the given target point struct.
---@param target TargetPoint @The new target point struct for the given index.
function WheeledVehicle:setTarget(index, target) end
--- Removes all targets from the target point list.
function WheeledVehicle:clearTargets() end
--- Returns a list of target point structs of all the targets in the target point list.
---@return TargetPoint[]
function WheeledVehicle:getTargets() end
--- Removes all targets from the target point list and adds the given array of target point structs to the empty target point list.
---@param targets TargetPoint[] @A list of target point structs you want to place into the empty target point list.
function WheeledVehicle:setTargets(targets) end

--- The base class for any vehicle that drives on train tracks.
---@class RailroadVehicle:Vehicle
---@field public length number @The length of this vehicle on the track.
---@field public isDocked boolean @True if this vehicle is currently docked to a platform.
---@field public isReversed boolean @True if the vheicle is placed reversed on the track.
local RailroadVehicle
--- Returns the train of which this vehicle is part of.
---@return Train
function RailroadVehicle:getTrain() end
--- Allows to check if the given coupler is coupled to another car.
---@param coupler number @The Coupler you want to check. 0 = Front, 1 = Back
---@return boolean
function RailroadVehicle:isCoupled(coupler) end
--- Allows to get the coupled vehicle at the given coupler.
---@param coupler number @The Coupler you want to get the car from. 0 = Front, 1 = Back
---@return RailroadVehicle
function RailroadVehicle:getCoupled(coupler) end
--- Returns the track graph of which this vehicle is part of.
---@return TrackGraph
function RailroadVehicle:getTrackGraph() end
--- Returns the track pos at which this vehicle is.
---@return RailroadTrack,number,number
function RailroadVehicle:getTrackPos() end
--- Returns the vehicle movement of this vehicle.
---@return RailroadVehicleMovement
function RailroadVehicle:getMovement() end

--- A giant, delicious Candy Cane.
--- 
--- *Warning: It is not actually delicious... or edible, for that matter.
---@class Build_CandyCaneDecor_C:Factory
local Build_CandyCaneDecor_C

--- Used to connect Power Poles, Power Generators and Factory buildings. Has pretty lights to boot!
---@class Build_XmassLightsLine_C:FGBuildableWire
local Build_XmassLightsLine_C

--- Makes it snow!
--- Can be attached to walls and ceilings.
---@class Build_SnowDispenser_C:FGBuildableSnowDispenser
local Build_SnowDispenser_C

--- 
---@class FGBuildableSnowDispenser:FGBuildable
local FGBuildableSnowDispenser

--- Do you wanna build it?
--- You will finally have a friend!
--- 
--- *Disclaimer: It is not actually your friend.
---@class Build_Snowman_C:Factory
local Build_Snowman_C

--- This special delivery gigantic FICSMAS Tree is decorated by progressing the FICSMAS Holiday Event MAM Tree.
---@class Build_XmassTree_C:FGBuildable
local Build_XmassTree_C

--- Can be attached to walls. Pretty.
---@class Build_WreathDecor_C:FGBuildable
local Build_WreathDecor_C

--- 
---@class BP_ChristmasCalendar_C:FGBuildableCalendar
local BP_ChristmasCalendar_C

--- 
---@class FGBuildableCalendar:FGBuildable
local FGBuildableCalendar

--- The category of some items.
---@class ItemCategory:Object
---@field public name string @The name of the category.
local ItemCategory

--- Use it to make the buildables.
--- 
--- 8 Outputs
---@class Build_BigBKits_C:Manufacturer
local Build_BigBKits_C

--- Use it to make the buildables.
--- 
--- 4 Outputs
---@class Build_MediumBKits_C:Manufacturer
local Build_MediumBKits_C

--- Use it to make the buildables.
--- 
--- 2 Outputs
---@class Build_SmallBKits_C:Manufacturer
local Build_SmallBKits_C

--- The FicsIt-Networks Codeable Merger  is able to get connected to the component network and provides functions and signals for custom merger behaviour defenition.
--- 
--- This allows you to change the merging behaviour in runtime by connected computers so it can f.e. depend on the amount of items in a storage container.
---@class CodeableMerger_C:CodeableMerger
local CodeableMerger_C

--- 
---@class CodeableMerger:FGBuildableConveyorAttachment
---@field public canOutput boolean @Is true if the output queue has a slot available for an item from one of the input queues.
local CodeableMerger
--- Allows to transfer an item from the given input queue to the output queue if possible.
---@param input number @The index of the input queue you want to transfer the next item to the output queue. (0 = right, 1 = middle, 2 = left)
---@return boolean
function CodeableMerger:transferItem(input) end
--- Returns the next item in the given input queue.
---@param input number @The index of the input queue you want to check (0 = right, 1 = middle, 2 = left)
---@return Item
function CodeableMerger:getInput(input) end

--- The FicsIt-Networks Codeable Splitter is able to get connected to the component network and provides functions and signals for custom splitter behaviour defenition.
--- 
--- This allows you to change the splitting behaviour in runtime by connected computers so it can f.e. depend on the amount of items in a storage container.
---@class CodeableSplitter_C:CodeableSplitter
local CodeableSplitter_C

--- 
---@class CodeableSplitter:FGBuildableConveyorAttachment
local CodeableSplitter
--- Allows to transfer an item from the input queue to the given output queue if possible.
---@param output number @The index of the output queue you want to transfer the next item to (0 = middle, 1 = left, 2 = right)
---@return boolean
function CodeableSplitter:transferItem(output) end
--- Returns the next item in the input queue.
---@return Item
function CodeableSplitter:getInput() end
--- Allows to check if we can transfer an item to the given output queue.
---@param output number @The index of the output queue you want to check (0 = middle, 1 = left, 2 = right)
---@return boolean
function CodeableSplitter:canOutput(output) end

--- The FicsIt-Networks Codeable Splitter is able to get connected to the component network and provides functions and signals for custom splitter behaviour defenition.
--- 
--- This allows you to change the splitting behaviour in runtime by connected computers so it can f.e. depend on the amount of items in a storage container.
---@class CodeableSplitter_2_C:CodeableSplitter
local CodeableSplitter_2_C

--- The FicsIt-Networks indicator light allows yout to determine by the looks of from far away the state of a machine or program.
--- 
--- It has dynamic height, is stack able and you can control the color of it via accessing it from the computer network.
---@class IndicatorPole_C:IndicatorPole
local IndicatorPole_C

--- 
---@class IndicatorPole:FGBuildable
local IndicatorPole
--- Allows to change the color and light intensity of the indicator lamp.
---@param r number @The red part of the color in which the light glows. (0.0 - 1.0)
---@param g number @The green part of the color in which the light glows. (0.0 - 1.0)
---@param b number @The blue part of the color in which the light glows. (0.0 - 1.0)
---@param e number @The light intensity of the pole. (0.0 - 5.0)
function IndicatorPole:setColor(r, g, b, e) end
--- Allows to get the pole placed on top of this pole.
---@return IndicatorPole
function IndicatorPole:getTopPole() end
--- Allows to get the color and light intensity of the indicator lamp.
---@return number,number,number,number
function IndicatorPole:getColor() end
--- 
---@return IndicatorPole
function IndicatorPole:getBottomPole() end

--- Enclosure for 1 command points
---@class ModulePanel:FGBuildable
local ModulePanel
--- 
---@param Y number @
---@return Actor
function ModulePanel:getYModule(Y) end
--- 
---@param X number @
---@return Actor
function ModulePanel:getXModule(X) end
--- 
---@return Object[]
function ModulePanel:getModules() end
--- 
---@param X number @
---@param Y number @
---@return Actor
function ModulePanel:getModule(X, Y) end

--- Enclosure for 1 command points.
--- 
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.
--- 
--- You can fully customize the control panels with buttons lights etc.
---@class MCP_1Point_C:ModulePanel
local MCP_1Point_C

--- Micro Control Panel for 1 command point, center placement.
--- 
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.
--- 
--- You can fully customize the control panels with buttons lights etc.
---@class MCP_1Point_Center_C:ModulePanel
local MCP_1Point_Center_C

--- Enclosure for 2 command points.
--- 
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.
--- 
--- You can fully customize the control panels with buttons lights etc.
---@class MCP_2Point_C:ModulePanel
local MCP_2Point_C

--- Enclosure for 3 command points.
--- 
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.
--- 
--- You can fully customize the control panels with buttons lights etc.
---@class MCP_3Point_C:ModulePanel
local MCP_3Point_C

--- Enclosure for 6 command points.
--- 
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.
--- 
--- You can fully customize the control panels with buttons lights etc.
---@class MCP_6Point_C:ModulePanel
local MCP_6Point_C

--- This panel allows for dynamic sizeing. For placing on walls.
---@class SizeableModulePanel:FINSizeablePanel
local SizeableModulePanel
--- 
---@return Object[]
function SizeableModulePanel:getModules() end
--- 
---@param X number @
---@param Y number @
---@return Actor
function SizeableModulePanel:getModule(X, Y) end

--- 
---@class FINSizeablePanel:FGBuildable
local FINSizeablePanel

--- This Switch Module for modular I/O Panels is used to toggle between a true and false value. It has an illuminable spot on the knob and you can use them to trigger specific programmed events.
---@class MCP_Mod_2Pos_Switch_C:FINModuleBase
---@field public state boolean @
local MCP_Mod_2Pos_Switch_C
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MCP_Mod_2Pos_Switch_C:setColor(red, green, blue, Emit) end

--- 
---@class FINModuleBase:FGBuildable
local FINModuleBase

--- This Switch Module for modular I/O Panels is used to toggle between three different settings. It has an illuminable spot on the knob and you can use them to trigger specific programmed events.
---@class MCP_Mod_3Pos_Switch_C:FINModuleBase
---@field public state number @
local MCP_Mod_3Pos_Switch_C
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MCP_Mod_3Pos_Switch_C:setColor(red, green, blue, Emit) end

--- This Potentiometer Module allows for input of a value with infinite range, this because it only fires how much the value changed since last, not how much it is at.
---@class MCP_Mod_Encoder_C:FINModuleBase
local MCP_Mod_Encoder_C
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MCP_Mod_Encoder_C:setColor(red, green, blue, Emit) end

--- A small analogue Gauge for use on Micro Enclosures. The red portion and needle position can be changed through FIN
---@class MCP_Mod_Guage_C:FINModuleBase
---@field public limit number @
---@field public percent number @
local MCP_Mod_Guage_C
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MCP_Mod_Guage_C:setColor(red, green, blue, Emit) end

--- Indicator Module for panels
---@class IndicatorModule_Item:FINModuleBase
local IndicatorModule_Item
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function IndicatorModule_Item:setColor(red, green, blue, Emit) end

--- Provides a small text only display for Control Panels. 
--- Can display up to 3 digits, One additional dot may be used.
---@class MicroDisplayModule_Item:FINModuleBase
local MicroDisplayModule_Item
--- 
---@param Text string @
function MicroDisplayModule_Item:setText(Text) end
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MicroDisplayModule_Item:setColor(red, green, blue, Emit) end

--- This Mushroom Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class Item_MushroomPushButtonModule:FINModuleBase
local Item_MushroomPushButtonModule
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function Item_MushroomPushButtonModule:setColor(red, green, blue, Emit) end
--- Triggers a button press by code.
function Item_MushroomPushButtonModule:trigger() end

--- This Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class MCP_Mod_Plug_C:FINModuleBase
local MCP_Mod_Plug_C

--- This Potentiometer Module allows for input of a fixed value range and fires a signal with the new value each time the internal counter changes.
---@class MCP_Mod_Potentiometer_C:FINModuleBase
---@field public value number @
---@field public max number @
---@field public min number @
local MCP_Mod_Potentiometer_C
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MCP_Mod_Potentiometer_C:setColor(red, green, blue, Emit) end

--- This Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class PushButtonModule-Item:FINModuleBase
local PushButtonModule-Item
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function PushButtonModule-Item:setColor(red, green, blue, Emit) end
--- Triggers a button press by code.
function PushButtonModule-Item:trigger() end

--- This large modular I/O control panel allows you to attach multiple different modules on to it and use them as I/O to control you programms.
--- 
--- You can connect it to the FicsIt-Network.
--- 
--- Important to note is that every module is it's own component, that means if you want to listen to the signals, you will need to listen to each of them individually.
---@class LargeControlPanel:FGBuildable
local LargeControlPanel
--- 
---@return Object[]
function LargeControlPanel:getModules() end
--- 
---@param X number @
---@param Y number @
---@return Actor
function LargeControlPanel:getModule(X, Y) end

--- This large verical modular I/O control panel allows you to attach multiple different modules on to it and use them as I/O to control you programms.
--- 
--- You can connect it to the FicsIt-Network.
--- 
--- Important to note is that every module is it's own component, that means if you want to listen to the signals, you will need to listen to each of them individually.
---@class LargeVerticalControlPanel:FGBuildable
local LargeVerticalControlPanel
--- 
---@return Object[]
function LargeVerticalControlPanel:getModules() end
--- 
---@param X number @
---@param Y number @
---@param Panel number @
---@return Actor
function LargeVerticalControlPanel:getModule(X, Y, Panel) end

--- This Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class ModuleButton:FINModuleBase
local ModuleButton
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function ModuleButton:setColor(red, green, blue, Emit) end
--- Triggers a button press by code.
function ModuleButton:trigger() end

--- The Potentiometer Module for the Modular I/O Control Panel allows you to have rotation input value for you programs.
--- 
--- You can rotate it indefinetly into any direction where every rotation triggers a computer network signal.
---@class ModulePotentiometer:FINModuleBase
local ModulePotentiometer
--- 
---@param Anticlockwise boolean @
function ModulePotentiometer:rotate(Anticlockwise) end

--- This Screen Module for modular I/O Panels allows you to show graphics a GPU renders and to interact with it.
--- 
--- You can use the instance of the module to bind it to a GPU. The screen will then display the graphics the GPU renders. If you just look at the screen with the crosshair you will trigger the GPUs OnMouseMove events or if you event click with the right of left mouse button while doing so, you can also trigger the MouseDown and MouseUp events.
---@class ModuleScreen_C:FINModuleScreen
local ModuleScreen_C

--- 
---@class FINModuleScreen:FINModuleBase
local FINModuleScreen

--- This Stop Button Module for the modular I/O Panel is used to trigger important programmable events.
---@class ModuleStopButton:FINModuleBase
local ModuleStopButton
--- Triggers a button press by code.
function ModuleStopButton:trigger() end

--- The Lever Module for the modular I/O Panel is used to switch a programm state between two different value (on or off).
---@class ModuleSwitch_C:FINModuleBase
---@field public state boolean @
local ModuleSwitch_C

--- The FicsIt-Networks Text-Display Module for the Modular Control Panel is a simple GPU and Screen combined!
--- 
--- It allows you to display any kind of text with differnt font sizes and you can even switch between two fonts!
--- 
--- But you can't interact with it, nor change the background/foreground color as you can do with a GPU.
---@class ModuleTextDisplay_C:FINModuleBase
---@field public monospace boolean @
---@field public size number @
---@field public text string @
local ModuleTextDisplay_C

--- A medium analogue Gauge for use on Large Panels. The red portion and needle position can be changed through FIN
---@class Module_BigGuage_C:FINModuleBase
---@field public limit number @
---@field public percent number @
local Module_BigGuage_C
--- 
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function Module_BigGuage_C:setColor(red, green, blue, Emit) end

--- Label is just a module for placing a label onto the panel
---@class Module_Label_2x1_C:FINModuleBase
local Module_Label_2x1_C

--- The FicsIt-Networks Network Router allows you to sepperate two different component network from each other.
--- But it still lets network messages sent by network cards through.
--- This allows for better networking capabilities, faster networking (can reduce game lag) and makes working with larger networks and multiple computer more easy.
--- 
--- The router also provides a couple of functions which allow you to create filters for ports and message senders.
---@class NetworkRouter_C:NetworkRouter
local NetworkRouter_C

--- 
---@class NetworkRouter:FGBuildable
---@field public isWhitelist boolean @
---@field public isAddrWhitelist boolean @True if the address filter list is used as whitelist.
local NetworkRouter
--- Overrides the port filter list with the given array.
---@return number[]
function NetworkRouter:setPortList() end
--- Overrides the address filter list with the given array.
---@return string[]
function NetworkRouter:setAddrList() end
--- Removes the given port from the port filter list.
---@param port number @The port you want to remove from the list.
function NetworkRouter:removePortList(port) end
--- Removes the given address from the address filter list.
---@param addr string @The address you want to remove from the list.
function NetworkRouter:removeAddrList(addr) end
--- Allows to get all the ports of the port filter list as array.
---@return number[]
function NetworkRouter:getPortList() end
--- Allows to get all the addresses of the address filter list as array.
---@return string[]
function NetworkRouter:getAddrList() end
--- Adds a given port to the port filter list.
---@param port number @The port you want to add to the list.
function NetworkRouter:addPortList(port) end
--- 
---@param addr string @
function NetworkRouter:addAddrList(addr) end

--- The FicsIt-Networks large screen allows you to display anything a GPU can render onto a huge plane.
--- 
--- You can also interact with the monitor by locking at it and also by clicking on it.
---@class Build_Screen_C:Screen
local Build_Screen_C

--- 
---@class Screen:FGBuildable
local Screen
--- Returns the size of the screen in 'panels'.
---@return number,number
function Screen:getSize() end

--- The FicsIt-Networks speaker pole is a network component which allows you to use one more sense of the pioneers to give commands to them or to just make ambient better.
--- 
--- The speaker pole can play sound files located in the Computer Folder "/Sounds" in your Satisfactory Save-Games-Folder. The FicsIt-Networks speaker pole is only able to play .ogg files cause FicsIt Inc. has the opinion other file formates are useless.
---@class Speakers_C:SpeakerPole
local Speakers_C
--- 
---@param Volume number @
function Speakers_C:setVolume(Volume) end
--- 
---@param Range number @
function Speakers_C:setRange(Range) end
--- 
---@return number
function Speakers_C:getVolume() end
--- 
---@return number
function Speakers_C:getRange() end

--- This speaker pole allows to play custom sound files, In-Game
---@class SpeakerPole:FGBuildable
local SpeakerPole
--- Stops the currently playing sound file.
function SpeakerPole:stopSound() end
--- Plays a custom sound file ingame
---@param sound string @The sound file (without the file ending) you want to play
---@param startPoint number @The start point in seconds at which the system should start playing
function SpeakerPole:playSound(sound, startPoint) end

--- The FicsIt-Networks Vehicle Scanner allows you to communicate with vehicles driving over the scanner.
--- 
--- You can also get notfied when a vehicle enters or leaves the scanner.
---@class VehicleScanner_C:VehicleScanner
local VehicleScanner_C

--- 
---@class VehicleScanner:FGBuildable
local VehicleScanner
--- Allows to change the color and light intensity of the scanner.
---@param r number @The red part of the color in which the scanner glows. (0.0 - 1.0)
---@param g number @The green part of the color in which the scanner glows. (0.0 - 1.0)
---@param b number @The blue part of the color in which the scanner glows. (0.0 - 1.0)
---@param e number @The light intensity of the scanner. (0.0 - 5.0)
function VehicleScanner:setColor(r, g, b, e) end
--- Returns the last vehicle that entered the scanner.
---@return Vehicle
function VehicleScanner:getLastVehicle() end
--- Allows to get the color and light intensity of the scanner.
---@return number,number,number,number
function VehicleScanner:getColor() end

--- The FicsIt-Network computer case is the most important thing you will know of. This case already holds the essentials of a computer for you. Like a network connector, keyboard, mouse and screen. But most important of all, it already has a motherboard were you can place and configure the computer just like you want.
---@class Computer_C:ComputerCase
local Computer_C

--- 
---@class ComputerCase:FGBuildable
local ComputerCase

--- This CPU is from the FicsIt-Lua series and allows you to program the PC with Lua.
--- 
--- You can only place one CPU per PC.
--- 
--- You are required to have at least one CPU per PC to run it. FicsIt does not allow unused PC Cases to get build.
---@class CPU_Lua_C:FINComputerProcessorLua
local CPU_Lua_C

--- 
---@class FINComputerProcessorLua:FINComputerProcessor
local FINComputerProcessorLua

--- 
---@class FINComputerProcessor:FINComputerModule
local FINComputerProcessor

--- 
---@class FINComputerModule:FGBuildable
local FINComputerModule

--- The FicsIt-Networks Drive holder allows you to add any hard drive to the computer system.
--- 
--- The drive will then be able to get mounted as root FS or to get added as device file to the FS, after that you wil be able to manually mount the drive to your desired location.
---@class DriveHolder_C:FINComputerDriveHolder
local DriveHolder_C

--- 
---@class FINComputerDriveHolder:FINComputerModule
local FINComputerDriveHolder

--- The FicsIt-Networks GPU T1 allows you to render a character grid onto any kind of screen.
--- 
--- Each character of this grid can be colored as you want as well as the background of each character.
--- 
--- You can also change the resolution to up to 150x50 characters.
--- 
--- The GPU also implemnts some signals allowing you to interact with the graphics more easily via keyboard, mouse and even touch.
---@class GPU_T1_C:GPUT1
local GPU_T1_C

--- 
---@class GPUT1:FINComputerGPU
local GPUT1
--- Draws the given text at the given position to the hidden screen buffer.
---@param x number @The x coordinate at which the text should get drawn.
---@param y number @The y coordinate at which the text should get drawn.
---@param str string @The text you want to draw on-to the buffer.
function GPUT1:setText(x, y, str) end
--- Changes the size of the text-grid (and buffer).
---@param w number @The width of the text-gird.
---@param h number @The height of the text-grid.
function GPUT1:setSize(w, h) end
--- Changes the foreground color that is used for the next draw calls.
---@param r number @The red portion of the foreground color. (0.0 - 1.0)
---@param g number @The green portion of the foreground color. (0.0 - 1.0)
---@param b number @The blue portion of the foreground color. (0.0 - 1.0)
---@param a number @The opacity of the foreground color. (0.0 - 1.0)
function GPUT1:setForeground(r, g, b, a) end
--- Allows to change the back buffer of the GPU to the given buffer.
---@param buffer GPUT1Buffer @The Buffer you want to now use as back buffer.
function GPUT1:setBuffer(buffer) end
--- Changes the background color that is used for the next draw calls.
---@param r number @The red portion of the background color. (0.0 - 1.0)
---@param g number @The green portion of the background color. (0.0 - 1.0)
---@param b number @The blue portion of the background color. (0.0 - 1.0)
---@param a number @The opacity of the background color. (0.0 - 1.0)
function GPUT1:setBackground(r, g, b, a) end
--- Returns the size of the text-grid (and buffer).
---@return number,number
function GPUT1:getSize() end
--- Returns the currently bound screen.
---@return Object
function GPUT1:getScreen() end
--- Returns the back buffer as struct to be able to use advanced buffer handling functions. (struct is a copy)
---@return GPUT1Buffer
function GPUT1:getBuffer() end
--- Flushes the hidden screen buffer to the visible screen buffer and so makes the draw calls visible.
function GPUT1:flush() end
--- Draws the given character at all given positions in the given rectangle on-to the hidden screen buffer.
---@param x number @The x coordinate at which the rectangle should get drawn. (upper-left corner)
---@param y number @The y coordinate at which the rectangle should get drawn. (upper-left corner)
---@param dx number @The width of the rectangle.
---@param dy number @The height of the rectangle.
---@param str string @The character you want to use for the rectangle. (first char in the given string)
function GPUT1:fill(x, y, dx, dy, str) end
--- Binds this GPU to the given screen. Unbinds the already bound screen.
---@param newScreen Object @The screen you want to bind this GPU to. Null if you want to unbind the screen.
function GPUT1:bindScreen(newScreen) end

--- 
---@class FINComputerGPU:FINComputerModule
local FINComputerGPU

--- A Internet Card!
---@class InternetCard_C:FINInternetCard
local InternetCard_C

--- 
---@class FINInternetCard:FINComputerModule
local FINInternetCard
--- 
---@param InURL string @
---@param InMethod string @
---@param InData string @
---@return Future
function FINInternetCard:request(InURL, InMethod, InData) end

--- The FicsIt-Networks Network Card allows yout to send network messages to other network cards in the same computer network.
--- 
--- You can use unicast and broadcast messages to share information between multiple different computers in the same network.
--- 
--- This is the best and easiest way for you to communicate between multiple computers.
--- 
--- If you want to recieve network messages, make sure you also open the according port, since every message is asscociated with a port allowing for better filtering.
---@class NetworkCard_C:NetworkCard
local NetworkCard_C

--- 
---@class NetworkCard:FINComputerModule
local NetworkCard
--- Sends a network message to the receiver with the given address on the given port. The data you want to add can be passed as additional parameters. Max amount of such parameters is 7 and they can only be nil, booleans, numbers and strings.
---@param receiver string @The component ID as string of the component you want to send the network message to.
---@param port number @The port on which the network message should get sent. For outgoing network messages a port does not need to be opened.
function NetworkCard:send(receiver, port) end
--- Opens the given port so the network card is able to receive network messages on the given port.
---@param port number @The port you want to open.
function NetworkCard:open(port) end
--- Closes all ports of the network card so no further messages are able to get received
function NetworkCard:closeAll() end
--- Closes the given port so the network card wont receive network messages on the given port.
---@param port number @The port you want to close.
function NetworkCard:close(port) end
--- Sends a network message to all components in the network message network (including networks sepperated by network routers) on the given port. The data you want to add can be passed as additional parameters. Max amount of such parameters is 7 and they can only be nil, booleans, numbers and strings.
---@param port number @The port on which the network message should get sent. For outgoing network messages a port does not need to be opened.
function NetworkCard:broadcast(port) end

--- This is 100kB of amazing FicsIt-Networks Memory.
--- 
--- You can add multiple of the memory bars to your PC and so you can extend the memory of your PC.
--- 
--- You always need to hove enough memory because FicsIt doesn't allow out of memory exceptions and if you bring a computer to throw one, you will loose one month of payment.
---@class RAM_T1_C:FINComputerMemory
local RAM_T1_C

--- 
---@class FINComputerMemory:FINComputerModule
local FINComputerMemory

--- The FicsIt-Networks Screen Driver allows you to add a screen display to the UI of the computer case you build this module intol.
--- 
--- You can then use the computer API to get a reference to the screen and so you can bind the screen to a GPU.
---@class ScreenDriver_C:FINComputerScreen
local ScreenDriver_C

--- 
---@class FINComputerScreen:FINComputerModule
local FINComputerScreen

--- The FicsIt-Networks Network Cable allows you to connect your network components wich each other.
--- 
--- This is the core process of building up your own computer network.
--- 
--- You can cconnect this cable via two a two step placement procedure to two network connectors, or, if the component/machine/whatever doesn't have a network connector, it will try to create add a network adpater to the machine to still allow you to connect it to your network.
---@class NetworkCable_C:FINNetworkCable
local NetworkCable_C

--- 
---@class FINNetworkCable:FGBuildable
local FINNetworkCable

--- This Pole allows you to connect multiple network components to it via the network cables.
--- 
--- This is a essential building for spreading your computer network into the whole landscape.
--- 
--- It basically allows you to digitalize the world!
---@class NetworkPole_C:FGBuildable
local NetworkPole_C

--- This FicsIt-Networks Wall Plug allows you to distribute a network circuit more easily near buildings and indoors.
---@class NetworkWallPlug_C:FGBuildable
local NetworkWallPlug_C

--- This FicsIt-Networks Wall Plug allows you to pass a network circuit through a wall, allowing for more ease of use of the network cables.
---@class NetworkWallPlug_Double_C:FGBuildable
local NetworkWallPlug_Double_C

--- This FicsIt-Networks Small Wall Plug allows you to connect the thin network cable only usable with MCH panels and other small components.
--- 
--- You can then connect Normal/Large Network Cables to those Small Network Plugs to be able to connect your MCP Panels and such to a computer.
---@class Item_SmallNetworkWallPlug_C:FGBuildable
local Item_SmallNetworkWallPlug_C

--- The FicsIt-Networks Thin Network Cable allows you to connect your network panels wich each othe more gracefully.
--- 
--- This cable works just like the normal network cable except it can only connect between MCP panels and Small Network Plugs.
--- 
--- You can then connect Normal/Large Network Cables to those Small Network Plugs to be able to connect your MCP Panels with a computer.
---@class ThinNetworkCable_C:FINNetworkCable
local ThinNetworkCable_C

--- Really simple sign
---@class BP_RssSign_C:RSSBuildableSign
local BP_RssSign_C

--- 
---@class RSSBuildableSign:FGBuildable
local RSSBuildableSign
--- 
---@param Use boolean @
function RSSBuildableSign:setUseParalax(Use) end
--- 
---@param Use boolean @
function RSSBuildableSign:setUseMask(Use) end
--- 
---@param Use boolean @
function RSSBuildableSign:setUseBackground(Use) end
--- 
---@param TextSize number @
---@param SignText string @
---@param TextColors string @
---@param Index number @
function RSSBuildableSign:setText(TextSize, SignText, TextColors, Index) end
--- 
---@param Colour string @
function RSSBuildableSign:setSecondaryColourHex(Colour) end
--- 
---@param Colour Color @
function RSSBuildableSign:setSecondaryColour(Colour) end
--- 
---@param Colour string @
function RSSBuildableSign:setMainColourHex(Colour) end
--- 
---@param Colour Color @
function RSSBuildableSign:setMainColour(Colour) end
--- 
---@param URL string @
function RSSBuildableSign:setImageFromUrl(URL) end
--- 
---@param UseScanlines boolean @
function RSSBuildableSign:setHoloUseScanlines(UseScanlines) end
--- 
---@param MaskIntensity number @
function RSSBuildableSign:setHoloMaskIntensity(MaskIntensity) end
--- 
---@param DistortionIntensity number @
function RSSBuildableSign:setHoloDistortionIntensity(DistortionIntensity) end
--- 
---@param EmissiveIntensity number @
function RSSBuildableSign:setEmissiveIntensityText(EmissiveIntensity) end
--- 
---@param EmissiveIntensity number @
function RSSBuildableSign:setEmissiveIntensity(EmissiveIntensity) end
--- 
---@param Colour string @
function RSSBuildableSign:setBackgroundColourHex(Colour) end
--- 
---@param Colour Color @
function RSSBuildableSign:setBackgroundColour(Colour) end
--- 
---@return boolean
function RSSBuildableSign:getUseParallax() end
--- 
---@return boolean
function RSSBuildableSign:getUseMask() end
--- 
---@return boolean
function RSSBuildableSign:getUseCustom() end
--- 
---@return boolean
function RSSBuildableSign:getUseBackground() end
--- 
---@return number[]
function RSSBuildableSign:getTextSizeArray() end
--- 
---@param idx number @
---@return number
function RSSBuildableSign:getTextSize(idx) end
--- 
---@return number
function RSSBuildableSign:getTextEmissiveIntensity() end
--- 
---@return string[]
function RSSBuildableSign:getTextArray() end
--- 
---@param idx number @
---@return string
function RSSBuildableSign:getText(idx) end
--- 
---@return Color
function RSSBuildableSign:getSecondaryColor() end
--- 
---@return Color[]
function RSSBuildableSign:getRssTextColorsArray() end
--- 
---@param idx number @
---@return Color
function RSSBuildableSign:getRssTextColors(idx) end
--- 
---@return Color
function RSSBuildableSign:getMainColor() end
--- 
---@return string
function RSSBuildableSign:getLatestCustom() end
--- 
---@return number
function RSSBuildableSign:getImagePaddingDefaultIcons() end
--- 
---@return number
function RSSBuildableSign:getImagePaddingDefault() end
--- 
---@return boolean
function RSSBuildableSign:getHoloUseScanlines() end
--- 
---@return number
function RSSBuildableSign:getHoloMaskIntensity() end
--- 
---@return number
function RSSBuildableSign:getHoloDistortionIntensity() end
--- 
---@return number
function RSSBuildableSign:getEmissiveIntensity() end
--- 
---@return number
function RSSBuildableSign:getCurrentImagePadding() end
--- 
---@return Color
function RSSBuildableSign:getBackgroundColor() end

--- Really simple sign
---@class BP_RssSignFlat_C:BP_RssSign_C
local BP_RssSignFlat_C

--- Really simple sign
---@class BP_RssSignHolo_C:BP_RssSign_C
local BP_RssSignHolo_C

--- Really simple sign
---@class Build_RSS_1x1_C:BP_RssSignFlat_C
local Build_RSS_1x1_C

--- Really simple sign
---@class Build_RSS_1x1_Ceiling_C:BP_RssSignFlat_C
local Build_RSS_1x1_Ceiling_C

--- Really simple sign
---@class Build_RSS_1x1_Stand_C:BP_RssSignFlat_C
local Build_RSS_1x1_Stand_C

--- Really simple sign
---@class Build_RSS_1x1_Wall_C:BP_RssSignFlat_C
local Build_RSS_1x1_Wall_C

--- Really simple sign
---@class Build_RSS_1x2_C:BP_RssSignFlat_C
local Build_RSS_1x2_C

--- Really simple sign
---@class Build_RSS_1x2_Ceiling_C:BP_RssSignFlat_C
local Build_RSS_1x2_Ceiling_C

--- Really simple sign
---@class Build_RSS_1x2_Stand_C:BP_RssSignFlat_C
local Build_RSS_1x2_Stand_C

--- Really simple sign
---@class Build_RSS_1x2_Wall_C:BP_RssSignFlat_C
local Build_RSS_1x2_Wall_C

--- Really simple sign
---@class Build_RSS_2x1_C:BP_RssSignFlat_C
local Build_RSS_2x1_C

--- Really simple sign
---@class Build_RSS_2x1_Ceiling_C:BP_RssSignFlat_C
local Build_RSS_2x1_Ceiling_C

--- Really simple sign
---@class Build_RSS_2x1_Stand_C:BP_RssSignFlat_C
local Build_RSS_2x1_Stand_C

--- Really simple sign
---@class Build_RSS_2x1_Wall_C:BP_RssSignFlat_C
local Build_RSS_2x1_Wall_C

--- Really simple sign
---@class Build_RSS_7x1_C:BP_RssSignFlat_C
local Build_RSS_7x1_C

--- Really simple sign
---@class Build_RSS_7x1_Ceiling_C:BP_RssSignFlat_C
local Build_RSS_7x1_Ceiling_C

--- Really simple sign
---@class Build_RSS_7x1_Stand_C:BP_RssSignFlat_C
local Build_RSS_7x1_Stand_C

--- Really simple sign
---@class Build_RSS_7x1_Wall_C:BP_RssSignFlat_C
local Build_RSS_7x1_Wall_C

--- Really simple sign
---@class Build_RSS_7x1_Wall_2_C:BP_RssSignFlat_C
local Build_RSS_7x1_Wall_2_C

--- The Real Simple Sign
---@class Build_RSS_Hidden_C:BP_RssSign_C
local Build_RSS_Hidden_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_Ceiling_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Ceiling_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_Stand_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Stand_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_Wall_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Wall_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_Ceiling_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_Ceiling_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_Stand_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_Stand_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_Wall_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_Wall_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_Ceiling_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Ceiling_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_Stand_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Stand_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_Wall_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Wall_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_Ceiling_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Ceiling_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_Stand_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Stand_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_Wall_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Wall_C

--- Really simple sign
---@class Build_RSS_1x1_Conv_C:BP_RssSignFlat_C
local Build_RSS_1x1_Conv_C

--- Really simple sign
---@class Build_RSS_1x1_Conv_1side_C:BP_RssSignFlat_C
local Build_RSS_1x1_Conv_1side_C

--- Really simple sign
---@class Build_RSS_1x2_Conv_C:BP_RssSignFlat_C
local Build_RSS_1x2_Conv_C

--- Really simple sign
---@class Build_RSS_1x2_Conv_1side_C:BP_RssSignFlat_C
local Build_RSS_1x2_Conv_1side_C

--- Really simple sign
---@class Build_RSS_2x1_Conv_C:BP_RssSignFlat_C
local Build_RSS_2x1_Conv_C

--- Really simple sign
---@class Build_RSS_2x1_Conv_1side_C:BP_RssSignFlat_C
local Build_RSS_2x1_Conv_1side_C

--- Really simple sign
---@class Build_RSS_7x1_Conv_C:BP_RssSignFlat_C
local Build_RSS_7x1_Conv_C

--- Really simple sign
---@class Build_RSS_7x1_Conv_1side_C:BP_RssSignFlat_C
local Build_RSS_7x1_Conv_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_Conv_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Conv_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_Conv_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Conv_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_Conv_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_Conv_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_Conv_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_Conv_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_Conv_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Conv_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_Conv_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Conv_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_Conv_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Conv_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_Conv_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Conv_1side_C

--- Really simple sign
--- 
--- Note: vanilla Poles cannot stack on it. need a little workaround.
---@class Build_RSS_1x1_Stackable_C:BP_RssSignFlat_C
local Build_RSS_1x1_Stackable_C

--- Really simple sign
--- 
--- Note: vanilla Poles cannot stack on it. need a little workaround.
---@class Build_RSS_2x1_Stackable_C:BP_RssSignFlat_C
local Build_RSS_2x1_Stackable_C

--- Really simple sign
--- 
--- Note: vanilla Poles cannot stack on it. need a little workaround.
---@class Build_RSS_7x1_Stackable_C:BP_RssSignFlat_C
local Build_RSS_7x1_Stackable_C

--- Really simple sign
--- 
--- Note: vanilla Poles cannot stack on it. need a little workaround.
---@class Build_RSS_Holoscreen_1x1_Stackable_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Stackable_C

--- Really simple sign
--- 
--- Note: vanilla Poles cannot stack on it. need a little workaround.
---@class Build_RSS_Holoscreen_2x1_Stackable_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Stackable_C

--- Really simple sign
--- 
--- Note: vanilla Poles cannot stack on it. need a little workaround.
---@class Build_RSS_Holoscreen_7x1_Stackable_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Stackable_C

--- Really simple sign
---@class Build_RSS_1x1_Pipe_C:BP_RssSignFlat_C
local Build_RSS_1x1_Pipe_C

--- Really simple sign
---@class Build_RSS_1x1_Pipe_1side_C:BP_RssSignFlat_C
local Build_RSS_1x1_Pipe_1side_C

--- Really simple sign
---@class Build_RSS_1x2_Pipe_C:BP_RssSignFlat_C
local Build_RSS_1x2_Pipe_C

--- Really simple sign
---@class Build_RSS_1x2_Pipe_1side_C:BP_RssSignFlat_C
local Build_RSS_1x2_Pipe_1side_C

--- Really simple sign
---@class Build_RSS_2x1_Pipe_C:BP_RssSignFlat_C
local Build_RSS_2x1_Pipe_C

--- Really simple sign
---@class Build_RSS_2x1_Pipe_1side_C:BP_RssSignFlat_C
local Build_RSS_2x1_Pipe_1side_C

--- Really simple sign
---@class Build_RSS_7x1_Pipe_C:BP_RssSignFlat_C
local Build_RSS_7x1_Pipe_C

--- Really simple sign
---@class Build_RSS_7x1_Pipe_1side_C:BP_RssSignFlat_C
local Build_RSS_7x1_Pipe_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_Pipe_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Pipe_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x1_Pipe_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x1_Pipe_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_Pipe_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_Pipe_C

--- Really simple sign
---@class Build_RSS_Holoscreen_1x2_Pipe_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_1x2_Pipe_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_Pipe_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Pipe_C

--- Really simple sign
---@class Build_RSS_Holoscreen_2x1_Pipe_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_2x1_Pipe_1side_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_Pipe_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Pipe_C

--- Really simple sign
---@class Build_RSS_Holoscreen_7x1_Pipe_1side_C:BP_RssSignHolo_C
local Build_RSS_Holoscreen_7x1_Pipe_1side_C

--- Wall Signs can snap here!
---@class Build_SignPole_2_C:RSSBuildableSignPole
local Build_SignPole_2_C

--- 
---@class RSSBuildableSignPole:FGBuildable
local RSSBuildableSignPole

--- Really simple sign
---@class BP_RssSignFlat_Rounded_C:BP_RssSign_Rounded_C
local BP_RssSignFlat_Rounded_C

--- Really simple sign
---@class BP_RssSign_Rounded_C:BP_RssSign_C
local BP_RssSign_Rounded_C

--- Really simple sign
---@class BP_RssSignHolo_Rounded_C:BP_RssSign_Rounded_C
local BP_RssSignHolo_Rounded_C

--- Really simple sign
---@class Build_RSS_Holoscreen_Round_C:BP_RssSignHolo_Rounded_C
local Build_RSS_Holoscreen_Round_C

--- Really simple sign
---@class Build_RSS_Round_C:BP_RssSignFlat_Rounded_C
local Build_RSS_Round_C

--- Complex Wireless Lighting Panel
---@class Build_SmartWirelessLightingControlPanel_C:SmartLightsControlPanel
local Build_SmartWirelessLightingControlPanel_C

--- 
---@class SmartLightsControlPanel:LightsControlPanel
local SmartLightsControlPanel

--- 
---@class Build_SmartWirelessLightWire_C:Build_SmartWirelessWireBase
local Build_SmartWirelessLightWire_C

--- 
---@class Build_SmartWirelessWireBase:FGBuildableWire
local Build_SmartWirelessWireBase

--- 
---@class FGBuildableCheatFluidSink:Factory
local FGBuildableCheatFluidSink

--- 
---@class FGBuildableCheatFluidSpawner:Factory
local FGBuildableCheatFluidSpawner

--- 
---@class FGBuildableDecor:FGBuildable
local FGBuildableDecor

--- 
---@class FGBuildablePriorityPowerSwitch:CircuitSwitch
local FGBuildablePriorityPowerSwitch

--- 
---@class FGBuildableRailroadBridge:FGBuildable
local FGBuildableRailroadBridge

--- 
---@class FGBuildableRailroadSignal:FGBuildable
local FGBuildableRailroadSignal

--- 
---@class FGBuildableRamp:FGBuildableFoundation
local FGBuildableRamp

--- 
---@class FGBuildableRoad:FGBuildable
local FGBuildableRoad

--- 
---@class FGBuildableSignWall:FGBuildableWall
local FGBuildableSignWall

--- 
---@class FGBuildableSpeedSign:FGBuildable
local FGBuildableSpeedSign

--- 
---@class FGBuildableStandaloneSign:FGBuildable
local FGBuildableStandaloneSign

--- 
---@class FGBuildableWindTurbine:Factory
local FGBuildableWindTurbine

--- 
---@class FGCentralStorageContainer:FGBuildableStorage
local FGCentralStorageContainer

--- A actor component that is a connection point to which a conveyor or pipe can get attached to.
---@class FactoryConnection:ActorComponent
---@field public type number @Returns the type of the connection. 0 = Conveyor, 1 = Pipe
---@field public direction number @The direction in which the items/fluids flow. 0 = Input, 1 = Output, 2 = Any, 3 = Used just as snap point
---@field public isConnected boolean @True if something is connected to this connection.
local FactoryConnection
--- Returns the internal inventory of the connection component.
---@return Inventory
function FactoryConnection:getInventory() end
--- Returns the connected factory connection component.
---@return Inventory
function FactoryConnection:getConnected() end

--- A actor component that can hold multiple item stacks.
---@class Inventory:ActorComponent
---@field public itemCount number @The absolute amount of items in the whole inventory.
---@field public size number @The count of available item stack slots this inventory has.
local Inventory
--- Returns the item stack at the given index.
--- Takes integers as input and returns the corresponding stacks.
function Inventory:getStack() end
--- Sorts the whole inventory. (like the middle mouse click into a inventory)
function Inventory:sort() end
--- Removes all discardable items from the inventory completely. They will be gone! No way to get them back!
function Inventory:flush() end

--- This actor component contains all the infomation about the movement of a railroad vehicle.
---@class RailroadVehicleMovement:ActorComponent
---@field public orientation number @The orientation of the vehicle
---@field public mass number @The current mass of the vehicle.
---@field public tareMass number @The tare mass of the vehicle.
---@field public payloadMass number @The mass of the payload of the vehicle.
---@field public speed number @The current forward speed of the vehicle.
---@field public relativeSpeed number @The current relative forward speed to the ground.
---@field public maxSpeed number @The maximum forward speed the vehicle can reach.
---@field public gravitationalForce number @The current gravitational force acting on the vehicle.
---@field public tractiveForce number @The current tractive force acting on the vehicle.
---@field public resistiveForce number @The resistive force currently acting on the vehicle.
---@field public gradientForce number @The gradient force currently acting on the vehicle.
---@field public brakingForce number @The braking force currently acting on the vehicle.
---@field public airBrakingForce number @The air braking force currently acting on the vehicle.
---@field public dynamicBrakingForce number @The dynamic braking force currently acting on the vehicle.
---@field public maxTractiveEffort number @The maximum tractive effort of this vehicle.
---@field public maxDynamicBrakingEffort number @The maximum dynamic braking effort of this vehicle.
---@field public maxAirBrakingEffort number @The maximum air braking effort of this vehcile.
---@field public trackGrade number @The current track grade of this vehicle.
---@field public trackCurvature number @The current track curvature of this vehicle.
---@field public wheelsetAngle number @The wheelset angle of this vehicle.
---@field public rollingResistance number @The current rolling resistance of this vehicle.
---@field public curvatureResistance number @The current curvature resistance of this vehicle.
---@field public airResistance number @The current air resistance of this vehicle.
---@field public gradientResistance number @The current gardient resistance of this vehicle.
---@field public wheelRotation number @The current wheel rotation of this vehicle.
---@field public numWheelsets number @The number of wheelsets this vehicle has.
---@field public isMoving boolean @True if this vehicle is currently moving.
local RailroadVehicleMovement
--- Returns the vehicle this movement component holds the movement information of.
---@return RailroadVehicle
function RailroadVehicleMovement:getVehicle() end
--- Returns the current rotation of the given wheelset.
---@param wheelset number @The index of the wheelset you want to get the rotation of.
---@return number,number,number
function RailroadVehicleMovement:getWheelsetRotation(wheelset) end
--- Returns the offset of the wheelset with the given index from the start of the vehicle.
---@param wheelset number @The index of the wheelset you want to get the offset of.
---@return number
function RailroadVehicleMovement:getWheelsetOffset(wheelset) end
--- Returns the normal vector and the extention of the coupler with the given index.
---@param coupler number @The index of which you want to get the normal and extention of.
---@return number,number,number,number
function RailroadVehicleMovement:getCouplerRotationAndExtention(coupler) end

--- A actor component that is a connection point to which a conveyor or pipe can get attached to.
---@class PipeConnection:ActorComponent
---@field public isConnected boolean @True if something is connected to this connection.
---@field public fluidBoxContent number @Returns the amount of fluid this fluid container contains
---@field public fluidBoxHeight number @Returns the height of this fluid container
---@field public fluidBoxLaminarHeight number @Returns the laminar height of this fluid container
---@field public fluidBoxFlowThrough number @Returns the amount of fluid flowing through this fluid container
---@field public fluidBoxFlowFill number @Returns the fill rate of this fluid container
---@field public fluidBoxFlowDrain number @Returns the drain rate of this fluid container
---@field public fluidBoxFlowLimit number @Returns the the maximum flow limit of this fluid container
---@field public networkID number @Returns the network ID of the pipe network this connection is associated with
local PipeConnection
--- ?
---@return ItemType
function PipeConnection:getFluidDescriptor() end
--- Flush the associated pipe network
function PipeConnection:flushPipeNetwork() end

--- A Object that represents a whole power circuit.
---@class PowerCircuit:Object
---@field public production number @The amount of power produced by the whole circuit in the last tick.
---@field public consumption number @The power consumption of the whole circuit in thge last tick.
---@field public capacity number @The power capacity of the whole network in the last tick. (The max amount of power available in the last tick)
---@field public batteryInput number @The power that gone into batteries in the last tick.
---@field public maxPowerConsumption number @The maximum consumption of power in the last tick.
---@field public isFuesed boolean @True if the fuse in the network triggered.
---@field public hasBatteries boolean @True if the power circuit has batteries connected to it.
---@field public batteryCapacity number @The energy capacity all batteries of the network combined provide.
---@field public batteryStore number @The amount of energy currently stored in all battereies of the network combined.
---@field public batteryStorePercent number @The fill status in percent of all battereies of the network combined.
---@field public batteryTimeUntilFull number @The time in seconds until every battery in the network is filled.
---@field public batteryTimeUntilEmpty number @The time in seconds until every battery in the network is empty.
---@field public batteryIn number @The amount of energy that currently gets stored in every battery of the whole network.
---@field public batteryOut number @The amount of energy that currently discharges from every battery in the whole network.
local PowerCircuit

--- A actor component that allows for a connection point to the power network. Basically a point were a power cable can get attached to.
---@class PowerConnection:ActorComponent
---@field public connections number @The amount of connections this power connection has.
---@field public maxConnections number @The maximum amount of connections this power connection can handle.
local PowerConnection
--- Returns the power info component of this power connection.
---@return PowerInfo
function PowerConnection:getPower() end
--- Returns the power circuit to which this connection component is attached to.
---@return PowerCircuit
function PowerConnection:getCircuit() end

--- A actor component that provides information and mainly statistics about the power connection it is attached to.
---@class PowerInfo:ActorComponent
---@field public dynProduction number @The production cpacity this connection provided last tick.
---@field public baseProduction number @The base production capactiy this connection always provides.
---@field public maxDynProduction number @The maximum production capactiy this connection could have provided to the circuit in the last tick.
---@field public targetConsumption number @The amount of energy the connection wanted to consume from the circuit in the last tick.
---@field public consumption number @The amount of energy the connection actually consumed in the last tick.
---@field public hasPower boolean @True if the connection has satisfied power values and counts as beeing powered. (True if it has power)
local PowerInfo
--- Returns the power circuit this info component is part of.
---@return PowerCircuit
function PowerInfo:getCircuit() end

--- Contains the time table information of train.
---@class TimeTable:Actor
---@field public numStops number @The current number of stops in the time table.
local TimeTable
--- Adds a stop to the time table.
---@param index number @The index at which the stop should get added.
---@param station RailroadStation @The railroad station at which the stop should happen.
---@param duration number @The duration how long the train should stop at the station.
---@return boolean
function TimeTable:addStop(index, station, duration) end
--- Removes the stop with the given index from the time table.
---@param index number @The index at which the stop should get added.
function TimeTable:removeStop(index) end
--- Returns a list of all the stops this time table has
---@return TimeTableStop[]
function TimeTable:getStops() end
--- Allows to empty and fill the stops of this time table with the given list of new stops.
---@return boolean
function TimeTable:setStops() end
--- Allows to check if the given stop index is valid.
---@param index number @The stop index you want to check its validity.
---@return boolean
function TimeTable:isValidStop(index) end
--- Returns the stop at the given index.
---@param index number @The index of the stop you want to get.
---@return TimeTableStop
function TimeTable:getStop(index) end
--- Sets the stop, to which the train trys to drive to right now.
---@param index number @The index of the stop the train should drive to right now.
function TimeTable:setCurrentStop(index) end
--- Sets the current stop to the next stop in the time table.
function TimeTable:incrementCurrentStop() end
--- Returns the index of the stop the train drives to right now.
---@return number
function TimeTable:getCurrentStop() end

--- This is a actor component for railroad tracks that allows to connecto to other track connections and so to connection multiple tracks with each eather so you can build a train network.
---@class RailroadTrackConnection:ActorComponent
---@field public connectorLocation Vector @The world location of the the connection.
---@field public connectorNormal Vector @The normal vecotr of the connector.
---@field public isConnected boolean @True if the connection has any connection to other connections.
---@field public isFacingSwitch boolean @True if this connection is pointing to the merge/spread point of the switch.
---@field public isTrailingSwitch boolean @True if this connection is pointing away from the merge/spread point of a switch.
---@field public numSwitchPositions number @Returns the number of different switch poisitions this switch can have.
local RailroadTrackConnection
--- Returns the connected connection with the given index.
---@param index number @The index of the connected connection you want to get.
---@return RailroadTrackConnection
function RailroadTrackConnection:getConnection(index) end
--- Returns a list of all connected connections.
---@return RailroadTrackConnection[]
function RailroadTrackConnection:getConnections() end
--- Returns the track pos at which this connection is.
---@return RailroadTrack,number,number
function RailroadTrackConnection:getTrackPos() end
--- Returns the track of which this connection is part of.
---@return RailroadTrack
function RailroadTrackConnection:getTrack() end
--- Returns the switch control of this connection.
---@return RailroadSwitchControl
function RailroadTrackConnection:getSwitchControl() end
--- Returns the station of which this connection is part of.
---@return RailroadStation
function RailroadTrackConnection:getStation() end
--- Returns the signal of which this connection is part of.
---@return FGBuildableRailroadSignal
function RailroadTrackConnection:getSignal() end
--- Returns the opposite connection of the track this connection is part of.
---@return RailroadTrackConnection
function RailroadTrackConnection:getOpposite() end
--- Returns the next connection in the direction of the track. (used the correct path switched point to)
---@return RailroadTrackConnection
function RailroadTrackConnection:getNext() end
--- Sets the position (connection index) to which the track switch points to.
---@param index number @The connection index to which the switch should point to.
function RailroadTrackConnection:setSwitchPosition(index) end
--- Returns the current switch position.
---@return number
function RailroadTrackConnection:getSwitchPosition() end

--- This class holds information and references about a trains (a collection of multiple railroad vehicles) and its timetable f.e.
---@class Train:Actor
---@field public isPlayerDriven boolean @True if the train is currently player driven.
---@field public isSelfDriving boolean @True if the train is currently self driving.
---@field public selfDrivingError number @The last self driving error. 0 = No Error 1 = No Power 2 = No Time Table 3 = Invalid Next Stop 4 = Invalid Locomotive Placement 5 = No Path
---@field public hasTimeTable boolean @True if the train has currently a time table.
---@field public dockState number @The current docking state of the train.
---@field public isDocked boolean @True if the train is currently docked.
local Train
--- Returns the name of this train.
---@return string
function Train:getName() end
--- Allows to set the name of this train.
---@param name string @The new name of this trian.
function Train:setName(name) end
--- Returns the track graph of which this train is part of.
---@return TrackGraph
function Train:getTrackGraph() end
--- Allows to set if the train should be self driving or not.
---@param selfDriving boolean @True if the train should be self driving.
function Train:setSelfDriving(selfDriving) end
--- Returns the master locomotive that is part of this train.
---@return RailroadVehicle
function Train:getMaster() end
--- Returns the timetable of this train.
---@return TimeTable
function Train:getTimeTable() end
--- Creates and returns a new timetable for this train.
---@return TimeTable
function Train:newTimeTable() end
--- Returns the first railroad vehicle that is part of this train.
---@return RailroadVehicle
function Train:getFirst() end
--- Returns the last railroad vehicle that is part of this train.
---@return RailroadVehicle
function Train:getLast() end
--- Trys to dock the train to the station it is currently at.
function Train:dock() end
--- Returns a list of all the vehicles this train has.
---@return RailroadVehicle[]
function Train:getVehicles() end

--- 
---@class FINAdvancedNetworkConnectionComponent:ActorComponent
local FINAdvancedNetworkConnectionComponent

--- The base class for all things of the reflection system.
---@class ReflectionBase:Object
---@field public name string @The internal name.
---@field public displayName string @The display name used in UI which might be localized.
---@field public description string @The description of this base.
local ReflectionBase

--- A Reflection object that holds information about properties and parameters.
---@class Property:ReflectionBase
---@field public dataType number @The data type of this property. 0: nil, 1: bool, 2: int, 3: float, 4: str, 5: object, 6: class, 7: trace, 8: struct, 9: array, 10: anything
---@field public flags number @The property bit flag register defining some behaviour of it.  Bits and their meaing (least significant bit first): Is this property a member attribute. Is this property read only. Is this property a parameter. Is this property a output paramter. Is this property a return value. Can this property get accessed in syncrounus runtime. Can this property can get accessed in parallel runtime. Can this property get accessed in asynchronus runtime. This property is a class attribute.
local Property

--- A reflection object representing a array property.
---@class ArrayProperty:Property
local ArrayProperty
--- Returns the inner type of this array.
---@return Property
function ArrayProperty:getInner() end

--- Reflection Object that holds information about structures.
---@class Struct:ReflectionBase
local Struct
--- Returns the parent type of this type.
---@return Class
function Struct:getParent() end
--- Returns all the properties of this type.
---@return Property[]
function Struct:getProperties() end
--- Returns all the properties of this and parent types.
---@return Property[]
function Struct:getAllProperties() end
--- Returns all the functions of this type.
---@return Function[]
function Struct:getFunctions() end
--- Returns all the functions of this and parent types.
---@return Property[]
function Struct:getAllFunctions() end
--- Allows to check if this struct is a child struct of the given struct or the given struct it self.
---@param parent Struct @The parent struct you want to check if this struct is a child of.
---@return boolean
function Struct:isChildOf(parent) end

--- Object that contains all information about a type.
---@class Class:Struct
local Class
--- Returns all the signals of this type.
---@return Signal[]
function Class:getSignals() end
--- Returns all the signals of this and its parent types.
---@return Signal[]
function Class:getAllSignals() end

--- A reflection object representing a class property.
---@class ClassProperty:Property
local ClassProperty
--- Returns the subclass type of this class. Meaning, the stored classes need to be of this type.
---@return Class
function ClassProperty:getSubclass() end

--- A reflection object representing a function.
---@class Function:ReflectionBase
---@field public flags number @The function bit flag register defining some behaviour of it.  Bits and their meaing (least significant bit first): Is this function has a variable amount of input parameters. Can this function get called in syncrounus runtime. Can this function can get called in parallel runtime. Can this function get called in asynchronus runtime. Is this function a member function. The function is a class function. The function is a static function. The function has a variable amount of return values.
local Function
--- Returns all the parameters of this function.
---@return Property[]
function Function:getParameters() end

--- 
---@class FINMCPAdvConnector:FINAdvancedNetworkConnectionComponent
local FINMCPAdvConnector

--- A reflection object representing a object property.
---@class ObjectProperty:Property
local ObjectProperty
--- Returns the subclass type of this object. Meaning, the stored objects need to be of this type.
---@return Class
function ObjectProperty:getSubclass() end

--- A reflection object representing a signal.
---@class Signal:ReflectionBase
---@field public isVarArgs boolean @True if this signal has a variable amount of arguments.
local Signal
--- Returns all the parameters of this signal.
---@return Property[]
function Signal:getParameters() end

--- A reflection object representing a struct property.
---@class StructProperty:Property
local StructProperty
--- Returns the subclass type of this struct. Meaning, the stored structs need to be of this type.
---@return Struct
function StructProperty:getSubclass() end

--- A reflection object representing a trace property.
---@class TraceProperty:Property
local TraceProperty
--- Returns the subclass type of this trace. Meaning, the stored traces need to be of this type.
---@return Class
function TraceProperty:getSubclass() end

--- Contains three cordinates (X, Y, Z) to describe a position or movement vector in 3D Space
---@class Vector
---@field public x number @The X coordinate component
---@field public y number @The Y coordinate component
---@field public z number @The Z coordinate component
local Vector

--- Contains rotation information about a object in 3D spaces using 3 rotation axis in a gimble.
---@class Rotator
---@field public pitch number @The pitch component
---@field public yaw number @The yaw component
---@field public roll number @The roll component
local Rotator

--- A structure that holds a rgba color value
---@class Color
---@field public r number @The red portion of the color.
---@field public g number @The green portion of the color.
---@field public b number @The blue portion of the color.
---@field public a number @The alpha (opacity) portion of the color.
local Color

--- A structure that holds item information and item amount to represent an item stack.
---@class ItemStack
---@field public count number @The count of items.
---@field public item Item @The item information of this stack.
local ItemStack

--- A structure that holds item information.
---@class Item
---@field public type ItemType-Class @The type of the item.
local Item

--- A struct that holds a pair of amount and item type.
---@class ItemAmount
---@field public amount number @The amount of items.
---@field public type ItemType-Class @The type of the items.
local ItemAmount

--- A structure that can hold a buffer of characters and colors that can be displayed with a gpu
---@class GPUT1Buffer
local GPUT1Buffer
--- Allows to get the dimensions of the buffer.
---@return number,number
function GPUT1Buffer:getSize() end
--- Allows to set the dimensions of the buffer.
---@param width number @The width this buffer should now have
---@param height number @The height this buffer now have
function GPUT1Buffer:setSize(width, height) end
--- Allows to get a single pixel from the buffer at the given position
---@param x number @The x position of the character you want to get
---@param y number @The y position of the character you want to get
---@return string,Color,Color
function GPUT1Buffer:get(x, y) end
--- Allows to set a single pixel of the buffer at the given position
---@param x number @The x position of the character you want to set
---@param y number @The y position of the character you want to set
---@param c string @The character the pixel should have
---@param foreground Color @The foreground color the pixel at the given position should have
---@param background Color @The background color the pixel at the given position should have
---@return boolean
function GPUT1Buffer:set(x, y, c, foreground, background) end
--- Copies the given buffer at the given offset of the upper left corner into this buffer.
---@param x number @The x offset of the upper left corner of the buffer relative to this buffer
---@param y number @The y offset of the upper left corener of the buffer relative to this buffer
---@param buffer GPUT1Buffer @The buffer from wich you want to copy from
---@param textBlendMode number @The blend mode that is used for the text. 0 = Overwrite this with the content of the given buffer 1 = Overwrite with only characters that are not ' ' 2 = Overwrite only were this characters are ' ' 3 = Keep this buffer
---@param foregroundBlendMode number @The blend mode that is used for the foreground color. 0 = Overwrite with the given color 1 = Normal alpha composition 2 = Multiply 3 = Divide 4 = Addition 5 = Subtraction 6 = Difference 7 = Darken Only 8 = Lighten Only 9 = None
---@param backgroundBlendMode number @The blend mode that is used for the background color. 0 = Overwrite with the given color 1 = Normal alpha composition 2 = Multiply 3 = Divide 4 = Addition 5 = Subtraction 6 = Difference 7 = Darken Only 8 = Lighten Only 9 = None
function GPUT1Buffer:copy(x, y, buffer, textBlendMode, foregroundBlendMode, backgroundBlendMode) end
--- Allows to write the given text onto the buffer and with the given offset.
---@param x number @The X Position at which the text should begin to get written.
---@param y number @The Y Position at which the text should begin to get written.
---@param text string @The text that should get written.
---@param foreground Color @The foreground color which will be used to write the text.
---@param background Color @The background color which will be used to write the text.
function GPUT1Buffer:setText(x, y, text, foreground, background) end
--- Draws the given character at all given positions in the given rectangle on-to the hidden screen buffer.
---@param x number @The x coordinate at which the rectangle should get drawn. (upper-left corner)
---@param y number @The y coordinate at which the rectangle should get drawn. (upper-left corner)
---@param width number @The width of the rectangle.
---@param height number @The height of the rectangle.
---@param character string @A string with a single character that will be used for each pixel in the range you want to fill.
---@param foreground Color @The foreground color which will be used to fill the rectangle.
---@param background Color @The background color which will be used to fill the rectangle.
function GPUT1Buffer:fill(x, y, width, height, character, foreground, background) end
--- Allows to set the internal data of the buffer more directly.
---@param characters string @The characters you want to draw with a length of exactly width*height.
---@param foreground number[] @The values of the foreground color slots for each character were a group of four values give one color. so the length has to be exactly width*height*4.
---@param background number[] @The values of the background color slots for each character were a group of four values give one color. so the length has to be exactly width*height*4.
---@return boolean
function GPUT1Buffer:setRaw(characters, foreground, background) end
--- Clones this buffer into a new struct
---@return GPUT1Buffer
function GPUT1Buffer:clone() end

--- A Future struct MAY BE HANDLED BY CPU IMPLEMENTATION differently, generaly, this is used to make resources available on a later point in time. Like if data won't be avaialble right away and you have to wait for it to process first. Like when you do a HTTP Request, then it takes some time to get the data from the web server. And since we don't want to halt the game and wait for the data, you can use a future to check if the data is available, or let just the Lua Code wait, till the data becomes available.
---@class Future
local Future

--- Target Point in the waypoint list of a wheeled vehicle.
---@class TargetPoint
---@field public pos Vector @The position of the target point in the world.
---@field public rot Rotator @The rotation of the target point in the world.
---@field public speed number @The speed at which the vehicle should pass the target point.
---@field public wait number @The amount of time which needs to pass till the vehicle will continue to the next target point.
local TargetPoint

--- Information about a train stop in a time table.
---@class TimeTableStop
---@field public station RailroadStation @The station at which the train should stop
---@field public duration number @The time interval the train will wait at the station
local TimeTableStop

--- Struct that holds a cache of a whole train/rail network.
---@class TrackGraph
local TrackGraph
--- Returns a list of all trains in the network.
---@return Train[]
function TrackGraph:getTrains() end
--- Returns a list of all trainstations in the network.
---@return RailroadStation[]
function TrackGraph:getStations() end

