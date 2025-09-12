---@diagnostic disable: undefined-global, duplicate-set-field, lowercase-global

local assert = assert
local type = type


config = {}

-- #region config

--Save an integer value to config for your script
--- @param key string
--- @param value integer
config.saveInteger = function(key, value)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = config.saveInteger(key, value)
end

--Load an integer value from the config for your script
--- @param key string
--- @param defaultValue integer
--- @return integer
config.loadInteger = function(key, defaultValue)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(defaultValue) == 'number', 'Argument defaultValue must be of type number.')

    local call = config.loadInteger(key, defaultValue)
    return call
end

--Save a float value to config for your script
--- @param key string
--- @param value number
config.saveFloat = function(key, value)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = config.saveFloat(key, value)
end

--Load a float value from the config for your script
--- @param key string
--- @param defaultValue number
--- @return number
config.loadFloat = function(key, defaultValue)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(defaultValue) == 'number', 'Argument defaultValue must be of type number.')

    local call = config.loadFloat(key, defaultValue)
    return call
end

--Save a boolean value to config for your script
--- @param key string
--- @param value boolean
config.saveBoolean = function(key, value)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(value) == 'boolean', 'Argument value must be of type boolean.')

    local call = config.saveBoolean(key, value)
end

--Load a boolean value from the config for your script
--- @param key string
--- @param defaultValue boolean
--- @return boolean
config.loadBoolean = function(key, defaultValue)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(defaultValue) == 'boolean', 'Argument defaultValue must be of type boolean.')

    local call = config.loadBoolean(key, defaultValue)
    return call
end

--Save a string value to config for your script
--- @param key string
--- @param value string
config.saveString = function(key, value)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(value) == 'string', 'Argument value must be of type string.')

    local call = config.saveString(key, value)
end

--Load a string value from the config for your script
--- @param key string
--- @param defaultValue string
--- @return string
config.loadString = function(key, defaultValue)
    assert(type(key) == 'string', 'Argument key must be of type string.')
    assert(type(defaultValue) == 'string', 'Argument defaultValue must be of type string.')

    local call = config.loadString(key, defaultValue)
    return call
end

-- #endregion

keyboard = {}

-- #region keyboard

-- Prompt the player for keyboard input
--- @param defaultValue string
--- @param callback function
--- @return nil
keyboard.getInput = function(defaultValue, callback)
    assert(type("Default Value") == 'string', 'Argument "Default Value" must be of type string.')
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = keyboard.getInput("Default Value", callback)
end

-- #endregion


feautures  = {}

-- #region features

--Enable the World -> Free Camera feature directly from your script
features.freeCamEnable = function()
    local call = features.freeCamEnable()
end

--Disable the World -> Free Camera feature directly from your script
features.freeCamDisable = function()
    local call = features.freeCamDisable()
end

--If the World -> Free Camera feature is enabled, this will automatically set the camera's coordinates directly from your script
--- @param x number
--- @param y number
--- @param z number
features.freeCamSetCoords = function(x, y, z)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')

    local call = features.freeCamSetCoords(x, y, z)
end

--Enable the Weapons -> ICBM feature directly from your script
features.icbmEnable = function()
    local call = features.icbmEnable()
end

--Disable the Weapons -> ICBM feature directly from your script
features.icbmDisable = function()
    local call = features.icbmDisable()
end

--Fire any active ICBM at the specified player index
--- @param playerIndex integer
features.icbmFireAtTarget = function(playerIndex)
    assert(type(playerIndex) == 'number', 'Argument playerIndex must be of type number.')
    assert(playerIndex >= 0, 'Argument playerIndex must be greater than or equal to 0.')
    assert(playerIndex <= 31, 'Argument playerIndex must be less than or equal to 31.')

    local call = features.icbmFireAtTarget(playerIndex)
end

--Fire any active ICBM at your waypoint if one is set
features.icbmFireAtWaypoint = function()
    local call = features.icbmFireAtWaypoint()
end

--Abort any active ICBM that is on route to be delivered
features.icbmAbort = function()
    local call = features.icbmAbort()
end

--Retrieve any active ICBM's base object handle
--- @return integer
features.icbmGetBaseObject = function()
    local call = features.icbmGetBaseObject()
    return call
end

--Enable the Player -> Off The Radar feature directly from your script
features.offTheRadarEnable = function()
    local call = features.offTheRadarEnable()
end

--Disable the Player -> Off The Radar feature directly from your script
features.offTheRadarDisable = function()
    local call = features.offTheRadarDisable()
end

--Is Off The Radar Enabled
---@return boolean
features.isOffTheRadarEnabled = function()
    local call = features.isOffTheRadarEnabled()
    return call
end

--Enable the Player -> Character Scale feature directly from your script
feautures.playerScaleEnable = function()
    local call = features.playerScaleEnable()
end

--Disable the Player -> Character Scale feature directly from your script
feautures.playerScaleDisable = function()
    local call = features.playerScaleDisable()
end

--Set the Player -> Character Scale feature directly from your script
--- @param scale number
features.setPlayerScale = function(scale)
    assert(type(scale) == 'number', 'Argument scale must be of type number.')

    local call = features.setPlayerScale(scale)
end

--Determin if the Player -> Character Scale is enabled
---@return boolean
features.isPlayerScaleEnabled = function()
    local call = features.isPlayerScaleEnabled()
    return call
end

--Enable the Player -> No Clip feature directly from your script
features.noClipEnable = function()
    local call = features.noClipEnable()
end

--Disable the Player -> No Clip feature directly from your script
features.noClipDisable = function()
    local call = features.noClipDisable()
end

--Determine if the Player -> No Clip feature is enabled
---@return boolean
features.isNoClipEnabled = function()
    local call = features.isNoClipEnabled()
    return call
end

--Enable the Player -> No Ragdoll feature directly from your script
features.noRagdollEnable = function()
    local call = features.noRagdollEnable()
end

--Disable the Player -> No Ragdoll feature directly from your script
features.noRagdollDisable = function()
    local call = features.noRagdollDisable()
end

--Determine if the Player -> No Ragdoll feature is enabled
---@return boolean
features.isNoRagdollEnabled = function()
    local call = features.isNoRagdollEnabled()
    return call
end

--Enable the Player -> Invincibility feature directly from your script
features.invincibilityEnable = function()
    local call = features.invincibilityEnable()
end

--Disable the Player -> Invincibility feature directly from your script
features.invincibilityDisable = function()
    local call = features.invincibilityDisable()
end

--Determine if the Player -> Invincibility feature is enabled
---@return boolean
features.isInvincibilityEnabled = function()
    local call = features.isInvincibilityEnabled()
    return call
end

-- #endregion


logger = {}

-- #region logger

--Log to console and log file, using custom formatting
--
--Text Formatting
--Custom Color Hash: <#FF0000>Text (red text)
--Preset Color Tag: <red>Text (red text) - available: red, green, blue, darkred, darkgreen, darkblue, white, cyan, magenta, gray, darkgray
--Custom Font Styles: <b>Bold Text</b> No longer bold - available: b (bold), i (italic), u (underline)
--- @param text string
logger.logCustom = function(text)
    assert(type(text) == 'string', 'Argument text must be of type string.')

    local call = logger.logCustom(text)
end

--Log to console and log file, using the red highlighting colour
--- @param text string
logger.logError = function(text)
    assert(type(text) == 'string', 'Argument text must be of type string.')

    local call = logger.logError(text)
end

--Log to console and log file, using the info neutral highlighting colour
--- @param text string
logger.logInfo = function(text)
    assert(type(text) == 'string', 'Argument text must be of type string.')

    return logger.logInfo(text)
end

--Log to console and log file, using the green highlighting colour
--- @param text string
logger.logSuccess = function(text)
    assert(type(text) == 'string', 'Argument text must be of type string.')

    local call = logger.logSuccess(text)
end

-- #endregion


math = {}

-- #region math

--Add two sets of coordinates together
--- @param fromX number
--- @param fromY number
--- @param fromZ number
--- @param toX number
--- @param toY number
--- @param toZ number
---@return number, number, number
math.add = function(fromX, fromY, fromZ, toX, toY, toZ)
    assert(type(fromX) == 'number', 'Argument fromX must be of type number.')
    assert(type(fromY) == 'number', 'Argument fromY must be of type number.')
    assert(type(fromZ) == 'number', 'Argument fromZ must be of type number.')
    assert(type(toX) == 'number', 'Argument toX must be of type number.')
    assert(type(toY) == 'number', 'Argument toY must be of type number.')
    assert(type(toZ) == 'number', 'Argument toZ must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.add(fromX, fromY, fromZ, toX, toY, toZ)
    return call.resultX, call.resultY, call.resultZ
end

--Calculate tangent (inverse tangent) of a value
--- @param value number
---@return number
math.atan = function(value)
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = math.atan(value)
    return call
end

--Calculate the cosine of a value
--- @param value number
---@return number
math.cos = function(value)
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = math.cos(value)
    return call
end

--Calculate a cross product of two sets of coordinates
--- @param fromX number
--- @param fromY number
--- @param fromZ number
--- @param toX number
--- @param toY number
--- @param toZ number
---@return number, number, number
math.cross = function(fromX, fromY, fromZ, toX, toY, toZ)
    assert(type(fromX) == 'number', 'Argument fromX must be of type number.')
    assert(type(fromY) == 'number', 'Argument fromY must be of type number.')
    assert(type(fromZ) == 'number', 'Argument fromZ must be of type number.')
    assert(type(toX) == 'number', 'Argument toX must be of type number.')
    assert(type(toY) == 'number', 'Argument toY must be of type number.')
    assert(type(toZ) == 'number', 'Argument toZ must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.cross(fromX, fromY, fromZ, toX, toY, toZ)
    return call.resultX, call.resultY, call.resultZ
end

--Calculate degrees to radians
--- @param value number
---@return number
math.degreesToRadians = function(value)
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = math.degreesToRadians(value)
    return call
end

--Calculate the dot product for a set of coordinates
--- @param fromX number
--- @param fromY number
--- @param fromZ number
--- @param toX number
--- @param toY number
--- @param toZ number
---@return number
math.dot = function(fromX, fromY, fromZ, toX, toY, toZ)
    assert(type(fromX) == 'number', 'Argument fromX must be of type number.')
    assert(type(fromY) == 'number', 'Argument fromY must be of type number.')
    assert(type(fromZ) == 'number', 'Argument fromZ must be of type number.')
    assert(type(toX) == 'number', 'Argument toX must be of type number.')
    assert(type(toY) == 'number', 'Argument toY must be of type number.')
    assert(type(toZ) == 'number', 'Argument toZ must be of type number.')

    local call = math.dot(fromX, fromY, fromZ, toX, toY, toZ)
    return call
end

--Calculate coords a specific distance infront of your current camera angle
--- @param distance number
--- @param offset number
---@return number, number, number
math.getCoordsInFront = function(distance, offset)
    assert(type(distance) == 'number', 'Argument distance must be of type number.')
    assert(type(offset) == 'number', 'Argument offset must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.getCoordsInFront(distance, offset)
    return call.resultX, call.resultY, call.resultZ
end

--Calculate mathematical distance between two sets of coordinates
--- @param fromX number
--- @param fromY number
--- @param fromZ number
--- @param toX number
--- @param toY number
--- @param toZ number
---@return number
math.getDistance = function(fromX, fromY, fromZ, toX, toY, toZ)
    assert(type(fromX) == 'number', 'Argument fromX must be of type number.')
    assert(type(fromY) == 'number', 'Argument fromY must be of type number.')
    assert(type(fromZ) == 'number', 'Argument fromZ must be of type number.')
    assert(type(toX) == 'number', 'Argument toX must be of type number.')
    assert(type(toY) == 'number', 'Argument toY must be of type number.')
    assert(type(toZ) == 'number', 'Argument toZ must be of type number.')

    local call = math.getDistance(fromX, fromY, fromZ, toX, toY, toZ)
    return call
end

--Calculate point on a bezier curve
--- @param startCoordsX number
--- @param startCoordsY number
--- @param startCoordsZ number
--- @param startTangentCoordsX number
--- @param startTangentCoordsY number
--- @param startTangentCoordsZ number
--- @param endTangentCoordsX number
--- @param endTangentCoordsY number
--- @param endTangentCoordsZ number
--- @param endCoordsX number
--- @param endCoordsY number
--- @param endCoordsZ number
--- @param time number
---@return number, number, number
math.getPointOnBezierCurve = function(
    startCoordsX,
    startCoordsY,
    startCoordsZ,
    startTangentCoordsX,
    startTangentCoordsY,
    startTangentCoordsZ,
    endTangentCoordsX,
    endTangentCoordsY,
    endTangentCoordsZ,
    endCoordsX,
    endCoordsY,
    endCoordsZ,
    time
)

    assert(type(startCoordsX) == 'number', 'Argument startCoordsX must be of type number.')
    assert(type(startCoordsY) == 'number', 'Argument startCoordsY must be of type number.')
    assert(type(startCoordsZ) == 'number', 'Argument startCoordsZ must be of type number.')
    assert(type(startTangentCoordsX) == 'number', 'Argument startTangentCoordsX must be of type number.')
    assert(type(startTangentCoordsY) == 'number', 'Argument startTangentCoordsY must be of type number.')
    assert(type(startTangentCoordsZ) == 'number', 'Argument startTangentCoordsZ must be of type number.')
    assert(type(endTangentCoordsX) == 'number', 'Argument endTangentCoordsX must be of type number.')
    assert(type(endTangentCoordsY) == 'number', 'Argument endTangentCoordsY must be of type number.')
    assert(type(endTangentCoordsZ) == 'number', 'Argument endTangentCoordsZ must be of type number.')
    assert(type(endCoordsX) == 'number', 'Argument endCoordsX must be of type number.')
    assert(type(endCoordsY) == 'number', 'Argument endCoordsY must be of type number.')
    assert(type(endCoordsZ) == 'number', 'Argument endCoordsZ must be of type number.')
    assert(type(time) == 'number', 'Argument time must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.getPointOnBezierCurve(
        startCoordsX,
        startCoordsY,
        startCoordsZ,
        startTangentCoordsX,
        startTangentCoordsY,
        startTangentCoordsZ,
        endTangentCoordsX,
        endTangentCoordsY,
        endTangentCoordsZ,
        endCoordsX,
        endCoordsY,
        endCoordsZ,
        time
    )
    return call.resultX, call.resultY, call.resultZ
end

--Get random float in range
--- @param min number
--- @param max number
---@return number
math.getRandomFloat = function(min, max)
    assert(type(min) == 'number', 'Argument min must be of type number.')
    assert(type(max) == 'number', 'Argument max must be of type number.')

    local call = math.getRandomFloat(min, max)
    return call
end

--Get random integer in range
--- @param min integer
--- @param max integer
---@return integer
math.getRandomInt = function(min, max)
    assert(type(min) == 'number', 'Argument min must be of type number.')
    assert(type(max) == 'number', 'Argument max must be of type number.')

    local call = math.getRandomInt(min, max)
    return call
end

--Calculate the magnitude for a set of coordinates
--- @param x number
--- @param y number
--- @param z number
---@return number
math.getMagnitude = function(x, y, z)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')

    local call = math.getMagnitude(x, y, z)
    return call
end

--Utilise the LERP algorithm to move from a starting position to a target position across a time delta
--- @param startX number
--- @param startY number
--- @param startZ number
--- @param targetX number
--- @param targetY number
--- @param targetZ number
--- @param maxDistanceDelta number
---@return number, number, number
math.moveTowards = function(
    startX,
    startY,
    startZ,
    targetX,
    targetY,
    targetZ,
    maxDistanceDelta
)
    assert(type(startX) == 'number', 'Argument startX must be of type number.')
    assert(type(startY) == 'number', 'Argument startY must be of type number.')
    assert(type(startZ) == 'number', 'Argument startZ must be of type number.')
    assert(type(targetX) == 'number', 'Argument targetX must be of type number.')
    assert(type(targetY) == 'number', 'Argument targetY must be of type number.')
    assert(type(targetZ) == 'number', 'Argument targetZ must be of type number.')
    assert(type(maxDistanceDelta) == 'number', 'Argument speed must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.moveTowards(startX, startY, startZ, targetX, targetY, targetZ, speed)
    return call.resultX, call.resultY, call.resultZ
end

--Multiply a set of coordinates by a value
--- @param x number
--- @param y number
--- @param z number
--- @param value number
---@return number, number, number
math.multiply = function(x, y, z, value)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.multiply(x, y, z, value)
    return call.resultX, call.resultY, call.resultZ
end

--Normalise a set of coordinates from another
--- @param x number
--- @param y number
--- @param z number
---@return number, number, number
math.normalise = function(x, y, z)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.normalise(x, y, z)
    return call.resultX, call.resultY, call.resultZ
end

--Get PI value (3.14159265358979323846)
---@return number
math.pi = function()

    local call = math.pi()
    return call
end

--Calculates coordinates a specific distance infront or behind of your current ped position
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param distance number
--- @param forward boolean
---@return number, number, number
math.projectCoords = function(x, y, z, heading, distance, forward)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(heading) == 'number', 'Argument heading must be of type number.')
    assert(type(distance) == 'number', 'Argument distance must be of type number.')
    assert(type(forward) == 'boolean', 'Argument forward must be of type boolean.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.projectCoords(x, y, z, heading, distance, forward)
    return call.resultX, call.resultY, call.resultZ
end

--Calculate radians to degrees
--- @param value number
---@return number
math.radiansToDegrees = function(value)
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = math.radiansToDegrees(value)
    return call
end

--Calculate rotation around a set of coordinates
--- @param x number
--- @param y number
--- @param z number
--- @param delta number
--- @param offset number
---@return number, number, number
math.rotate = function(x, y, z, delta, offset)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(delta) == 'number', 'Argument pitch must be of type number.')
    assert(type(offset) == 'number', 'Argument roll must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.rotate(x, y, z, delta, offset)
    return call.resultX, call.resultY, call.resultZ
end

--Scale a set of coordinates
--- @param x number
--- @param y number
--- @param z number
--- @param value number
---@return number, number, number
math.scale = function(x, y, z, value)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.scale(x, y, z, value)
    return call.resultX, call.resultY, call.resultZ
end

--Calculate sine (opposite hypotenuse) of a value
--- @param value number
---@return number
math.sin = function(value)
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = math.sin(value)
    return call
end

--Subtract a set of coordinates from another
--- @param fromX number
--- @param fromY number
--- @param fromZ number
--- @param toX number
--- @param toY number
--- @param toZ number
---@return number, number, number
math.sub = function(fromX, fromY, fromZ, toX, toY, toZ)
    assert(type(fromX) == 'number', 'Argument fromX must be of type number.')
    assert(type(fromY) == 'number', 'Argument fromY must be of type number.')
    assert(type(fromZ) == 'number', 'Argument fromZ must be of type number.')
    assert(type(toX) == 'number', 'Argument toX must be of type number.')
    assert(type(toY) == 'number', 'Argument toY must be of type number.')
    assert(type(toZ) == 'number', 'Argument toZ must be of type number.')

    local call = {}
    call.resultX, call.resultY, call.resultZ = math.sub(fromX, fromY, fromZ, toX, toY, toZ)
    return call.resultX, call.resultY, call.resultZ
end

--Calculate tangent (opposite adjacent)
--- @param value number
---@return number
math.tan = function(value)
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = math.tan(value)
    return call
end

--Get 2D screen coordinates from 3D world coordinates
--- @param x number
--- @param y number
--- @param z number
---@return boolean, number, number
-- return resultFound, screenX, screenY
math.worldToScreen = function(x, y, z)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')

    local call = {}
    call.resultFound, call.screenX, call.screenY = math.worldToScreen(x, y, z)
    return call.resultFound, call.screenX, call.screenY
end

-- #endregion


menu = {}

-- #region menu

--[[
Add a button option to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator -> LUA Scripts submenu for the script

If the section is 'Player', the callback function parameter is player index, otherwise there is no parameter

Function Parameters
string section
string title
string helpText
function onClick
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param onClick function
menu.addButton = function(section, title, helpText, onClick)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(onClick) == 'function', 'Argument onClick must be of type function.')

    local call = menu.addButton(section, title, helpText, onClick)
end

--[[
Add a divider, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator -> LUA Scripts submenu for the script

Function Parameters
string section
string title
Return
void
]]
--- @param section string
--- @param title string
menu.addDivider = function(section, title)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')

    local call = menu.addDivider(section, title)
end

--[[
Add a float spinner option (Title < value >) to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator -> LUA Scripts submenu for the script

If the section is 'Player', the callback function parameters are spinner value and player index, otherwise just spinner value

Function Parameters
string section
string title
string helpText
float minValue
float maxValue
float incValue
float currentValue
function onChange
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param minValue number
--- @param maxValue number
--- @param incValue number
--- @param currentValue number
--- @param onChange function
menu.addFloatSpinner = function(section, title, helpText, minValue, maxValue, incValue, currentValue, onChange)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(minValue) == 'number', 'Argument minValue must be of type number.')
    assert(type(maxValue) == 'number', 'Argument maxValue must be of type number.')
    assert(type(incValue) == 'number', 'Argument incValue must be of type number.')
    assert(type(currentValue) == 'number', 'Argument currentValue must be of type number.')
    assert(type(onChange) == 'function', 'Argument onChange must be of type function.')

    local call = menu.addFloatSpinner(section, title, helpText, minValue, maxValue, incValue, currentValue, onChange)
end

--[[
Add an integer spinner option (Title < value >) to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator > LUA Development submenu for the script

If the section is 'Player', the callback function parameters are spinner value and player index, otherwise just spinner value

Function Parameters
string section
string title
string helpText
integer minValue
integer maxValue
integer incValue
integer currentValue
function onChange
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param minValue integer
--- @param maxValue integer
--- @param incValue integer
--- @param currentValue integer
--- @param onChange function
menu.addIntSpinner = function(section, title, helpText, minValue, maxValue, incValue, currentValue, onChange)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(minValue) == 'number', 'Argument minValue must be of type number.')
    assert(type(maxValue) == 'number', 'Argument maxValue must be of type number.')
    assert(type(incValue) == 'number', 'Argument incValue must be of type number.')
    assert(type(currentValue) == 'number', 'Argument currentValue must be of type number.')
    assert(type(onChange) == 'function', 'Argument onChange must be of type function.')

    local call = menu.addIntSpinner(section, title, helpText, minValue, maxValue, incValue, currentValue, onChange)
end

--[[
Add a string spinner option (Title < value >) to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator -> LUA Scripts submenu for the script

If the section is 'Player', the callback function parameters are spinner value and player index, otherwise just spinner value

Function Parameters
string section
string title
string helpText
integer currentValueIndex
array of string values
function onChange
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param currentValueIndex integer
--- @param values table
--- @param onChange function
menu.addStringSpinner = function(section, title, helpText, currentValueIndex, --[[table]] values, onChange)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(currentValueIndex) == 'number', 'Argument currentValueIndex must be of type number.')
    assert(type(values) == 'table', 'Argument values must be of type table.')
    assert(type(onChange) == 'function', 'Argument onChange must be of type function.')

    local call = menu.addStringSpinner(section, title, helpText, currentValueIndex, values, onChange)
end

--[[
Add a submenu and receive back a unique sequential ID that can be used with other options such as buttons

Valid Sections: self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator > LUA Development submenu for the script

If the section is 'Player', the callback function parameters are spinner value and player index, otherwise just spinner value

Function Parameters
string section
string title
string helpText
Return
integer
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param parentSubmenuId integer (not required unless you wish to place a submenu within a submenu)
--- @return integer
menu.addSubmenu = function(section, title, helpText, parentSubmenuId)
    -- parentSubmenuId is optional
    parentSubmenuId = parentSubmenuId or nil
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')

    if parentSubmenuId then
        assert(type(parentSubmenuId) == 'number', 'Argument parentSubmenuId must be of type number.')
    end

    local call = nil
    if parentSubmenuId then
        call = menu.addSubmenu(section, title, helpText, parentSubmenuId)
    else
---@diagnostic disable-next-line: missing-parameter
        call = menu.addSubmenu(section, title, helpText)
    end
    return call
end

--[[
Add a toggle option to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator -> LUA Scripts submenu for the script

If the section is 'Player', the callback function parameters are toggle value and player index, otherwise just toggle value

Function Parameters
string section
string title
string helpText
boolean currentValue
function onClick
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param currentValue boolean
--- @param onClick function
menu.addToggleButton = function(section, title, helpText, currentValue, onClick)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(currentValue) == 'boolean', 'Argument currentValue must be of type boolean.')
    assert(type(onClick) == 'function', 'Argument onClick must be of type function.')

    local call = menu.addToggleButton(section, title, helpText, currentValue, onClick)
end

--[[
Add a toggle button along with a float spinner option (Title < value >) to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator -> LUA Scripts submenu for the script

If the section is 'Player', the callback function parameters are spinner value and player index, otherwise just spinner value

Function Parameters
string section
string title
string helpText
boolean currentToggleValue
float minValue
float maxValue
float incValue
float currentValue
function onChange
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param currentToggleValue boolean
--- @param minValue number
--- @param maxValue number
--- @param incValue number
--- @param currentValue number
--- @param onChange function
menu.addToggleButtonFloatSpinner = function(section, title, helpText, currentToggleValue, minValue, maxValue, incValue, currentValue, onChange)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(currentToggleValue) == 'boolean', 'Argument currentToggleValue must be of type boolean.')
    assert(type(minValue) == 'number', 'Argument minValue must be of type number.')
    assert(type(maxValue) == 'number', 'Argument maxValue must be of type number.')
    assert(type(incValue) == 'number', 'Argument incValue must be of type number.')
    assert(type(currentValue) == 'number', 'Argument currentValue must be of type number.')
    assert(type(onChange) == 'function', 'Argument onChange must be of type function.')

    local call = menu.addToggleButtonFloatSpinner(section, title, helpText, currentToggleValue, minValue, maxValue, incValue, currentValue, onChange)
end

--[[
Add a toggle button along with an integer spinner option (Title < value >) to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator > LUA Development submenu for the script

If the section is 'Player', the callback function parameters are spinner value and player index, otherwise just spinner value

Function Parameters
string section
string title
string helpText
boolean currentToggleValue
integer minValue
integer maxValue
integer incValue
integer currentValue
function onChange
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param currentToggleValue boolean
--- @param minValue number
--- @param maxValue number
--- @param incValue number
--- @param currentValue number
--- @param onChange function
menu.addToggleButtonIntSpinner = function(section, title, helpText, currentToggleValue, minValue, maxValue, incValue, currentValue, onChange)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(currentToggleValue) == 'boolean', 'Argument currentToggleValue must be of type boolean.')
    assert(type(minValue) == 'number', 'Argument minValue must be of type number.')
    assert(type(maxValue) == 'number', 'Argument maxValue must be of type number.')
    assert(type(incValue) == 'number', 'Argument incValue must be of type number.')
    assert(type(currentValue) == 'number', 'Argument currentValue must be of type number.')
    assert(type(onChange) == 'function', 'Argument onChange must be of type function.')

    local call = menu.addToggleButtonIntSpinner(section, title, helpText, currentToggleValue, minValue, maxValue, incValue, currentValue, onChange)
end

--[[
Add a toggle button with a string spinner option (Title < value >) to the menu, specifying which submenu.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

If section is 'Self' or empty, the option will go into the Creator -> LUA Scripts submenu for the script

If the section is 'Player', the callback function parameters are spinner value and player index, otherwise just spinner value

Function Parameters
string section
string title
string helpText
boolean currentToggleValue
integer currentValueIndex
array of string values
function onChange
Return
void
]]
--- @param section string
--- @param title string
--- @param helpText string
--- @param currentToggleValue boolean
--- @param currentValueIndex integer
--- @param values table
--- @param onChange function
menu.addToggleButtonStringSpinner = function(section, title, helpText, currentToggleValue, currentValueIndex, --[[table]] values, onChange)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')
    assert(type(currentToggleValue) == 'boolean', 'Argument currentToggleValue must be of type boolean.')
    assert(type(currentValueIndex) == 'number', 'Argument currentValueIndex must be of type number.')
    assert(type(values) == 'table', 'Argument values must be of type table.')
    assert(type(onChange) == 'function', 'Argument onChange must be of type function.')

    local call = menu.addToggleButtonStringSpinner(section, title, helpText, currentToggleValue, currentValueIndex, values, onChange)
end

--[[
Update an existing toggle option's enabled (ticked) value.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

Function Parameters
string section
string title
boolean toggle
Return
void
]]
--- @param section string
--- @param title string
--- @param toggle boolean
menu.setToggleValue = function(section, title, toggle)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(toggle) == 'boolean', 'Argument toggle must be of type boolean.')

    local call = menu.setToggleValue(section, title, toggle)
end

--[[
Set an existing option's help text.

Valid Sections: Submenu ID, self, localplayer, network, teleport, esp, weapons, horse, vehicles, spawner, world, player

Valid Types: Button, Toggle

Function Parameters
string section
string type
string title
string helpText
Return
void
]]
--- @param section string
--- @param optionType string
--- @param title string
menu.setHelpText = function(section, optionType, title, helpText)
    assert(type(section) == 'string', 'Argument section must be of type string.')
    assert(type(optionType) == 'string', 'Argument type must be of type string.')
    assert(type(title) == 'string', 'Argument title must be of type string.')
    assert(type(helpText) == 'string', 'Argument helpText must be of type string.')

    local call = menu.setHelpText(section, optionType, title, helpText)
end

-- #endregion


player = {}

-- #region player

--[[
Iterate through all currently connected players

A player record will be passed back to the callback function for each player in the session. The player record contains the following fields:

id (integer index),
ipAddress (string),
name (string),
ped (integer),
rank (integer),
rockstarId (integer),
x (float coord),
y (float coord),
z (float coord),
isFortitudeUser (boolean),
isPermanentPlayer (boolean),
isSafeListed (boolean),
Function Parameters,
function callback
]]
--- @param callback function
player.forEach = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = player.forEach(callback)
end

--[[
Retrieve a player's current coordinates

Function Parameters
integer playerIdx

Return
float x
float y
float z
]]
--- @param playerIdx integer
--- @return number, number, number
player.getCoords = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = {}
    call.coordX, call.coordY, call.coordZ = player.getCoords(playerIdx)
    return call.coordX, call.coordY, call.coordZ
end

--Get current player count
---@return integer
player.getCount = function()

    local call = player.getCount()
    return call
end

--Retrieve a player's IP address
--- @param playerIdx integer
---@return string
player.getIpAddress = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.getIpAddress(playerIdx)
    return call
end

--Retrieve your current coordinates
---@return number, number, number
player.getLocalPedCoords = function()

    local call = {}
    call.coordX, call.coordY, call.coordZ = player.getLocalPedCoords()
    return call.coordX, call.coordY, call.coordZ
end

--Retrieve your current ped entity handle
---@return integer
player.getLocalPed = function()

    local call = player.getLocalPed()
    return call
end

--Retrieve a player's name
--- @param playerIdx integer
--- @return string
player.getName = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.getName(playerIdx)
    return call
end

--Retrieve a player's ped entity handle
--- @param playerIdx integer
--- @return integer
player.getPed = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.getPed(playerIdx)
    return call
end

--[[
Retrieve a player record for a specific player index

A player record will be returned. The player record contains the following fields:

id (integer index),
ipAddress (string),
name (string),
ped (integer),
rank (integer),
rockstarId (integer),
x (float coord),
y (float coord),
z (float coord),
isFortitudeUser (boolean),
isPermanentPlayer (boolean),
isSafeListed (boolean),
Function Parameters,
integer playerIdx,
Return
player
]]
--- @param playerIdx integer
--- @return table
player.getPlayer = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.getPlayer(playerIdx)
    return call
end

--Retrieve a player's rockstar ID
--- @param playerIdx integer
--- @return string
player.getRockstarId = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.getRockstarId(playerIdx)
    return call
end

--Check if a player is on the menu permanent list
--- @param playerIdx integer
--- @return boolean
player.isPermanentPlayer = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.isPermanentPlayer(playerIdx)
    return call
end

--Check if a player is on the menu safe list
--- @param playerIdx integer
--- @return boolean
player.isSafeListed = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.isSafeListed(playerIdx)
    return call
end

--Check if a player is on Fortitude
--- @param playerIdx integer
--- @return boolean
player.isFortitudeUser = function(playerIdx)
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')
    assert(playerIdx >= 0, 'Argument playerIdx must be greater than or equal to 0.')
    assert(playerIdx < 32, 'Argument playerIdx must be less than 32.')

    local call = player.isFortitudeUser(playerIdx)
    return call
end
--#endregion


pools = {}

-- #region pools

--Retrieve each ped in the entity pool within a specified radius.
--- @param radius number
--- @param callback function
pools.getPedsInRadius = function(radius, callback)
    assert(type(radius) == 'number', 'Argument radius must be of type number.')
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = pools.getPedsInRadius(radius, callback)
end

--Retrieve each vehicle in the entity pool within a specified radius.
--- @param radius number
--- @param callback function
pools.getVehiclesInRadius = function(radius, callback)
    assert(type(radius) == 'number', 'Argument radius must be of type number.')
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = pools.getVehiclesInRadius(radius, callback)
end

--Retrieve each object in the entity pool within a specified radius. Note: Not all objects are always available in the entity pool
--- @param radius number
--- @param callback function
pools.getObjectsInRadius = function(radius, callback)
    assert(type(radius) == 'number', 'Argument radius must be of type number.')
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = pools.getObjectsInRadius(radius, callback)
end

-- #endregion


spawner = {}

-- #region spawner

--This function requests control and deletes the specified object
--- @param object integer
spawner.deleteObject = function(object)
    assert(type(object) == 'number', 'Argument object must be of type number.')

    local call = spawner.deleteObject(object)
end

--This function requests control and deletes the specified ped
--- @param ped integer
spawner.deletePed = function(ped)
    assert(type(ped) == 'number', 'Argument ped must be of type number.')

    local call = spawner.deletePed(ped)
end

--This function requests control and deletes the specified vehicle
--- @param vehicle integer
spawner.deleteVehicle = function(vehicle)
    assert(type(vehicle) == 'number', 'Argument vehicle must be of type number.')

    local call = spawner.deleteVehicle(vehicle)
end

--[[
This function requests the model and spawns an object at the specified coordinates. 
If the coordinates are all 0.0, it will spawn the object infront of you automatically. 
The parameter 'addToSpawnedEntityManager' will add the spawned entity to the 
Spawner -> Spawned Entity Manager for management such as deletion, so you do not have to worry so much about cleanup, 
allowing the user to delete it themselves within the menu itself

Function Parameters
hash model
float spawnCoordX
float spawnCoordY
float spawnCoordZ
boolean addToSpawnedEntityManager
Return
integer objectEntityIndex
]]
--- @param model integer
--- @param spawnCoordX number
--- @param spawnCoordY number
--- @param spawnCoordZ number
--- @param addToSpawnedEntityManager boolean
--- @return integer
spawner.spawnObject = function(model, spawnCoordX, spawnCoordY, spawnCoordZ, addToSpawnedEntityManager)
    assert(type(model) == 'number', 'Argument model must be of type number.')
    assert(type(spawnCoordX) == 'number', 'Argument spawnCoordX must be of type number.')
    assert(type(spawnCoordY) == 'number', 'Argument spawnCoordY must be of type number.')
    assert(type(spawnCoordZ) == 'number', 'Argument spawnCoordZ must be of type number.')
    assert(type(addToSpawnedEntityManager) == 'boolean', 'Argument addToSpawnedEntityManager must be of type boolean.')

    local call = spawner.spawnObject(model, spawnCoordX, spawnCoordY, spawnCoordZ, addToSpawnedEntityManager)
    return call
end

--[[
This function requests the model and spawns a ped at the specified coordinates. 
If the coordinates are all 0.0, it will spawn the ped infront of you automatically. 
The parameter 'addToSpawnedEntityManager' will add the spawned entity to the 
Spawner -> Spawned Entity Manager for management such as deletion, so you do not have to worry so much about cleanup, 
allowing the user to delete it themselves within the menu itself

Function Parameters
hash model
float spawnCoordX
float spawnCoordY
float spawnCoordZ
boolean addToSpawnedEntityManager
Return
integer pedEntityIndex
]]
--- @param model integer
--- @param spawnCoordX number
--- @param spawnCoordY number
--- @param spawnCoordZ number
--- @param addToSpawnedEntityManager boolean
--- @return integer
spawner.spawnPed = function(model, spawnCoordX, spawnCoordY, spawnCoordZ, addToSpawnedEntityManager)
    assert(type(model) == 'number', 'Argument model must be of type number.')
    assert(type(spawnCoordX) == 'number', 'Argument spawnCoordX must be of type number.')
    assert(type(spawnCoordY) == 'number', 'Argument spawnCoordY must be of type number.')
    assert(type(spawnCoordZ) == 'number', 'Argument spawnCoordZ must be of type number.')
    assert(type(addToSpawnedEntityManager) == 'boolean', 'Argument addToSpawnedEntityManager must be of type boolean.')

    local call = spawner.spawnPed(model, spawnCoordX, spawnCoordY, spawnCoordZ, addToSpawnedEntityManager)
    return call
end

--[[
This function requests the model and spawns a vehicle at the specified coordinates. 
If the coordinates are all 0.0, it will spawn the vehicle infront of you automatically. 
The parameter 'addToSpawnedEntityManager' will add the spawned entity to the 
Spawner -> Spawned Entity Manager for management such as deletion, so you do not have to worry so much about cleanup, 
allowing the user to delete it themselves within the menu itself. 
The parameter 'doNotCreateDraftAnimals' specifies whether to include draft horses with a wagon, for example.

Function Parameters
hash model
float spawnCoordX
float spawnCoordY
float spawnCoordZ
boolean doNotCreateDraftAnimals
boolean addToSpawnedEntityManager
Return
integer vehicleEntityIndex
]]
--- @param model integer
--- @param spawnCoordX number
--- @param spawnCoordY number
--- @param spawnCoordZ number
--- @param doNotCreateDraftAnimals boolean
--- @param addToSpawnedEntityManager boolean
--- @return integer
spawner.spawnVehicle = function(model, spawnCoordX, spawnCoordY, spawnCoordZ, doNotCreateDraftAnimals, addToSpawnedEntityManager)
    assert(type(model) == 'number', 'Argument model must be of type number.')
    assert(type(spawnCoordX) == 'number', 'Argument spawnCoordX must be of type number.')
    assert(type(spawnCoordY) == 'number', 'Argument spawnCoordY must be of type number.')
    assert(type(spawnCoordZ) == 'number', 'Argument spawnCoordZ must be of type number.')
    assert(type(doNotCreateDraftAnimals) == 'boolean', 'Argument doNotCreateDraftAnimals must be of type boolean.')
    assert(type(addToSpawnedEntityManager) == 'boolean', 'Argument addToSpawnedEntityManager must be of type boolean.')

    local call = spawner.spawnVehicle(model, spawnCoordX, spawnCoordY, spawnCoordZ, doNotCreateDraftAnimals, addToSpawnedEntityManager)
    return call
end

-- #endregion


sync = {}

-- #region sync

--[[
Limit outgoing sync for a specific entity to specific player(s). This can be called multiple times for the same entity, to enable sync to multiple players if required

Function Parameters
integer entity
integer playerIdx
Return
void
]]
--- @param entity integer
--- @param playerIdx integer
sync.addEntitySyncLimit = function(entity, playerIdx)
    assert(type(entity) == 'number', 'Argument entity must be of type number.')
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')

    local call = sync.addEntitySyncLimit(entity, playerIdx)
end

--[[
Clear any limits in place for any entity

Return
void
]]
sync.clearAllEntitySyncLimiting = function()

    local call = sync.clearAllEntitySyncLimiting()
end

--[[
Delete any existing limits for a specific entity

Function Parameters
integer entity
Return
void
]]
--- @param entity integer
sync.clearEntitySyncLimit = function(entity)
    assert(type(entity) == 'number', 'Argument entity must be of type number.')

    local call = sync.clearEntitySyncLimit(entity)
end

--[[
Delete a specific target player index from an existing limit for a specific entity

Function Parameters
integer entity
integer playerIdx
Return
void
]]
--- @param entity integer
--- @param playerIdx integer
sync.deleteEntitySyncLimitTarget = function(entity, playerIdx)
    assert(type(entity) == 'number', 'Argument entity must be of type number.')
    assert(type(playerIdx) == 'number', 'Argument playerIdx must be of type number.')

    local call = sync.deleteEntitySyncLimitTarget(entity, playerIdx)
end

-- #endregion


system = {}

-- #region system

--[[
Get result from win32 API function GetTickCount64(). This can be used for timing things (in milliseconds)

Return
integer result
]]
---@return integer
system.getTickCount64 = function()

    local call = system.getTickCount64()
    return call
end

--[[
system.registerConstructor
Register a function to be called when the script is loaded and starts

Function Parameters
function callback
Return
void
]]
--- @param callback function
system.registerConstructor = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerConstructor(callback)
end

--[[
system.registerDestructor
Register a function to be called when the script is unloaded

Function Parameters
function callback
Return
void
]]
--- @param callback function
system.registerDestructor = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerDestructor(callback)
end

--[[
system.registerPlayerJoined
Register a function to be called whenever a player joins the session

Function Parameters
function callback
Return
void
]]
--- @param callback function
system.registerPlayerJoined = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerPlayerJoined(callback)
end

--[[
system.registerPlayerLeft
Register a function to be called whenever a player leaves the session

Function Parameters
function callback
Return
void
]]
--- @param callback function
system.registerPlayerLeft = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerPlayerLeft(callback)
end

--[[
    system.registerSuperJumpLandingEvent
Register a function to be called whenever the super jump landing event is fired

Function Parameters
function callback
Return
void
]]
--- @param callback function
--- @return nil
system.registerSuperJumpLandingEvent = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerSuperJumpLandingEvent(callback)
end

--[[
    system.registerTeleportFromEvent
Register a function to be called whenever the teleport from event is fired

Function Parameters
function callback
Return
void
]]
--- @param callback function
--- @return nil
system.registerTeleportFromEvent = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerTeleportFromEvent(callback)
end

--[[
    system.registerTeleportToEvent
Register a function to be called whenever the teleport to event is fired

Function Parameters
function callback
Return
void
]]
--- @param callback function
--- @return nil
system.registerTeleportToEvent = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerTeleportToEvent(callback)
end

--[[
system.registerTick
Register a function to be called 'on tick' for any background execution you need your script to complete ongoing

Function Parameters
function callback
Return
void
]]
--- @param callback function
system.registerTick = function(callback)
    assert(type(callback) == 'function', 'Argument callback must be of type function.')

    local call = system.registerTick(callback)
end

--[[
system.setScriptName
Set a display name for use in menu options where applicable (in place of file name)

Function Parameters
string name
Return
void
]]
--- @param name string
system.setScriptName = function(name)
    assert(type(name) == 'string', 'Argument name must be of type string.')

    local call = system.setScriptName(name)
end

--[[
system.timeGetTime
This function will return the unix timestamp from Windows API

Return
integer timestamp
]]
---@return integer
system.timeGetTime = function()

    local call = system.timeGetTime()
    return call
end

--[[
system.unregisterConstructor
Unregister any previously registered function of this type

Return
void
]]
system.unregisterConstructor = function()

    local call = system.unregisterConstructor()
end

--[[
system.unregisterDestructor
Unregister any previously registered function of this type

Return
void
]]
system.unregisterDestructor = function()

    local call = system.unregisterDestructor()
end

--[[
system.unregisterPlayerJoined
Unregister any previously registered function of this type

Return
void
]]
system.unregisterPlayerJoined = function()

    local call = system.unregisterPlayerJoined()
end

--[[
system.unregisterPlayerLeft
Unregister any previously registered function of this type

Return
void
]]
system.unregisterPlayerLeft = function()

    local call = system.unregisterPlayerLeft()
end

--[[
    system.unregisterSuperJumpLandingEvent
Unregister any previously registered function of this type

Return
void
]]
---@return nil
system.unregisterSuperJumpLandingEvent = function()

    local call = system.unregisterSuperJumpLandingEvent()
end

--[[
    system.unregisterTeleportFromEvent
Unregister any previously registered function of this type

Return
void
]]
---@return nil
system.unregisterTeleportFromEvent = function()
    local call = system.unregisterTeleportFromEvent()
end

--[[
    system.unregisterTeleportToEvent
Unregister any previously registered function of this type

Return
void
]]
---@return nil
system.unregisterTeleportToEvent = function()
    local call = system.unregisterTeleportToEvent()
end

--[[
system.unregisterTick
This function will unregister any registered tick function you have

Return
void
]]
system.unregisterTick = function()

    local call = system.unregisterTick()
end

--[[
system.yield
Yield to allow the main fiber to continue executing and delay execution within the LUA script for the specified milliseconds

Function Parameters
integer milliseconds
Return
void
]]
--- @param milliseconds integer
system.yield = function(milliseconds)
    assert(type(milliseconds) == 'number', 'Argument milliseconds must be of type number.')

    local call = system.yield(milliseconds)
end

-- #endregion


utility = {}

-- #region utility

--[[
utility.autoBlockControlRequests
Toggle silent background auto control request blocking for an entity

Function Parameters
integer entity
boolean enable

Return
void
]]
--- @param entity integer
--- @param enable boolean
utility.autoBlockControlRequests = function(entity, enable)
    assert(type(entity) == 'number', 'Argument entity must be of type number.')
    assert(type(enable) == 'boolean', 'Argument enable must be of type boolean.')

    local call = utility.autoBlockControlRequests(entity, enable)
end

--[[
utility.changePlayerModel
Enable the menu's model change bypass and change your player model to the specified model hash

Function Parameters
hash model

Return
void
]]
--- @param model integer
utility.changePlayerModel = function(model)
    assert(type(model) == 'number', 'Argument model must be of type number.')

    local call = utility.changePlayerModel(model)
end

--[[
utility.findClosestGpsPos
Utility function which invokes native 0x3FDA2B79AEEE351C

Function Parameters
float x
float y
float z

Return
boolean result
float outPositionX
float outPositionY
float outPositionZ
]]
--- @param x number
--- @param y number
--- @param z number
--- @return boolean, number, number, number
utility.findClosestGpsPos = function(x, y, z)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')

    local call = {}
    call.result, call.outPositionX, call.outPositionY, call.outPositionZ = utility.findClosestGpsPos(x, y, z)
    return call.result, call.outPositionX, call.outPositionY, call.outPositionZ
end

--[[
utility.getAnimSceneOrigin
Utility function which invokes native 0xADF1D53F3B1FE0A7

Function Parameters
integer animSceneHandle
integer order

Return
float positionX
float positionY
float positionZ
float rotationX
float rotationY
float rotationZ
]]
--- @param animSceneHandle integer
--- @param order integer
--- @return number, number, number, number, number, number
utility.getAnimSceneOrigin = function(animSceneHandle, order)
    assert(type(animSceneHandle) == 'number', 'Argument animSceneHandle must be of type number.')
    assert(type(order) == 'number', 'Argument order must be of type number.')

    local call = {}
    call.positionX, call.positionY, call.positionZ, call.rotationX, call.rotationY, call.rotationZ = utility.getAnimSceneOrigin(animSceneHandle, order)
    return call.positionX, call.positionY, call.positionZ, call.rotationX, call.rotationY, call.rotationZ
end

--[[
utility.getClosestFirePos
Utility function which invokes native 0xB646FB657F448261

Function Parameters
float x
float y
float z

Return
boolean result
float outPositionX
float outPositionY
float outPositionZ
]]
--- @param x number
--- @param y number
--- @param z number
--- @return boolean, number, number, number
utility.getClosestFirePos = function(x, y, z)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')

    local call = {}
    call.result, call.outPositionX, call.outPositionY, call.outPositionZ = utility.getClosestFirePos(x, y, z)
    return call.result, call.outPositionX, call.outPositionY, call.outPositionZ
end

--[[
utility.getClosestVehicleNode
Utility function which invokes native 0x240A18690AE96513

Function Parameters
float x
float y
float z
integer nodeType
float p5
float p6

Return
boolean result
float outPositionX
float outPositionY
float outPositionZ
]]
--- @param x number
--- @param y number
--- @param z number
--- @param nodeType integer
--- @param p5 number
--- @param p6 number
--- @return boolean, number, number, number
utility.getClosestVehicleNode = function(x, y, z, nodeType, p5, p6)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(nodeType) == 'number', 'Argument nodeType must be of type number.')
    assert(type(p5) == 'number', 'Argument p5 must be of type number.')
    assert(type(p6) == 'number', 'Argument p6 must be of type number.')

    local call = {}
    call.result, call.outPositionX, call.outPositionY, call.outPositionZ = utility.getClosestVehicleNode(x, y, z, nodeType, p5, p6)
    return call.result, call.outPositionX, call.outPositionY, call.outPositionZ
end

--[[
utility.getClosestRoad
Utility function which invokes native 0x132F52BBA570FE92

Function Parameters
float x
float y
float z
float p3
integer p4
float p10

Return
boolean result
float p5X
float p5Y
float p5Z
float p6X
float p6Y
float p6Z
integer p7
integer p8
float p9
]]
--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param p4 number
--- @param p10 number
--- @return boolean, number, number, number, number, number, number, number, number, number
utility.getClosestRoad = function(x, y, z, p3, p4, p10)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(p3) == 'number', 'Argument p3 must be of type number.')
    assert(type(p4) == 'number', 'Argument p4 must be of type number.')
    assert(type(p10) == 'number', 'Argument p10 must be of type number.')

    local call = {}
    call.result, call.p5X, call.p5Y, call.p5Z, call.p6X, call.p6Y, call.p6Z, call.p7, call.p8, call.p9 = utility.getClosestRoad(x, y, z, p3, p4, p10)
    return call.result, call.p5X, call.p5Y, call.p5Z, call.p6X, call.p6Y, call.p6Z, call.p7, call.p8, call.p9
end

--[[
utility.getClosestVehicleNodeWithHeading
Utility function which invokes native 0x23CFFD4CCB243354

Function Parameters
float x
float y
float z
integer nodeType
float p6
float p7

Return
boolean result
float outPositionX
float outPositionY
float outPositionZ
float outHeading
]]
--- @param x number
--- @param y number
--- @param z number
--- @param nodeType integer
--- @param p6 number
--- @param p7 number
--- @return boolean, number, number, number, number
utility.getClosestVehicleNodeWithHeading = function(x, y, z, nodeType, p6, p7)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(nodeType) == 'number', 'Argument nodeType must be of type number.')
    assert(type(p6) == 'number', 'Argument p6 must be of type number.')
    assert(type(p7) == 'number', 'Argument p7 must be of type number.')

    local call = {}
    call.result, call.outPositionX, call.outPositionY, call.outPositionZ, call.outHeading = utility.getClosestVehicleNodeWithHeading(x, y, z, nodeType, p6, p7)
    return call.result, call.outPositionX, call.outPositionY, call.outPositionZ, call.outHeading
end

--[[
utility.getCoordsOfProjectileTypeWithinDistance
Utility function which invokes native 0xD73C960A681052DF

Function Parameters
integer pedHandle
hash weaponHash
float distance
boolean p4
boolean mustBeOwnedByThisPed

Return
boolean result
float outCoordsX
float outCoordsY
float outCoordsZ
]]
--- @param pedHandle integer
--- @param weaponHash integer
--- @param distance number
--- @param p4 boolean
--- @param mustBeOwnedByThisPed boolean
--- @return boolean, number, number, number
utility.getCoordsOfProjectileTypeWithinDistance = function(pedHandle, weaponHash, distance, p4, mustBeOwnedByThisPed)
    assert(type(pedHandle) == 'number', 'Argument pedHandle must be of type number.')
    assert(type(weaponHash) == 'number', 'Argument weaponHash must be of type number.')
    assert(type(distance) == 'number', 'Argument distance must be of type number.')
    assert(type(p4) == 'boolean', 'Argument p4 must be of type boolean.')
    assert(type(mustBeOwnedByThisPed) == 'boolean', 'Argument mustBeOwnedByThisPed must be of type boolean.')

    local call = {}
    call.result, call.outCoordsX, call.outCoordsY, call.outCoordsZ = utility.getCoordsOfProjectileTypeWithinDistance(pedHandle, weaponHash, distance, p4, mustBeOwnedByThisPed)
    return call.result, call.outCoordsX, call.outCoordsY, call.outCoordsZ
end

--[[
utility.getEntityWorldPositionOfDimensions
Utility function which invokes native 0xF3FDA9A617A15145

Function Parameters
integer entityHandle

Return
float maximumX
float maximumY
float maximumZ
float minimumX
float minimumY
float minimumZ
]]
--- @param entityHandle integer
--- @return number, number, number, number, number, number
utility.getEntityWorldPositionOfDimensions = function(entityHandle)
    assert(type(entityHandle) == 'number', 'Argument entityHandle must be of type number.')

    local call = {}
    call.maximumX, call.maximumY, call.maximumZ, call.minimumX, call.minimumY, call.minimumZ = utility.getEntityWorldPositionOfDimensions(entityHandle)
    return call.maximumX, call.maximumY, call.maximumZ, call.minimumX, call.minimumY, call.minimumZ
end

--[[
utility.getEntityMatrix
Utility function which invokes native 0x3A9B1120AF13FBF2

Function Parameters
integer entityHandle

Return
float rightVectorX
float rightVectorY
float rightVectorZ
float forwardVectorX
float forwardVectorY
float forwardVectorZ
float upVectorX
float upVectorY
float upVectorZ
float positionX
float positionY
float positionZ
]]
--- @param entityHandle integer
--- @return number, number, number, number, number, number, number, number, number, number, number, number
utility.getEntityMatrix = function(entityHandle)
    assert(type(entityHandle) == 'number', 'Argument entityHandle must be of type number.')

    local call = {}
    call.rightVectorX, call.rightVectorY, call.rightVectorZ, call.forwardVectorX, call.forwardVectorY, call.forwardVectorZ, call.upVectorX, call.upVectorY, call.upVectorZ, call.positionX, call.positionY, call.positionZ = utility.getEntityMatrix(entityHandle)
    return call.rightVectorX, call.rightVectorY, call.rightVectorZ, call.forwardVectorX, call.forwardVectorY, call.forwardVectorZ, call.upVectorX, call.upVectorY, call.upVectorZ, call.positionX, call.positionY, call.positionZ
end

--[[
utility.getEntityOwner
This function will return the entity's owner as player index, failure to find this will return -1.

Function Parameters
integer entityIndex

Return
integer ownerPlayerIndex
]]
--- @param entityIndex integer
--- @return integer
utility.getEntityOwner = function(entityIndex)
    assert(type(entityIndex) == 'number', 'Argument entityIndex must be of type number.')

    local call = utility.getEntityOwner(entityIndex)
    return call
end

--[[
utility.getGroundZAtCoords
This function will check the engine and try to obtain the ground Z value for the coordinates specified.

Function Parameters
float coordX
float coordY
float coordZ

Return
void
]]
--- @param coordX number
--- @param coordY number
--- @param coordZ number
--- @return boolean, number
utility.getGroundZAtCoords = function(coordX, coordY, coordZ)
    assert(type(coordX) == 'number', 'Argument coordX must be of type number.')
    assert(type(coordY) == 'number', 'Argument coordY must be of type number.')
    assert(type(coordZ) == 'number', 'Argument coordZ must be of type number.')

    local call = {}
    call.result, call.groundZ = utility.getGroundZAtCoords(coordX, coordY, coordZ)
    return call.result, call.groundZ
end

--[[
utility.getPedLastWeaponImpactCoord
Utility function which invokes native 0x6C4D0409BA1A2BC2

Function Parameters
integer pedHandle
integer order

Return
boolean result
float coordsX
float coordsY
float coordsZ
]]
--- @param pedHandle integer
--- @param order integer
--- @return boolean, number, number, number
utility.getPedLastWeaponImpactCoord = function(pedHandle, order)
    assert(type(pedHandle) == 'number', 'Argument pedHandle must be of type number.')
    assert(type(order) == 'number', 'Argument order must be of type number.')

    local call = {}
    call.result, call.coordsX, call.coordsY, call.coordsZ = utility.getPedLastWeaponImpactCoord(pedHandle, order)
    return call.result, call.coordsX, call.coordsY, call.coordsZ
end

--[[
utility.getResolution
This function will return the game's resolution (width and height) in pixels

Function Parameters
void

Return
integer gameWidth
integer gameHeight
]]
---@return integer, integer
utility.getResolution = function()

    local call = {}
    call.gameWidth, call.gameHeight = utility.getResolution()
    return call.gameWidth, call.gameHeight
end

--[[
utility.getSafeCoordForPed
Utility function which invokes native 0xB61C8E878A4199CA

Function Parameters
float x
float y
float z
boolean onGround
integer flags

Return
boolean result
float outPositionX
float outPositionY
float outPositionZ
]]
--- @param x number
--- @param y number
--- @param z number
--- @param onGround boolean
--- @param flags integer
--- @return boolean, number, number, number
utility.getSafeCoordForPed = function(x, y, z, onGround, flags)
    assert(type(x) == 'number', 'Argument x must be of type number.')
    assert(type(y) == 'number', 'Argument y must be of type number.')
    assert(type(z) == 'number', 'Argument z must be of type number.')
    assert(type(onGround) == 'boolean', 'Argument onGround must be of type boolean.')
    assert(type(flags) == 'number', 'Argument flags must be of type number.')

    local call = {}
    call.result, call.outPositionX, call.outPositionY, call.outPositionZ = utility.getSafeCoordForPed(x, y, z, onGround, flags)
    return call.result, call.outPositionX, call.outPositionY, call.outPositionZ
end

--[[
utility.getShapeTestResult
Utility function which invokes native 0xEDE8AC7C5108FB1D

Function Parameters
integer shapeTestHandle

Return
integer result
boolean hit
float endCoordsX
float endCoordsY
float endCoordsZ
float surfaceNormalX
float surfaceNormalY
float surfaceNormalZ
integer entityHitHandle
]]
--- @param shapeTestHandle integer
--- @return integer, boolean, number, number, number, number, number, number, number
utility.getShapeTestResult = function(shapeTestHandle)
    assert(type(shapeTestHandle) == 'number', 'Argument shapeTestHandle must be of type number.')

    local call = {}
    call.result, call.hit, call.endCoordsX, call.endCoordsY, call.endCoordsZ, call.surfaceNormalX, call.surfaceNormalY, call.surfaceNormalZ, call.entityHitHandle = utility.getShapeTestResult(shapeTestHandle)
    return call.result, call.hit, call.endCoordsX, call.endCoordsY, call.endCoordsZ, call.surfaceNormalX, call.surfaceNormalY, call.surfaceNormalZ, call.entityHitHandle
end

--[[
utility.getVehicleNodePosition
Utility function which invokes native 0x8E8D72FF24DEE1FB

Function Parameters
integer nodeId

Return
float outPositionX
float outPositionY
float outPositionZ
]]
--- @param nodeId integer
--- @return number, number, number
utility.getVehicleNodePosition = function(nodeId)
    assert(type(nodeId) == 'number', 'Argument nodeId must be of type number.')

    local call = {}
    call.outPositionX, call.outPositionY, call.outPositionZ = utility.getVehicleNodePosition(nodeId)
    return call.outPositionX, call.outPositionY, call.outPositionZ
end

--[[
utility.isKeyPressed
This function can be used to determine if a key is currently pressed or not. If keyboard is set to true, Windows API is utilized for detection, otherwise in-game functions are used

Function Parameters
boolean keyboard
integer key
boolean onlyIfInFocus (optional)

Return
boolean result
]]
---@param keyboard boolean
---@param key integer
---@param onlyIfInFocus boolean (optional)
--- @return boolean
utility.isKeyPressed = function(keyboard, key, onlyIfInFocus)

    onlyIfInFocus = onlyIfInFocus or false
    assert(type(keyboard) == 'boolean', 'Argument keyboard must be of type boolean.')
    assert(type(key) == 'number', 'Argument key must be of type number.')

    local call = utility.isKeyPressed(keyboard, key, onlyIfInFocus)
    return call
end

--[[
utility.isMenuOpen
This function can be utilized to determine if the menu is open or closed (visible on screen)

Function Parameters
void

Return
boolean result
]]
--- @return boolean
utility.isMenuOpen = function()

    local call = utility.isMenuOpen()
    return call
end

--[[
utility.isUltrawide
This function can be utilized to determine if the game resolution is in standard (16:9) or ultrawide (21:9 etc) mode

Function Parameters
void
Return
boolean result
]]
--- @return boolean
utility.isUltrawide = function()

    local call = utility.isUltrawide()
    return call
end

--[[
utility.pushEntityToCoordsWithForce
Push entity to a set of coordinates using in-game force functions

Function Parameters
integer entityIndex
float coordX
float coordY
float coordZ
float forceMultplier

Return
void
]]
--- @param entityIndex integer
--- @param coordX number
--- @param coordY number
--- @param coordZ number
--- @param forceMultplier number
utility.pushEntityToCoordsWithForce = function(entityIndex, coordX, coordY, coordZ, forceMultplier)
    assert(type(entityIndex) == 'number', 'Argument entityIndex must be of type number.')
    assert(type(coordX) == 'number', 'Argument coordX must be of type number.')
    assert(type(coordY) == 'number', 'Argument coordY must be of type number.')
    assert(type(coordZ) == 'number', 'Argument coordZ must be of type number.')
    assert(type(forceMultplier) == 'number', 'Argument forceMultplier must be of type number.')

    local call = utility.pushEntityToCoordsWithForce(entityIndex, coordX, coordY, coordZ, forceMultplier)
end

--[[
utility.requestControlOfEntity
This function requests control of entity

Function Parameters
integer entityIndex
integer maxTries (recommended: 50)

Return
void
]]
--- @param entityIndex integer
--- @param maxTries integer
utility.requestControlOfEntity = function(entityIndex, maxTries)
    assert(type(entityIndex) == 'number', 'Argument entityIndex must be of type number.')
    assert(type(maxTries) == 'number', 'Argument maxTries must be of type number.')

    local call = utility.requestControlOfEntity(entityIndex, maxTries)
end

--[[
utility.startShapeTestMouseCursorLosProbe
Utility function which invokes native 0xADF1D53F3B1FE0A7

Function Parameters
integer flag
integer entityHandle
integer flag2

Return
integer result
float pVec1X
float pVec1Y
float pVec1Z
float pVec2X
float pVec2Y
float pVec2Z
]]
--- @param flag integer
--- @param entityHandle integer
--- @param flag2 integer
--- @return integer, number, number, number, number, number, number
utility.startShapeTestMouseCursorLosProbe = function(flag, entityHandle, flag2)
    assert(type(flag) == 'number', 'Argument flag must be of type number.')
    assert(type(entityHandle) == 'number', 'Argument entityHandle must be of type number.')
    assert(type(flag2) == 'number', 'Argument flag2 must be of type number.')

    local call = {}
    call.result, call.pVec1X, call.pVec1Y, call.pVec1Z, call.pVec2X, call.pVec2Y, call.pVec2Z = utility.startShapeTestMouseCursorLosProbe(flag, entityHandle, flag2)
    return call.result, call.pVec1X, call.pVec1Y, call.pVec1Z, call.pVec2X, call.pVec2Y, call.pVec2Z
end

--[[
utility.teleportEntityToCoords
This function will teleport the specified entity to the specified coordinates, and attempt to locate and place it at ground level.

Function Parameters
integer entityIndex
float coordX
float coordY
float coordZ

Return
void
]]
--- @param entityIndex integer
--- @param coordX number
--- @param coordY number
--- @param coordZ number
utility.teleportEntityToCoords = function(entityIndex, coordX, coordY, coordZ)
    assert(type(entityIndex) == 'number', 'Argument entityIndex must be of type number.')
    assert(type(coordX) == 'number', 'Argument coordX must be of type number.')
    assert(type(coordY) == 'number', 'Argument coordY must be of type number.')
    assert(type(coordZ) == 'number', 'Argument coordZ must be of type number.')

    local call = utility.teleportEntityToCoords(entityIndex, coordX, coordY, coordZ)
end

--[[
utility.teleportToCoords
This function will teleport you to the specified coordinates, and attempt to locate and place you at ground level. This will also invoke any configured teleport particle effects, so recommended to use this as opposed to plain jane setEntityCoords native.

Function Parameters
float coordX
float coordY
float coordZ

Return
void
]]
--- @param coordX number
--- @param coordY number
--- @param coordZ number
utility.teleportToCoords = function(coordX, coordY, coordZ)
    assert(type(coordX) == 'number', 'Argument coordX must be of type number.')
    assert(type(coordY) == 'number', 'Argument coordY must be of type number.')
    assert(type(coordZ) == 'number', 'Argument coordZ must be of type number.')

    local call = utility.teleportToCoords(coordX, coordY, coordZ)
end


-- #endregion


notifications = {}

-- #region notifications

--- @param title string
--- @param body string
notifications.alertInfo = function(title, body)
    assert(type("title") == 'string', 'Argument "title" must be of type string.')
    assert(type("body") == 'string', 'Argument "body" must be of type string.')

    local call = notifications.alertInfo("title", "body")
end

--- @param title string
--- @param body string
notifications.alertWarn = function(title, body)
    assert(type("title") == 'string', 'Argument "title" must be of type string.')
    assert(type("body") == 'string', 'Argument "body" must be of type string.')

    local call = notifications.alertWarn("title", "body")
end

--- @param title string
--- @param body string
notifications.alertDanger = function(title, body)
    assert(type("title") == 'string', 'Argument "title" must be of type string.')
    assert(type("body") == 'string', 'Argument "body" must be of type string.')

    local call = notifications.alertDanger("title", "body")
end

-- #endregion


scriptGlobals = {}

-- #region scriptGlobals

--- @param globalIndex integer
--- @return integer
scriptGlobals.getInteger = function(globalIndex)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')

    local call = scriptGlobals.getInteger(globalIndex)
    return call
end

--- @param globalIndex integer
--- @param value integer
scriptGlobals.setInteger = function(globalIndex, value)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = scriptGlobals.setInteger(globalIndex, value)
end

--- @param globalIndex integer
--- @return string
scriptGlobals.getString = function(globalIndex)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')

    local call = scriptGlobals.getString(globalIndex)
    return call
end

--- @param globalIndex integer
--- @param value string
scriptGlobals.setString = function(globalIndex, value)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')
    assert(type(value) == 'string', 'Argument value must be of type string.')

    local call = scriptGlobals.setString(globalIndex, value)
end

--- @param globalIndex integer
--- @return boolean
scriptGlobals.getBoolean = function(globalIndex)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')

    local call = scriptGlobals.getBoolean(globalIndex)
    return call
end

--- @param globalIndex integer
--- @param value boolean
scriptGlobals.setBoolean = function(globalIndex, value)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')
    assert(type(value) == 'boolean', 'Argument value must be of type boolean.')

    local call = scriptGlobals.setBoolean(globalIndex, value)
end

--- @param globalIndex number
--- @return number
scriptGlobals.getFloat = function(globalIndex)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')

    local call = scriptGlobals.getFloat(globalIndex)
    return call
end

--- @param globalIndex integer
--- @param value number
scriptGlobals.setFloat = function(globalIndex, value)
    assert(type(globalIndex) == 'number', 'Argument globalIndex must be of type number.')
    assert(type(value) == 'number', 'Argument value must be of type number.')

    local call = scriptGlobals.setFloat(globalIndex, value)
end


-- #endregion

