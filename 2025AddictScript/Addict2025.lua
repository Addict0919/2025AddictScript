-- Addict Script™ Copyright© 2025

--[[] -- Coded By Candy
WE HAVE TAKEN OVER░ \☻/\☻/
░░░░░░░░░░░░░░░░░░░▌░ ▌
░░░░░░░░░░░░░░░░░░ / \░ / \
░░░░░░░░░░░░░░░░░███████ ]▄▄▄▄▄▄▄▄▄-----------●
░░░░░░░░░░░░▂▄▅█████████▅▄▃▂
░░░░░░░░░░░I███████████████████].
]]

-- Credits 🧐🔽🔽🔽
local Credits_To = {
    "Min",
    "CoalwiX",
    "0xDEADBEEF",
}
-- Credits 🧐🔼🔼🔼

util.require_natives("natives-1663599433")
util.keep_running()
local addict = menu
local addict_version = 0.04
local dev_mode = false -- Disables stuff like Updates [true/false]

local github = addict.list(addict.my_root(), "Updates", {"addictupdates"})
addict.hyperlink(github, "Addict Discord", "https://discord.gg/RHvG3XdTmx")
addict.hyperlink(github, "Changelog link", "https://github.com/Addict0919/2025AddictScript/blob/main/2025AddictScript/AddictScriptChangelog.LUA")


async_http.init("raw.githubusercontent.com","/Addict0919/2025AddictScript/main/2025AddictScript/AddictScriptChangelog.LUA",function(b)
    response=true;
    addict.action(github, "Changelog", {"addictchangelog"}, b, function() end)
end,
function()
    response=true 
end)
async_http.dispatch()
repeat util.yield()
until response 
if not dev_mode then
    async_http.init("raw.githubusercontent.com","/Addict0919/2025AddictScript/main/2025AddictScript/AddictScriptVersion.LUA",function(b)
        currentVer=tonumber(b)
        response=true;
        if addict_version~=currentVer then 
                util.toast("New Version found")async_http.init('raw.githubusercontent.com','/Addict0919/2025AddictScript/main/2025AddictScript/Addict2025.lua',function(c)
                    local d=select(2,load(c))
                    if d then 
                        util.toast("Update failed to download, please re-download manually via Github or using Addict Discord Server.")
                        return 
                    end;
                    local e=io.open(filesystem.scripts_dir()..SCRIPT_RELPATH,"wb")
                    e:write(c)
                    e:close()
                    util.toast("Update Done!")
                    util.restart_script()
                end)
                async_http.dispatch()
        end 
    end,
    function()
        response=true 
    end)
    async_http.dispatch()
    repeat util.yield()
    until response 
end

resources_dir = filesystem.resources_dir() .. '\\Addictscript\\'
Addictscript_logo = directx.create_texture(resources_dir .. 'Addictscript_logo.png')

if not filesystem.is_dir(resources_dir) then
end

if not SCRIPT_SILENT_START then
    logo_alpha = 0
    logo_alpha_incr = 0.02
    logo_alpha_thread = util.create_thread(function (thr)
        while true do
            logo_alpha = logo_alpha + logo_alpha_incr
            if logo_alpha > 1 then
                logo_alpha = 1
            elseif logo_alpha < 0 then 
                logo_alpha = 0	
            end
        util.yield()
    end
end)

    logo_thread = util.create_thread(function (thr)
        starttime = os.clock()
        local alpha = 0
        while true do
            directx.draw_texture(Addictscript_logo, 0.15, 0.10, 0.5, 0.7, 0.5, 0.5, 0, 1, 1, 1, logo_alpha)
            timepassed = os.clock() - starttime
            if timepassed > 1 then
                logo_alpha_incr = -0.01
            end
            if logo_alpha == 0 then
            end
            util.yield()
        end
    end)
end

if not dev_mode then
    util.log("Welcome to Addict Script! V" .. addict_version .. "\n" .. "\n" .. "Check discord for updates...\n" .. "\n" .. "Enjoy Playing :)")
    util.toast("Welcome to Addict Script! V" .. addict_version .. "\n" .. "\n" .. "Check discord for updates...\n" .. "\n" .. "Enjoy Playing :)")
else
    util.log("Welcome to Addict Script! V" .. addict_version .. "\n" .. "\n" .. "Check discord for updates...\n" .. "\n" .. "Enjoy Playing :)")
    util.toast("Welcome to Addict Script! V" .. addict_version .. "\n" .. "\n" .. "Check discord for updates...\n" .. "\n" .. "Enjoy Playing :)")
end

 -- Text Used By This Website: https://fsymbols.com/text-art/
util.log("───────────────────────────────────────────────────────────────────────────────────────")
util.log("─██████████████─████████████───████████████───██████████─██████████████─██████████████─")
util.log("─██░░░░░░░░░░██─██░░░░░░░░████─██░░░░░░░░████─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─")
util.log("─██░░██████░░██─██░░████░░░░██─██░░████░░░░██─████░░████─██░░██████████─██████░░██████─")
util.log("─██░░██──██░░██─██░░██──██░░██─██░░██──██░░██───██░░██───██░░██─────────────██░░██─────")
util.log("─██░░██████░░██─██░░██──██░░██─██░░██──██░░██───██░░██───██░░██─────────────██░░██─────")
util.log("─██░░░░░░░░░░██─██░░██──██░░██─██░░██──██░░██───██░░██───██░░██─────────────██░░██─────")
util.log("─██░░██████░░██─██░░██──██░░██─██░░██──██░░██───██░░██───██░░██─────────────██░░██─────")
util.log("─██░░██──██░░██─██░░██──██░░██─██░░██──██░░██───██░░██───██░░██─────────────██░░██─────")
util.log("─██░░██──██░░██─██░░████░░░░██─██░░████░░░░██─████░░████─██░░██████████─────██░░██─────")
util.log("─██░░██──██░░██─██░░░░░░░░████─██░░░░░░░░████─██░░░░░░██─██░░░░░░░░░░██─────██░░██─────")
util.log("─██████──██████─████████████───████████████───██████████─██████████████─────██████─────")
util.log("───────────────────────────────────────────────────────────────────────────────────────")
 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Credits List

local Credits = addict.list(addict.my_root(), "Credits", {""}, "")
---------------------------------------------------------------------------------
addict.divider(Credits, "Great Coders <3")
---------------------------------------------------------------------------------
addict.action(Credits, "Min", {}, "Great coder helped with code, security and testing :).", function() end)
addict.action(Credits, "CoalwiX", {}, "Developer of coalwix top guy for supporting me and promoting this lua :)", function() end)
addict.action(Credits, "Unseemly", {}, "Great coder wouldn't even have an auto updater or certain mods fixed if it wasn't for this guy <3.", function() end)
addict.action(Credits, "Cystal", {}, "Very smart coder helped with mods I gave up on.", function() end)
addict.action(Credits, "Legy", {}, "Very smart guy great lua coder with cool suggestions.", function() end)
addict.action(Credits, "0xDEADBEEF", {}, "Helped with tons of suggestions, testing and sharing his own code:)", function() end)
addict.action(Credits, "Chaos", {}, "Great guy supported me with everything to keep the script running otherwise I would of gave up coding publicly.", function() end)
addict.action(Credits, "Wigger", {}, "Codes very well!, very smart guy always has an answer for me :).", function() end)
addict.action(Credits, "Glitter", {}, "Known for a long time since I first played gta <3.", function() end)
addict.action(Credits, "Nosa", {}, "Known for a long time very smart guy. Helped me with code and suggestions.", function() end)
addict.action(Credits, "Jailbroken", {}, "Cool guy very fast learner, unlike some people (no names) PRISHUM.", function() end)
 
-- Script Addict Header 

local translations = {}
setmetatable(translations, {
    __index = function (self, key)
        return key
    end
})

local festive_div = addict.divider(addict.my_root(), "Addict Script")
local loading_frames = {'!', '! !', '! ! !', '! ! ! !', ' ! ! ! ! ! ! ! ! !', '! ! ! !', '! ! !', '! !', '!'}
util.create_tick_handler(function()
    for _, frame in pairs(loading_frames) do
        addict.set_menu_name(festive_div, frame .. ' ' .. translations.Addict_Script .. ' ' .. frame)
        util.yield(100)
    end
end)
 
------------------------------------------------------------------------------------------------------------------------------------------

--[[
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████──██████─██████──────────██████─██████████████─██████████████─██████████─██████████████─██████──────────██████─██████████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░██████████──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░██████████──██░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██──██░░██─██░░░░░░░░░░██──██░░██─██░░██████████─██████░░██████─████░░████─██░░██████░░██─██░░░░░░░░░░██──██░░██─██░░██████████─
─██░░██─────────██░░██──██░░██─██░░██████░░██──██░░██─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██████░░██──██░░██─██░░██─────────
─██░░██████████─██░░██──██░░██─██░░██──██░░██──██░░██─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██──██░░██─██░░██████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░██──██░░██──██░░██─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██──██░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██──██░░██─██░░██──██░░██──██░░██─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██──██░░██─██████████░░██─
─██░░██─────────██░░██──██░░██─██░░██──██░░██████░░██─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██████░░██─────────██░░██─
─██░░██─────────██░░██████░░██─██░░██──██░░░░░░░░░░██─██░░██████████─────██░░██─────████░░████─██░░██████░░██─██░░██──██░░░░░░░░░░██─██████████░░██─
─██░░██─────────██░░░░░░░░░░██─██░░██──██████████░░██─██░░░░░░░░░░██─────██░░██─────██░░░░░░██─██░░░░░░░░░░██─██░░██──██████████░░██─██░░░░░░░░░░██─
─██████─────────██████████████─██████──────────██████─██████████████─────██████─────██████████─██████████████─██████──────────██████─██████████████─
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]

---@alias Entity integer
---@param entity Entity
---@param distance number
---@return userdata
GetCoordsInFrontOfEntity = function(entity, distance)
	if not ENTITY.DOES_ENTITY_EXIST(entity) then
		return v3.new(0.0, 0.0, 0.0)
	end
	local coords = ENTITY.GET_ENTITY_FORWARD_VECTOR(entity)
	coords:mul(distance)
	coords:add(ENTITY.GET_ENTITY_COORDS(entity, true))
	return coords
end

---@param entity Entity
RequestControl = function(entity, timeOut)
	timeOut = timeOut or 1000
	local start = util.current_time_millis()
	while not NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity) and
	util.current_time_millis() - start < timeOut do
		util.yield_once()
	end
	return util.current_time_millis() - start < timeOut
end

local function ChangeNetObjOwner(object, player)
    if NETWORK.NETWORK_IS_IN_SESSION() then
        local net_object_mgr = get_player_vehicle(pid, false)
        if net_object_mgr == NULL then
            return false
        end
        if not ENTITY.DOES_ENTITY_EXIST(object) then
            return false
        end
        local netObj = entities.get_all_vehicles_as_handles()
        if netObj == NULL then
            return false
        end
        local net_game_player = players.user()
        if net_game_player == NULL then
            return false
        end
        return true
    else
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(object)
        return true
    end
end

-- Memory Functions

local orgScan = memory.scan
function myModule(name, pattern, callback)
    local address = orgScan(pattern)
    if address ~= NULL then
        util.log("Found " .. name)
        callback(address)
    else
        util.log("Failed to find " .. name)
        util.stop_script()
    end
end

myModule("ChangeNetObjOwner", "48 8B C4 48 89 58 08 48 89 68 10 48 89 70 18 48 89 78 20 41 54 41 56 41 57 48 81 EC ? ? ? ? 44 8A 62 4B", function (address)
    ChangeNetObjOwner_addr = address
end)

local function BlockSyncs(pid, callback)
    for _, i in ipairs(players.list(false, true, true)) do
        if i ~= pid then
            local outSync = addict.ref_by_rel_path(addict.player_root(i), "Outgoing Syncs>Block")
            addict.trigger_command(outSync, "on")
        end
    end
    util.yield(10)
    callback()
    for _, i in ipairs(players.list(false, true, true)) do
        if i ~= pid then
            local outSync = addict.ref_by_rel_path(addict.player_root(i), "Outgoing Syncs>Block")
            addict.trigger_command(outSync, "off")
        end
    end
end

local function request_anim_dict(dict)
    while not STREAMING.HAS_ANIM_DICT_LOADED(dict) do
        STREAMING.REQUEST_ANIM_DICT(dict)
        util.yield()
    end
end

function request_model(hash, timeout)
    timeout = timeout or 3
    STREAMING.REQUEST_MODEL(hash)
    local end_time = os.time() + timeout
    repeat
        util.yield()
    until STREAMING.HAS_MODEL_LOADED(hash) or os.time() >= end_time
    return STREAMING.HAS_MODEL_LOADED(hash)
end

function RequestModel(Hash, timeout)
    STREAMING.REQUEST_MODEL(Hash)
    local time = util.current_time_millis() + (timeout or 1000)
    while time > util.current_time_millis() and not STREAMING.HAS_MODEL_LOADED(Hash) do
        util.yield()
    end
    return STREAMING.HAS_MODEL_LOADED(Hash)
end

local function get_model_size(hash)
    local minptr = memory.alloc(24)
    local maxptr = memory.alloc(24)
    local min = {}
    local max = {}
    MISC.GET_MODEL_DIMENSIONS(hash, minptr, maxptr)
    min.x, min.y, min.z = v3.get(minptr)
    max.x, max.y, max.z = v3.get(maxptr)
    local size = {}
    size.x = max.x - min.x
    size.y = max.y - min.y
    size.z = max.z - min.z
    size['max'] = math.max(size.x, size.y, size.z)
    return size
end

local function request_control_of_entity_once(ent)
    if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) and util.is_session_started() then
        local netid = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(ent)
        NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netid, true)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ent)
    end
end

function max_out_car(veh)
    for i=0, 47 do
        num = VEHICLE.GET_NUM_VEHICLE_MODS(veh, i)
        VEHICLE.SET_VEHICLE_MOD(veh, i, num -1, true)
    end
end

function is_ped_player(ped)
    if PED.GET_PED_TYPE(ped) >= 4 then
        return false
    else
        return true
    end
end

function get_ground_z(coords)
    start_time = os.time()
    while true do
        if os.time() - start_time >= 5 then
            util.log("Failed to get ground Z in 5 seconds.")
            return nil
        end
        success, est = util.get_ground_z(coords['x'], coords['y'], coords['z']+2000)
        if success then
            return est
        end
        util.yield()
    end
end

function get_waypoint_coords()
    coords = HUD.GET_BLIP_COORDS(HUD.GET_FIRST_BLIP_INFO_ID(8))
    if coords['x'] == 0 and coords['y'] == 0 and coords['z'] == 0 then
        return nil
    else
        estimate = get_ground_z(coords)
        if estimate then
            coords['z'] = estimate
        end
        return coords
    end
end

-- set a player into a free seat in a vehicle, if any exist
local function set_player_into_suitable_seat(ent)
local driver = VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1)
if not PED.IS_PED_A_PLAYER(driver) or driver == 0 then
    if driver ~= 0 then
        entities.delete_by_handle(driver)
    end
    PED.SET_PED_INTO_VEHICLE(players.user_ped(), ent, -1)
else
    for i=0, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(ent) do
        if VEHICLE.IS_VEHICLE_SEAT_FREE(ent, i) then
            PED.SET_PED_INTO_VEHICLE(players.user_ped(), ent, -1)
        end
    end
end
end

function candy_paint(player)
    addict.trigger_commands("perfwithspoiler")
    addict.trigger_commands("vehprimaryred" .. " 80")
    addict.trigger_commands("vehprimarygreen" .. " 0")
    addict.trigger_commands("vehprimaryblue" .. " 255")
    local Chrome_Paint_Primary = addict.ref_by_path("Vehicle>Los Santos Customs>Appearance>Primary Colour>Finish>Chrome")
    util.yield(500)
    addict.trigger_command(Chrome_Paint_Primary)
    local Chrome_Paint_Secondary = addict.ref_by_path("Vehicle>Los Santos Customs>Appearance>Secondary Colour>Finish>Chrome")
    addict.trigger_commands("vehsecondaryred" .. " 80")
    addict.trigger_commands("vehsecondarygreen" .. " 0")
    addict.trigger_commands("vehsecondaryblue" .. " 255")
    util.yield(500)
    addict.trigger_command(Chrome_Paint_Secondary)
    VEHICLE.SET_VEHICLE_WINDOW_TINT(vehicle, 1)
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "xCandyx")
end

    -- Grabs the driver, first checks attachments (tow, cargo, etc) then driver seat
function get_my_driver()
    local vehicle = entities.get_user_vehicle_as_handle()
    local entity = ENTITY.GET_ENTITY_ATTACHED_TO(vehicle)
    if entity > 0 and ENTITY.IS_ENTITY_A_VEHICLE(entity) then
        local driver = VEHICLE.GET_PED_IN_VEHICLE_SEAT(entity, -1)
        if driver > 0 then
            return driver, entity
        end
    end
    return VEHICLE.GET_PED_IN_VEHICLE_SEAT(vehicle, -1), vehicle
end

function setup_choose_player_addict(rootaddict, addictList, callback, pid)
    addict.on_focus(rootaddict, function(_)
        for _, m in ipairs(addictList) do
            addict.delete(m)
        end
        addictList = {}
        local cur_players = players.list(true, true, true)
        local my_pid = players.user()
        for _, target_pid in ipairs(cur_players) do
            local name = PLAYER.GET_PLAYER_NAME(target_pid)
            if pid ~= nil and target_pid == pid then
                name = name .. " (" .. ("Them") .. ")"
            elseif target_pid == my_pid then
                name = name .. " (" .. ("M") .. ")"
            end
            local m = callback(target_pid, name)
            table.insert(addictList, m)
        end
    end)
end

function get_player_vehicle(pid, with_access)
    local player_index = player_index(pid)
    if PED.IS_PED_IN_ANY_VEHICLE(player_index, true) then
        local vehicle = PED.GET_VEHICLE_PED_IS_IN(player_index, false)
        if with_access then
            request_control_of_entity(vehicle, 5)
            return vehicle
        else
            return vehicle
        end
    end
end

local function get_closest_vehicle(entity)
    local coords = ENTITY.GET_ENTITY_COORDS(entity, true)
    local vehicles = entities.get_all_vehicles_as_handles()
    -- init this at some ridiculously large number we will never reach, ez
    local closestdist = 1000000
    local closestveh = 0
    for k, veh in pairs(vehicles) do
        if veh ~= PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false) and ENTITY.GET_ENTITY_HEALTH(veh) ~= 0 then
            local vehcoord = ENTITY.GET_ENTITY_COORDS(veh, true)
            local dist = MISC.GET_DISTANCE_BETWEEN_COORDS(coords['x'], coords['y'], coords['z'], vehcoord['x'], vehcoord['y'], vehcoord['z'], true)
            if dist < closestdist then
                closestdist = dist
                closestveh = veh
            end
        end
    end
    return closestveh
    end

    function get_closest_ped_new(coords)
    local closest = nil
    local closest_dist = 1000000
    local this_dist = 0
    for _, ped in pairs(entities.get_all_peds_as_handles()) do 
        this_dist = v3.distance(coords, ENTITY.GET_ENTITY_COORDS(ped))
        if this_dist < closest_dist and not PED.IS_PED_A_PLAYER(ped) and not PED.IS_PED_FATALLY_INJURED(ped)  and not PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
            closest = ped
            closest_dist = this_dist
        end
    end
    if closest ~= nil then 
        return {closest, closest_dist}
    else
        return nil 
    end
end

---@param list Entity[]
ClearEntities = function(list)
	for _, entity in ipairs(list) do
		if ENTITY.DOES_ENTITY_EXIST(entity) then
			ENTITY.SET_ENTITY_AS_MISSION_ENTITY(entity, false, false)
			RequestControl(entity)
			entities.delete_by_handle(entity)
		end
	end
end

function CreateVehicle(Hash, Pos, Heading, Invincible)
	STREAMING.REQUEST_MODEL(Hash)
	while not STREAMING.HAS_MODEL_LOADED(Hash) do util.yield() end
	local SpawnedVehicle = entities.create_vehicle(Hash, Pos, Heading)
	STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Hash)
	if Invincible then
		ENTITY.SET_ENTITY_INVINCIBLE(SpawnedVehicle, true)
	end
	return SpawnedVehicle
end

function CreateObject(Hash, Pos, static)
	STREAMING.REQUEST_MODEL(Hash)
	while not STREAMING.HAS_MODEL_LOADED(Hash) do util.yield() end
	local SpawnedVehicle = entities.create_object(Hash, Pos)
	STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Hash)
	if static then
		ENTITY.FREEZE_ENTITY_POSITION(SpawnedVehicle, true)
	end
	return SpawnedVehicle
end

playerposition = function(entity, distance)
	if not ENTITY.DOES_ENTITY_EXIST(entity) then
    end
	local coords = ENTITY.GET_ENTITY_FORWARD_VECTOR(entity)
	coords:mul(distance)
	coords:add(ENTITY.GET_ENTITY_COORDS(entity, true))
	return coords
end

function GetLocalPed()
    return PLAYER.PLAYER_PED_ID()
end

NetworkControl = function(entity, timeOut)
	timeOut = timeOut or 1000
	local start = util.current_time_millis()
	while not NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity) and
	util.current_time_millis() - start < timeOut do
		util.yield_once()
	end
	return util.current_time_millis() - start < timeOut
end

local function deletehandlers(list)
    for _, entity in pairs(list) do
        if ENTITY.DOES_ENTITY_EXIST(entity) then
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(entity, false, false)
            NetworkControl(entity)
            entities.delete_by_handle(entity)
        end
    end
end

function attachto(offx, offy, offz, pid, angx, angy, angz, hash, isnpc, isveh)
        atomicattachto = util.create_thread(function(thr)
            local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local coords = ENTITY.GET_ENTITY_COORDS(ped, true)
            coords.x = coords['x']
            coords.y = coords['y']
            coords.z = coords['z']
            if isnpc then
                obj = entities.create_ped(1, hash, coords, 90.0)
            elseif isveh then
                obj = entities.create_vehicle(hash, coords, 90.0)
            else
                obj = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, coords['x'], coords['y'], coords['z'], true, false, false)
            end
            ENTITY.SET_ENTITY_INVINCIBLE(obj, true)
            ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(obj, false, true)
                while true do
                    local player_coords = ENTITY.GET_ENTITY_COORDS(ped, false)
                    local obj_coords = ENTITY.GET_ENTITY_COORDS(obj, false)
                    local dist =  MISC.GET_DISTANCE_BETWEEN_COORDS(player_coords['x'], player_coords['y'], player_coords['z'], obj_coords['x'], obj_coords['y'], obj_coords['z'], false)
                    if dist > 0.1 then
                        local behind = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, offx, offy, offz)
                        ENTITY.SET_ENTITY_COORDS(obj, behind['x'], behind['y'], behind['z'], false, false, false, false)
                    end
                    if not stopato then
                    util.stop_thread()
                    if not ENTITY.DOES_ENTITY_EXIST(obj) then
                    end
                    attachto(offx, offy, offz, pid, angx, angy, angz, hash, isnpc, isveh)
                    end
                    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
                    if not players.exists(pid) then
                        util.toast(aatoast)
                        util.stop_thread()
                    else
                    end
                    util.yield()
                end
            end)
        end

function attach_ladder(hash, aY, aZ, a_, b0, b1, b2, b3, pid)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        STREAMING.REQUEST_MODEL(hash)
        util.yield()
    end
    playerped3 = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    table_ladder[attach] = OBJECT.CREATE_OBJECT(hash, 1.55, 3.35, 0, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(
        table_ladder[attach],
        playerped3,
        0,
        aY,
        aZ,
        a_,
        b0,
        b2,
        b1,
        false,
        true,
        true,
        false,
        0,
        false
    )
    ENTITY.SET_ENTITY_VISIBLE(table_ladder[attach], b3)
    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
    attach = attach + 1
end

function request_control_of_entity(ent)
    if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) and util.is_session_started() then
        util.toast("Requesting entity control of " .. ent)
        local netid = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(ent)
        NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netid, true)
        local st_time = os.time()
        while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) do
            if os.time() - st_time >= 5 then
                util.toast("Failed to request entity control in 5 seconds (entity " .. ent .. ")")
                break
            end
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ent)
            util.yield()
        end
    end
end

function RqModel(hash)
    STREAMING.REQUEST_MODEL(hash)
    local count = 0
    util.toast("Requesting model...")
    while not STREAMING.HAS_MODEL_LOADED(hash) and count < 100 do
        STREAMING.REQUEST_MODEL(hash)
        count = count + 1
        util.yield(10)
    end
    if not STREAMING.HAS_MODEL_LOADED(hash) then
        util.toast("Tried for 1 second, couldn't load this specified model!")
    end
end

    function entity_fuck(pid) -- Code generated by a.i.
        while true do
        for _, entity in ipairs(entities.get_all_objects_as_handles(entities.get_all_vehicles_as_handles(entities.get_all_peds_as_handles()))) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not ENTITY.IS_ENTITY_A_MISSION_ENTITY(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(entity)
                local height = 100.0
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x + math.random(-100, 100), entityCoords.y + math.random(-100, 100), height)
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end
    end

    function veh_entity_fuck(pid) -- Code generated by a.i.
        while true do
        for _, entity in ipairs(entities.get_all_vehicles_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not ENTITY.IS_ENTITY_A_MISSION_ENTITY(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(entity)
                local height = 100.0
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x, entityCoords.y, height)
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end
    end

	hole_zoff = 50

    function veh_entity_fly(pid) -- Code generated by a.i.
        while true do
        for _, entity in ipairs(entities.get_all_vehicles_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not ENTITY.IS_ENTITY_A_MISSION_ENTITY(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(entity)
                local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
                vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                speed = 100
                local x_vec = (holecoords['x']-vcoords['x'])*speed
                local y_vec = (holecoords['y']-vcoords['y'])*speed
                local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end
    end

    function obj_entity_fuck(pid) -- Code generated by a.i.
        while true do
        for _, entity in ipairs(entities.get_all_objects_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not ENTITY.IS_ENTITY_A_MISSION_ENTITY(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(entity)
                local height = 100.0
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x, entityCoords.y, height)
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end
    end

    function ped_entity_fuck(pid) -- Code generated by a.i.
        while true do
        for _, entity in ipairs(entities.get_all_peds_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not ENTITY.IS_ENTITY_A_MISSION_ENTITY(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(entity)
                local height = 100.0
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x + math.random(-100, 100), entityCoords.y + math.random(-100, 100), height)
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end
    end

    function pickup_entity_fuck(pid) -- Code generated by a.i.
        while true do
        for _, entity in ipairs(entities.get_all_pickups_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not ENTITY.IS_ENTITY_A_MISSION_ENTITY(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(entity)
                local height = 100.0
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x + math.random(-100, 100), entityCoords.y + math.random(-100, 100), height)
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end
    end
 
    local useforce = {
        184361638,
        1890640474,
        868868440,
    }

    request_stream_of_entity = function(entity, time)
        local unixtime = util.current_unix_time_seconds()
        local seconds = unixtime + time
        STREAMING.REQUEST_MODEL(entity)
        while not STREAMING.HAS_MODEL_LOADED(entity) and unixtime < seconds do
            STREAMING.REQUEST_MODEL(entity)
            util.yield()
        end
        if STREAMING.HAS_MODEL_LOADED(entity) then
            return entity
        else
            return 0
        end
    end

    function player_index(pid)
        local player_index = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        return player_index
    end

    player_coords = function(pid)
        local player_coords = ENTITY.GET_ENTITY_COORDS(player_index(pid), true)
        return player_coords
    end

    function TramLag(pid)
        for i, v in pairs(useforce) do
            request_stream_of_entity(v, 1)
        end
        for i = 1, 2 do
            local coords = player_coords(pid)
            coords.x = coords.x
            coords.y = coords.y + -30
            coords.z = coords.z
            vehicle1 = entities.create_vehicle(184361638, coords, 0.0)
            object = entities.create_object(1890640474, coords, 0.0)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(vehicle1, true, true)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(object, true, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
            ENTITY.SET_ENTITY_VISIBLE(object, true, 0)
            ENTITY.SET_ENTITY_VELOCITY(vehicle1, 5, 3, 3)
            ENTITY.SET_ENTITY_VELOCITY(object, 3, 4, 5)
            ENTITY.SET_ENTITY_ROTATION(object, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
            for i = 1, 3 do
                ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, object, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
                local vehicle2 = entities.create_vehicle(868868440, coords, 0.0)
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(vehicle2, true, true)
                local ent_coords = ENTITY.GET_ENTITY_COORDS(object, true)
                FIRE.ADD_EXPLOSION(ent_coords.x, ent_coords.y, ent_coords.z, 0, 1.0, false, true, 0.0, false)
                ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle2, 1, 0, -100, 0, true, false, true)
                ENTITY.SET_ENTITY_VISIBLE(vehicle2, true, 0)
                util.yield(300)
                ENTITY.DETACH_ENTITY(vehicle1, object)
            end
        end
    end


	function spawn_ped(ped_name, pid)
		local V3 = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local ped_hash = util.joaat(ped_name)
		STREAMING.REQUEST_MODEL(ped_hash)
		while not STREAMING.HAS_MODEL_LOADED(ped_hash) do
			util.yield()
		end
	
		aab = v3()
        aab = ENTITY.GET_ENTITY_COORDS(V3, true)
	
		local ped = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)

		coords_ped = v3()
        coords_ped = ENTITY.GET_ENTITY_COORDS(V3, true)
        coords_ped.x = coords_ped.x + math.random(-2, 2)
        coords_ped.y = coords_ped.y + math.random(-2, 2)
        coords_ped.z = coords_ped.z

        ENTITY.SET_ENTITY_COORDS(ped, coords_ped.x, coords_ped.y, coords_ped.z, false, false, false, false)
		ENTITY.SET_ENTITY_VISIBLE(ped, false)

	end

--for oppressor blacklist
util.create_thread(function()
	while true do
		if oppressor_kick_players then
			local cur_players = players.list(target_self,target_friends,true)
			for k,v in pairs(cur_players) do
				local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(v)
				local vehicle = PED.GET_VEHICLE_PED_IS_IN(ped, false)
				if vehicle then
					local hash = util.joaat("oppressor2")
					if VEHICLE.IS_VEHICLE_MODEL(vehicle, hash) then
						addict.trigger_commands("vehkick" .. PLAYER.GET_PLAYER_NAME(v))
						if lock_vehicle then
							VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle, true)
						end
					end
				end
			end
		end
		util.yield()
	end
end)

--for lazer blacklist
util.create_thread(function()
	while true do
		if lazer_kick_players then
			local cur_players = players.list(target_self,target_friends,true)
			for k,v in pairs(cur_players) do
				local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(v)
				local vehicle = PED.GET_VEHICLE_PED_IS_IN(ped, false)
				if vehicle then
					local hash = util.joaat("lazer")
					if VEHICLE.IS_VEHICLE_MODEL(vehicle, hash) then
						addict.trigger_commands("vehkick" .. PLAYER.GET_PLAYER_NAME(v))
						if lock_vehicle then
							VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle, true)
						end
					end
				end
			end
		end
		util.yield()
	end
end)

--for kosatka blacklist
util.create_thread(function()
	while true do
		if kosatka_kick_players then
			local cur_players = players.list(target_self,target_friends,true)
			for k,v in pairs(cur_players) do
				local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(v)
				local vehicle = PED.GET_VEHICLE_PED_IS_IN(ped, false)
				if vehicle then
					local hash = util.joaat("kosatka")
					if VEHICLE.IS_VEHICLE_MODEL(vehicle, hash) then
						addict.trigger_commands("vehkick" .. PLAYER.GET_PLAYER_NAME(v))
						if lock_vehicle then
							VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle, true)
						end
					end
				end
			end
		end
		util.yield()
	end
end)

--for hydra blacklist
util.create_thread(function()
	while true do
		if hydra_kick_players then
			local cur_players = players.list(target_self,target_friends,true)
			for k,v in pairs(cur_players) do
				local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(v)
				local vehicle = PED.GET_VEHICLE_PED_IS_IN(ped, false)
				if vehicle then
					local hash = util.joaat("hydra")
					if VEHICLE.IS_VEHICLE_MODEL(vehicle, hash) then
						addict.trigger_commands("vehkick" .. PLAYER.GET_PLAYER_NAME(v))
						if lock_vehicle then
							VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle, true)
						end
					end
				end
			end
		end
		util.yield()
	end
end)

--for khanjali blacklist
util.create_thread(function()
	while true do
		if khanjali_kick_players then
			local cur_players = players.list(target_self,target_friends,true)
			for k,v in pairs(cur_players) do
				local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(v)
				local vehicle = PED.GET_VEHICLE_PED_IS_IN(ped, false)
				if vehicle then
					local hash = util.joaat("khanjali")
					if VEHICLE.IS_VEHICLE_MODEL(vehicle, hash) then
						addict.trigger_commands("vehkick" .. PLAYER.GET_PLAYER_NAME(v))
						if lock_vehicle then
							VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle, true)
						end
					end
				end
			end
		end
		util.yield()
	end
end)

function GetLocalPed()
    return PLAYER.PLAYER_PED_ID()
end

function RqModel(hash)
    STREAMING.REQUEST_MODEL(hash)
    local count = 0
    util.toast("Requesting model...")
    while not STREAMING.HAS_MODEL_LOADED(hash) and count < 100 do
        STREAMING.REQUEST_MODEL(hash)
        count = count + 1
        util.yield(10)
    end
    if not STREAMING.HAS_MODEL_LOADED(hash) then
        util.toast("Tried for 1 second, couldn't load this specified model!")
    end
end

function AddEntityToList(listName, handle, generatedCheck)
    if ((not G_GeneratedList) and generatedCheck) or (not generatedCheck) then
        G_GeneratedList = true
        lis = addict.list(Crashing, listName .. " Handle " .. handle, {}, "")
        addict.action(lis, "Delete", {"delcrashes"}, "", function()
            entities.delete_by_handle(handle)
            addict.delete(lis)
            G_GeneratedList = false
        end)
        addict.action(lis, "Teleport to entity", {"tptoentity"}, "", function()
            pos = ENTITY.GET_ENTITY_COORDS(handle)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(GetLocalPed(), pos.x, pos.y, pos.z + 1, false, false, false)
        end)
        addict.action(lis, "Drive Entity", {"driveentity"}, "", function()
            PED.SET_PED_INTO_VEHICLE(GetLocalPed(), handle, -1)
        end)
        addict.action(lis, "Teleport to you", {"tpentitytome"}, "", function()
            pos = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(handle, pos.x, pos.y, pos.z + 1, false, false, false)
        end)
    end
end

function get_control_request(ent) -- #testing -- new get control request, yield first then request, then return. previously requested then yielded then returned and didnt work?
	if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) then
		NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ent)
		local tick = 0
		while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) and tick <= 100 do
			tick = tick + 1
			util.yield()
			NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ent)
		end
	end
	if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) then
		util.toast("No Control of "..ent)
	end
	return NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent)
end

function get_random_ped()
    peds = entities.get_all_peds_as_handles()
    npcs = {}
    valid = 0
    for k,p in pairs(peds) do
        if p ~= nil and not is_ped_player(p) then
            table.insert(npcs, p)
            valid = valid + 1
        end
    end
    return npcs[math.random(valid)]
end

local function player_toggle_loop(root, pid, addict_name, command_names, help_text, callback)
    return addict.toggle_loop(root, addict_name, command_names, help_text, function()
        if not players.exists(pid) then util.stop_thread() end
        callback()
    end)
end

function wait_session_transition(yield_time)
    yield_time = yield_time or 1000

    while util.is_session_transition_active() do
        util.yield(yield_time)
    end
end

function for_table_do(table,with_access,func) -- <3 HoppaC4
	for i,ent in ipairs(table) do
		if with_access then
			if not RequestControlOfEnt(ent) then goto skip end
		end
		func(ent)
		::skip::
	end
end

function RequestControlOfEnt(entity)
	local tick = 0
	local tries = 0
	NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
	while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity) and tick <= 1000 do
		NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
		tick = tick + 1
		tries = tries + 1
		if tries == 50 then 
			util.yield()
			tries = 0
		end
	end
	return NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity)
end

-- Detach all other entities from an entity.
DetachAll = function(entity)
    local objects = entities.get_all_objects_as_handles()
    for _, object in pairs(objects) do
        if ENTITY.IS_ENTITY_ATTACHED_TO_ENTITY(object, entity) then
            RequestControlOfEnt(object, true)
            ENTITY.DETACH_ENTITY(object, false, false)
            util.yield()
            entities.delete_by_handle(object)
        end
    end
end

function is_player_active(player, isPlaying, inTransition)
    if player == -1 or
    not NETWORK.NETWORK_IS_PLAYER_ACTIVE(player) then
        return false
    end
    if isPlaying and not PLAYER.IS_PLAYER_PLAYING(player) then
        return false
    end
    return true
end

-- Helper: distance between two vectors
local function get_distance(a, b)
    return math.sqrt((a.x - b.x)^2 + (a.y - b.y)^2 + (a.z - b.z)^2)
end

local randomModels = {
    vehicles = {
        "adder", "zentorno", "t20", "buffalo", "sultan", "infernus", "banshee"
    },
    peds = {
        "a_m_m_business_01", "a_m_y_beach_01", "a_f_y_hipster_01", "a_m_y_skater_01", "a_f_m_bodybuild_01"
    },
    objects = {
        "prop_barrel_02a", "prop_beachball_02", "prop_bench_01a", "prop_burgerstand_01", "prop_cone_float_1"
    }
}

local function request_model(model)
    local hash = util.joaat(model)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        util.yield()
    end
    return hash
end

function spawn_random_entities(count)
    local playerPed = players.user_ped()
    local pos = ENTITY.GET_ENTITY_COORDS(playerPed, true)

    for i = 1, count do
        local spawnType = math.random(1, 3)
        local offset = {
            x = math.random(-10, 10),
            y = math.random(-10, 10),
            z = 0
        }

        local spawnPos = {
            x = pos.x + offset.x,
            y = pos.y + offset.y,
            z = pos.z + offset.z
        }

        if spawnType == 1 then
            -- Spawn Random Vehicle
            local model = randomModels.vehicles[math.random(#randomModels.vehicles)]
            local hash = request_model(model)
            VEHICLE.CREATE_VEHICLE(hash, spawnPos.x, spawnPos.y, spawnPos.z, 0.0, true, false, false)
        elseif spawnType == 2 then
            -- Spawn Random Ped
            local model = randomModels.peds[math.random(#randomModels.peds)]
            local hash = request_model(model)
            PED.CREATE_PED(26, hash, spawnPos.x, spawnPos.y, spawnPos.z, 0.0, true, false)
        elseif spawnType == 3 then
            -- Spawn Random Object
            local model = randomModels.objects[math.random(#randomModels.objects)]
            local hash = request_model(model)
            OBJECT.CREATE_OBJECT(hash, spawnPos.x, spawnPos.y, spawnPos.z, true, false, false)
        end

        util.yield(100) -- Slight delay between spawns
    end
end

-- Utility: Delete suspicious or invalid entity
function try_delete_entity(entity)
    if ENTITY.DOES_ENTITY_EXIST(entity) then
        if NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity) == false then
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
        end
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(entity, true, true)
        addict.trigger_commands("cleararea")
    end
end

towtruck_area_attach = function(pid)
 --   if pid == players.user() then return end

    while not STREAMING.HAS_MODEL_LOADED(2971866336) do
        STREAMING.REQUEST_MODEL(2971866336)
        util.yield()
    end
    local coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
    local vehicles = entities.get_all_vehicles_as_handles()
    towtruck = entities.create_vehicle(2971866336, coords, 0.0)
    for i, v in pairs(vehicles) do
        ENTITY.ATTACH_ENTITY_TO_ENTITY(v, towtruck, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
        ENTITY.SET_ENTITY_INVINCIBLE(v, true)
        util.yield()
    end
    util.yield(500)
    for i, v in pairs(vehicles) do
        entities.delete_by_handle(v)
        entities.delete_by_handle(towtruck)
        util.yield(3000)
        addict.trigger_commands("cleararea")
        util.yield()
    end
end

-- Common streetlight, traffic light, and pole model hashes (add more as needed)
local POLE_MODELS = {
    util.joaat("prop_streetlight_01"),
    util.joaat("prop_streetlight_01b"),
    util.joaat("prop_streetlight_02"),
    util.joaat("prop_streetlight_03"),
    util.joaat("prop_streetlight_03b"),
    util.joaat("prop_streetlight_04"),
    util.joaat("prop_streetlight_05"),
    util.joaat("prop_streetlight_06"),
    util.joaat("prop_traffic_01a"),
    util.joaat("prop_traffic_01b"),
    util.joaat("prop_traffic_01d"),
    util.joaat("prop_traffic_02a"),
    util.joaat("prop_traffic_02b"),
    util.joaat("prop_traffic_03b"),
    util.joaat("prop_traffic_lightset_01"),
    util.joaat("prop_traffic_lightset_01b"),
    util.joaat("prop_traffic_lightset_02"),
    util.joaat("prop_traffic_lightset_03"),
    util.joaat("prop_traffic_lightset_04"),
    util.joaat("prop_traffic_lightset_05"),
}

local RADIUS = 100.0

local function is_pole(ent)
    local model = ENTITY.GET_ENTITY_MODEL(ent)
    for _, pole_hash in ipairs(POLE_MODELS) do
        if model == pole_hash then return true end
    end
    return false
end

local function break_all_nearby_posts()
    local ped = players.user_ped()
    local pos = ENTITY.GET_ENTITY_COORDS(ped, true)
    local objects = entities.get_all_objects_as_handles()
    local count = 0
    for _, ent in ipairs(objects) do
        if not ENTITY.IS_ENTITY_A_PED(ent) then
            local entPos = ENTITY.GET_ENTITY_COORDS(ent, true)
            if v3.distance(pos, entPos) < RADIUS and is_pole(ent) then
                ENTITY.SET_ENTITY_HEALTH(ent, 0, 0)
                ENTITY.APPLY_FORCE_TO_ENTITY(ent, 1, 0, 0, -100.0, 0, 0, 0, 0, false, true, true, false, true)
                count = count + 1
                -- Spawns Towtruck
                while not STREAMING.HAS_MODEL_LOADED(2971866336) do
                    STREAMING.REQUEST_MODEL(2971866336)
                    util.yield()
                end
                local coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
                local vehicles = entities.get_all_vehicles_as_handles()
                towtruck = entities.create_vehicle(2971866336, coords, 0.0)
                PED.SET_PED_INTO_VEHICLE(players.user_ped(), towtruck, -1)
                ENTITY.ATTACH_ENTITY_TO_ENTITY(ent, towtruck, 0, pos.x, pos.y, pos.z, 0, 0, 0, false, false, false, false, 2, true)
                ENTITY.SET_ENTITY_INVINCIBLE(objects, true)
                ENTITY.ATTACH_ENTITY_TO_ENTITY(objects, towtruck, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                util.yield(3000)
                addict.trigger_commands("cleararea")
                util.yield()
                end
            end
        end
    util.toast("Broken poles: " .. count)
end

function Destruct()
    local coords = player_coords(pid)
    coords.x = coords.x
    coords.y = coords.y + -30
    coords.z = coords.z
    veh = entities.get_all_vehicles_as_handles()
for i, ent in pairs(veh) do
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ent)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(object1, coords.x, coords.y, coords.z, false, false, true)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
        NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(NETWORK.VEH_TO_NET(ent), true)
        NETWORK.SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER(NETWORK.VEH_TO_NET(ent), players.user(), true)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(ent, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
        ENTITY.SET_ENTITY_ROTATION(ent, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
        ENTITY.SET_ENTITY_VELOCITY(ent, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
    end
end

function upgrade_vehicle(player)
	local vehicle = get_player_vehicle(player,true)
        if vehicle then
            DECORATOR.DECOR_SET_INT(vehicle, "MPBitset", 0)
            VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
            for i = 0 ,50 do
                VEHICLE.SET_VEHICLE_MOD(vehicle, i, VEHICLE.GET_NUM_VEHICLE_MODS(vehicle, i) - 13, false)
            end	
            VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 80, 0, 255, chrome)
            VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle,80, 0, 255, chrome)
            VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(vehicle, 10)
            VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, 17, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, 18, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, 19, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, 20, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, 21, true)
            for i = 0 ,4 do
                if not VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(vehicle, i) then
                    VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(vehicle, i, true)
                end
            end
            VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(vehicle, 255, 0, 255)
            VEHICLE.SET_VEHICLE_WINDOW_TINT(vehicle, 1)
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "Addict")
	end
end

function Push_Player_Up(pid)
    local TargetPlayerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local Target = ENTITY.GET_ENTITY_COORDS(TargetPlayerPed, true)
    local hydra_req = util.joaat("freight")
    local cargo_req = util.joaat("metrotrain")
    for i = 1, 10 do
    util.request_model(hydra_req)
    util.request_model(cargo_req)
    local hydra = entities.create_vehicle(hydra_req, Target, 0.0)
    local cargoplane = entities.create_vehicle(cargo_req, Target, 0.0)
    ENTITY.SET_ENTITY_VISIBLE(hydra, false, 0)
    ENTITY.SET_ENTITY_VISIBLE(cargoplane, false, 0)
    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(hydra, true, true)
    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(cargoplane, true, true)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(cargoplane, Target.x + math.random(-3000, 3000), Target.y + math.random(-3000, 3000), Target.z + math.random(-3000, 3000))
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(hydra, Target.x + math.random(-3000, 3000), Target.y + math.random(-3000, 3000), Target.z + math.random(-3000, 3000))
    ENTITY.ATTACH_ENTITY_TO_ENTITY(cargoplane, hydra, -1, 0.0, 0.0, 20.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
    ENTITY.SET_ENTITY_ROTATION(cargoplane, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
    ENTITY.SET_ENTITY_ROTATION(hydra, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
    ENTITY.SET_ENTITY_VELOCITY(cargoplane, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
    ENTITY.SET_ENTITY_VELOCITY(hydra, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
    end
end

function offset_coords_forward(pos, heading, distance)
    newpos = pos
    heading = math.rad((heading - 180) * -1)
    newpos.x = pos.x + (math.sin(heading) * -distance)
    newpos.y = pos.y + (math.cos(heading) * -distance)
    newpos.z = pos.z
    return newpos
end
  
function toFloat(num)
    return (num / 10) * 10
end
 
--[[
─────────────────────────────────────────────────────────────
─██████████████─██████████████─██████─────────██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─
─██░░██████████─██░░██████████─██░░██─────────██░░██████████─
─██░░██─────────██░░██─────────██░░██─────────██░░██─────────
─██░░██████████─██░░██████████─██░░██─────────██░░██████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─
─██████████░░██─██░░██████████─██░░██─────────██░░██████████─
─────────██░░██─██░░██─────────██░░██─────────██░░██─────────
─██████████░░██─██░░██████████─██░░██████████─██░░██─────────
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██─────────
─██████████████─██████████████─██████████████─██████─────────
─────────────────────────────────────────────────────────────
]]

Self_addict = addict.list(addict.my_root(), "Self", {}, "", function() end)

addict.divider(Self_addict, "Self")


    local active_rideable_animal = 0

    -- rideable animal tick handler
    util.create_tick_handler(function()
        if active_rideable_animal ~= 0 then 
            -- dismounting 
            if PAD.IS_CONTROL_JUST_PRESSED(23, 23) then 
                ENTITY.DETACH_ENTITY(players.user_ped())
                entities.delete_by_handle(active_rideable_animal)
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                active_rideable_animal = 0
            end

            -- movement
            if not ENTITY.IS_ENTITY_IN_AIR(active_rideable_animal) then 
                if PAD.IS_CONTROL_PRESSED(32, 32) then 
                    local side_move = PAD.GET_CONTROL_NORMAL(146, 146)
                    local fwd = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(active_rideable_animal, side_move*10.0, 8.0, 0.0)
                    TASK.TASK_LOOK_AT_COORD(active_rideable_animal, fwd.x, fwd.y, fwd.z, 0, 0, 2)
                    TASK.TASK_GO_STRAIGHT_TO_COORD(active_rideable_animal, fwd.x, fwd.y, fwd.z, 20.0, -1, ENTITY.GET_ENTITY_HEADING(active_rideable_animal), 0.5)
                end
                if PAD.IS_CONTROL_JUST_PRESSED(76, 76) then 
                    --CLEAR_PED_TASKS(active_rideable_animal)
                    local w = {}
                    w.x, w.y, w.z, _ = players.get_waypoint(players.user())
                    if w.x == 0.0 and w.y == 0.0 then 
                        notify(translations.no_waypoint_set)
                    else
                        TASK.TASK_FOLLOW_NAV_MESH_TO_COORD(active_rideable_animal, w.x, w.y, w.z, 1.0, -1, 100, 0, 0)
                    end
                end
            end

        end
    end)


    
local animals_ride_menu = addict.list(Self_addict, "Ride Animals", {}, "Ride and control animals.")

local ranimal_hashes = {util.joaat("a_c_deer"), util.joaat("a_c_boar"), util.joaat("a_c_cow")}

local animal_names = {"Deer", "Boar", "Cow"}

addict.list_action(animals_ride_menu, "Ride Animals", {"spawnranimal"}, "", animal_names, function(index, value, click_type)
    if active_rideable_animal ~= 0 then 
        util.toast("Already riding animal")
        return 
    end
    local hash = ranimal_hashes[index]
    util.request_model(hash, 2000)
    local animal = entities.create_ped(8, hash, players.get_position(players.user()), ENTITY.GET_ENTITY_HEADING(players.user_ped()))
    ENTITY.SET_ENTITY_INVINCIBLE(animal, true)
    ENTITY.FREEZE_ENTITY_POSITION(animal, true)
    ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
    active_rideable_animal = animal
    local m_z_off = 0 
    local f_z_off = 0
    switch index do 
        case 1: 
            m_z_off = 0.3 
            f_z_off = 0.15
            break
        case 2:
            m_z_off = 0.4
            f_z_off = 0.3
            break
        case 3:
            m_z_off = 0.2 
            f_z_off = 0.1 
            break
    end
    if ENTITY.GET_ENTITY_MODEL(players.user_ped()) == util.joaat("mp_f_freemode_01") then 
        z_off = f_z_off
    else
        z_off = m_z_off
    end
    ENTITY.ATTACH_ENTITY_TO_ENTITY(players.user_ped(), animal, PED.GET_PED_BONE_INDEX(animal, 24816), -0.3, 0.0, z_off, 0.0, 0.0, 90.0, false, false, false, true, 2, true, 0)
    request_anim_dict("rcmjosh2")
    TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmjosh2", "josh_sitting_loop", 8.0, 1, -1, 2, 1.0, false, false, false)
    util.toast("Use your regular player movement controls to move the animal.\nPress your vehicle dismount key to dismount.\nPress your jump key to command the animal to stop.")
    ENTITY.FREEZE_ENTITY_POSITION(animal, false)
    ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
end)

local ride_menu = addict.list(animals_ride_menu, "Pig Rider (Modded Speed Inputs)", {}, "Ride and control a pig like a mount.")

local pig_model = util.joaat("a_c_pig")
local pig_handle = nil
local riding = false
local speed = 2.0 -- Default pig speed

-- Load model safely
local function load_model(hash)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        util.yield()
    end
end

-- Cleanup pig
local function cleanup_pig()
    if pig_handle and ENTITY.DOES_ENTITY_EXIST(pig_handle) then
        entities.delete_by_handle(pig_handle)
        pig_handle = nil
    end
end

-- Control logic
local function control_pig()
    while riding do
        if not ENTITY.DOES_ENTITY_EXIST(pig_handle) then break end

        -- Rotation
        local heading = ENTITY.GET_ENTITY_HEADING(pig_handle)

        if PAD.IS_CONTROL_PRESSED(0, 34) then -- A / Left
            heading = heading + 3
        elseif PAD.IS_CONTROL_PRESSED(0, 35) then -- D / Right
            heading = heading - 3
        end

        ENTITY.SET_ENTITY_HEADING(pig_handle, heading)

        -- Movement
        if PAD.IS_CONTROL_PRESSED(0, 32) then -- W / Forward
            local forward_vector = ENTITY.GET_ENTITY_FORWARD_VECTOR(pig_handle)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(
                pig_handle, 1,
                forward_vector.x * speed,
                forward_vector.y * speed,
                0.0,
                true, false, true, false
            )
        elseif PAD.IS_CONTROL_PRESSED(0, 33) then -- S / Backward
            local forward_vector = ENTITY.GET_ENTITY_FORWARD_VECTOR(pig_handle)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(
                pig_handle, 1,
                -forward_vector.x * (speed * 0.5),
                -forward_vector.y * (speed * 0.5),
                0.0,
                true, false, true, false
            )
        end

        util.yield()
    end
end

-- Ride toggle
addict.toggle(ride_menu, "Ride a Pig", {"ridepig"}, "Spawn and control a pig mount.", function(on)
    local player_ped = PLAYER.PLAYER_PED_ID()

    if on then
        load_model(pig_model)
        local coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)

        pig_handle = entities.create_ped(28, pig_model, coords, 0.0)
        ENTITY.FREEZE_ENTITY_POSITION(pig_handle, false)
        ENTITY.SET_ENTITY_INVINCIBLE(pig_handle, true)
        ENTITY.SET_ENTITY_VISIBLE(pig_handle, true)
        ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(pig_handle, player_ped, true)
        -- Position offset
        ENTITY.ATTACH_ENTITY_TO_ENTITY(
        player_ped, pig_handle, 90,
        0.0, 0.0, 0.5,        
        0.0, 0.0, 0.0, -- Rotation offset (upright & facing forward)
        false, true, false, false, 2, true)

        -- Request and play the sitting animation
        local anim_dict = "anim@scripted@charlie_missions@mission_5@ig2_avi_sitting@"
        local anim_name = "s_react_left"
        -- Load the animation dictionary
        if not STREAMING.HAS_ANIM_DICT_LOADED(anim_dict) then
            STREAMING.REQUEST_ANIM_DICT(anim_dict)
            while not STREAMING.HAS_ANIM_DICT_LOADED(anim_dict) do
                util.yield()
            end
        end
        -- Play the animation in a loop
        TASK.TASK_PLAY_ANIM(
            player_ped,
            anim_dict,
            anim_name,
            8.0,      -- blend in speed
            -8.0,     -- blend out speed
            -1,       -- duration (loop)
            1,        -- flag: repeat
            0.0,      -- playback rate
            false,
            false,
            false)

        riding = true
        util.toast("You are now riding and controlling a pig!")
        control_pig()
    else
        addict.trigger_commands("scenflex")
        util.yield(1)
        addict.trigger_commands("cancelanim")
        ENTITY.DETACH_ENTITY(PLAYER.PLAYER_PED_ID(), true, true)
        cleanup_pig()
        riding = false
        util.toast("Dismounted from pig.")
    end
end)

-- Speed slider
addict.slider(ride_menu, "Pig Speed", {"pigspeed"}, "How fast your pig runs", 1, 10, 2, 1, function(val)
    speed = val
end)

-- Cleanup on stop
util.on_stop(function()
    cleanup_pig()
end)

------------------------------------------------------------------------------------------------------

local ride_menu = addict.list(animals_ride_menu, "Cow Rider (Modded Speed Inputs)", {}, "Ride and control a cow like a mount.")

local cow_model = util.joaat("A_C_Cow")
local cow_handle = nil
local riding = false
local speed = 2.0 -- Default cow speed

-- Load model safely
local function load_model(hash)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        util.yield()
    end
end

-- Cleanup cow
local function cleanup_cow()
    if cow_handle and ENTITY.DOES_ENTITY_EXIST(cow_handle) then
        entities.delete_by_handle(cow_handle)
        cow_handle = nil
    end
end

-- Control logic
local function control_cow()
    while riding do
        if not ENTITY.DOES_ENTITY_EXIST(cow_handle) then break end

        -- Rotation
        local heading = ENTITY.GET_ENTITY_HEADING(cow_handle)

        if PAD.IS_CONTROL_PRESSED(0, 34) then -- A / Left
            heading = heading + 3
        elseif PAD.IS_CONTROL_PRESSED(0, 35) then -- D / Right
            heading = heading - 3
        end

        ENTITY.SET_ENTITY_HEADING(cow_handle, heading)

        -- Movement
        if PAD.IS_CONTROL_PRESSED(0, 32) then -- W / Forward
            local forward_vector = ENTITY.GET_ENTITY_FORWARD_VECTOR(cow_handle)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(
                cow_handle, 1,
                forward_vector.x * speed,
                forward_vector.y * speed,
                0.0,
                true, false, true, false
            )
        elseif PAD.IS_CONTROL_PRESSED(0, 33) then -- S / Backward
            local forward_vector = ENTITY.GET_ENTITY_FORWARD_VECTOR(cow_handle)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(
                cow_handle, 1,
                -forward_vector.x * (speed * 0.5),
                -forward_vector.y * (speed * 0.5),
                0.0,
                true, false, true, false
            )
        end

        util.yield()
    end
end

-- Ride toggle
addict.toggle(ride_menu, "Ride a cow", {"ridecow"}, "Spawn and control a cow mount.", function(on)
    local player_ped = PLAYER.PLAYER_PED_ID()

    if on then
        load_model(cow_model)
        local coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)

        cow_handle = entities.create_ped(28, cow_model, coords, 0.0)
        ENTITY.FREEZE_ENTITY_POSITION(cow_handle, false)
        ENTITY.SET_ENTITY_INVINCIBLE(cow_handle, true)
        ENTITY.SET_ENTITY_VISIBLE(cow_handle, true)
        ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(cow_handle, player_ped, true)
        -- Position offset
        ENTITY.ATTACH_ENTITY_TO_ENTITY(
        player_ped, cow_handle, 90,
        0.0, 0.0, 0.5,        
        0.0, 0.0, 0.0, -- Rotation offset (upright & facing forward)
        false, true, false, false, 2, true)

        -- Request and play the sitting animation
        local anim_dict = "anim@scripted@charlie_missions@mission_5@ig2_avi_sitting@"
        local anim_name = "s_react_left"
        -- Load the animation dictionary
        if not STREAMING.HAS_ANIM_DICT_LOADED(anim_dict) then
            STREAMING.REQUEST_ANIM_DICT(anim_dict)
            while not STREAMING.HAS_ANIM_DICT_LOADED(anim_dict) do
                util.yield()
            end
        end
        -- Play the animation in a loop
        TASK.TASK_PLAY_ANIM(
            player_ped,
            anim_dict,
            anim_name,
            8.0,      -- blend in speed
            -8.0,     -- blend out speed
            -1,       -- duration (loop)
            1,        -- flag: repeat
            0.0,      -- playback rate
            false,
            false,
            false)

        riding = true
        util.toast("You are now riding and controlling a cow!")
        control_cow()
    else
        addict.trigger_commands("scenflex")
        util.yield(1)
        addict.trigger_commands("cancelanim")
        ENTITY.DETACH_ENTITY(PLAYER.PLAYER_PED_ID(), true, true)
        cleanup_cow()
        riding = false
        util.toast("Dismounted from cow.")
    end
end)

-- Speed slider
addict.slider(ride_menu, "Cow Speed", {"cowspeed"}, "How fast your cow runs", 1, 10, 2, 1, function(val)
    speed = val
end)

-- Cleanup on stop
util.on_stop(function()
    cleanup_cow()
end)

-----------------------------------------------------------------------------------------------------------------------------------
    local becop = addict.list(Self_addict, "Be A Cop", {}, "")

        addict.toggle(becop, "Drive Cop Heli", {"copheli"}, "Plus bodygaurds.", function(on_toggle)
            if on_toggle then
                addict.trigger_commands("polmav")
                addict.trigger_commands("bodyguardmodel S_M_Y_Swat_01")
                addict.trigger_commands("bodyguardcount 3")
                addict.trigger_commands("bodyguardprimary smg")
                addict.trigger_commands("bodyguardsecondary smg")
                addict.trigger_commands("spawnbodyguards")
                addict.trigger_commands("smyswat01")
                addict.trigger_commands("bodyguardimmortality")
                addict.trigger_commands("undead")
                addict.trigger_commands("otr")
                util.yield(3000)
                util.toast("Make way for the heli.")
                util.yield(3000)
                local vehicleHash = util.joaat("polmav")
                request_model(vehicleHash)
                local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
                copheli = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
                VEHICLE.SET_VEHICLE_ENGINE_ON(copheli, true, true, true)
                ENTITY.SET_ENTITY_INVINCIBLE(copheli, true)
                VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(copheli, 0.0)
                local id = get_closest_vehicle(entity)
                local playerpos = ENTITY.GET_ENTITY_COORDS(id)
                playerpos.z = playerpos.z + 3
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(copheli, pos.x, pos.y, pos.z, false, false, true)
                PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), copheli, -1)
                util.yield(1500)
                addict.trigger_commands("livery -1")
            else
                local Imortality_BodyGuards = addict.ref_by_path("Self>Bodyguards>Immortality")
                addict.trigger_command(Imortality_BodyGuards)
                addict.trigger_commands("delbodyguards")
                addict.trigger_commands("deletevehicle")
                addict.trigger_commands("mpfemale")
                addict.trigger_commands("undead")
                addict.trigger_commands("otr")
                util.toast("Change you're outfit to get clothes normal again.")
            end
        end)


        addict.toggle(becop, "Drive Cop Car", {"copcar"}, "Plus a bodygaurd.", function(on_toggle)
            if on_toggle then
                addict.trigger_commands("police3")
                addict.trigger_commands("bodyguardmodel S_M_Y_Cop_01")
                addict.trigger_commands("bodyguardcount 1")
                addict.trigger_commands("bodyguardprimary pistol")
                addict.trigger_commands("bodyguardsecondary pistol")
                addict.trigger_commands("spawnbodyguards")
                addict.trigger_commands("SMYCop01")
                addict.trigger_commands("bodyguardimmortality")
                addict.trigger_commands("undead")
                addict.trigger_commands("otr")
                util.yield(1000)
                local vehicleHash = util.joaat("police3")
                request_model(vehicleHash)
                local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
                copheli = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
                VEHICLE.SET_VEHICLE_ENGINE_ON(copheli, true, true, true)
                ENTITY.SET_ENTITY_INVINCIBLE(copheli, true)
                VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(copheli, 0.0)
                VEHICLE.SET_VEHICLE_MOD_KIT(copheli, -1)
                local id = get_closest_vehicle(entity)
                local playerpos = ENTITY.GET_ENTITY_COORDS(id)
                playerpos.z = playerpos.z + 3
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(copheli, pos.x, pos.y, pos.z, false, false, true)
                PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), copheli, -1)
            else
                local Imortality_BodyGuards = addict.ref_by_path("Self>Bodyguards>Immortality")
                addict.trigger_command(Imortality_BodyGuards)
                addict.trigger_commands("delbodyguards")
                addict.trigger_commands("deletevehicle")
                addict.trigger_commands("mpfemale")
                addict.trigger_commands("undead")
                addict.trigger_commands("otr")
                util.toast("Change you're outfit to get clothes normal again.")
            end
        end)

local graphics_menu = addict.list(Self_addict, "Graphics Mod", {}, "")
 
    god_graphics_level = 1.25
    addict.slider_float(graphics_menu, "God Graphics Level", {"godgraphlvl"}, "", 1, 1000, 125, 1, function(s)
        god_graphics_level = s * 0.001
    end)


    addict.action(graphics_menu, "Apply God Graphics", {"godgraphon"}, "", function(click_type)
        addict.trigger_commands("shader intnofog")
        addict.trigger_commands("lodscale " .. god_graphics_level)
    end)

    addict.action(graphics_menu, "Unapply God Graphics", {"godgraphoff"}, "", function(click_type)
        addict.trigger_commands("shader off")
        addict.trigger_commands("lodscale 1.00")
    end)


    local auto_accepts = addict.list(Self_addict, "Auto Accept Joins", {}, "")

    addict.toggle_loop(auto_accepts, "Accept Joins & Transaction Errors!", {"accepterrors"}, "Automatically accept join screens and transaction errors.", function()
        local mess_hash = HUD.GET_WARNING_SCREEN_MESSAGE_HASH()
        if mess_hash == -896436592 then
            util.toast("This player left the session.")
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
        elseif mess_hash == 1575023314 then
            util.toast("Session timeout.")
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
        elseif mess_hash == 1446064540 then
            util.toast("You are already in the session.")
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1) 
        elseif mess_hash == -991495373 or mess_hash == -587688989 or mess_hash == 15890625 or mess_hash == 99184332 or mess_hash == 1246147334 then
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
        elseif mess_hash ~= 0 then
            util.toast(mess_hash, TOAST_CONSOLE)
        end
        util.yield()
    end)

    addict.toggle_loop(auto_accepts, "Auto Enter Key", {"autoenter"}, "Automatically hits enter key.", function()
        HUD.GET_WARNING_SCREEN_MESSAGE_HASH()
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1.0)
        util.yield(100)
    end)
-----------------------------------------------------------------------------------------------------------------------------------------

local entity_held = 0
local are_hands_up = false

-- Add this helper function at the top of your script
function get_closest_vehicle(coords)
    local vehicles = entities.get_all_vehicles_as_handles()
    local closestVeh = nil
    local closestDist = math.huge
    for _, veh in pairs(vehicles) do
        local veh_coords = ENTITY.GET_ENTITY_COORDS(veh)
        local dist = SYSTEM.VDIST(coords.x, coords.y, coords.z, veh_coords.x, veh_coords.y, veh_coords.z)
        if dist < closestDist then
            closestVeh = veh
            closestDist = dist
        end
    end
    return closestVeh, closestDist
end


addict.toggle_loop(Self_addict, "Throw Cars", {"throwcars"}, "Hold E or LB to use.", function(on)
    local veh = 0
    if PAD.IS_CONTROL_JUST_RELEASED(38, 38) and not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
        if entity_held == 0 then
            if not are_hands_up then 
                local veh, dist = get_closest_vehicle(ENTITY.GET_ENTITY_COORDS(players.user_ped()))
                if veh ~= nil and dist <= 5 then 
                    request_anim_dict("missminuteman_1ig_2")
                    TASK.TASK_PLAY_ANIM(players.user_ped(), "missminuteman_1ig_2", "handsup_enter", 8.0, 0.0, -1, 50, 0, false, false, false)
                    util.yield(500)
                    are_hands_up = true
                    ENTITY.SET_ENTITY_ALPHA(veh, 100)
                    ENTITY.SET_ENTITY_HEADING(veh, ENTITY.GET_ENTITY_HEADING(players.user_ped()))
                    ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
                    request_control_of_entity_once(veh)
                    ENTITY.ATTACH_ENTITY_TO_ENTITY(
                        veh, players.user_ped(), 0,
                        0, 0, get_model_size(ENTITY.GET_ENTITY_MODEL(veh)).z / 2,
                        180, 180, -180,
                        true, false, true, false, 0, true, 0
                    )
                    entity_held = veh
                else
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                    are_hands_up = false
                end
            else
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                are_hands_up = false
            end
        else
            if ENTITY.IS_ENTITY_A_VEHICLE(entity_held) then
                ENTITY.DETACH_ENTITY(entity_held)
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(entity_held, 100.0)
                VEHICLE.SET_VEHICLE_OUT_OF_CONTROL(entity_held, true, true)
                ENTITY.SET_ENTITY_ALPHA(entity_held, 255)
                ENTITY.SET_ENTITY_INVINCIBLE(entity_held, false)
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
                ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(entity_held, players.user_ped(), false)
                request_anim_dict("melee@unarmed@streamed_core")
                TASK.TASK_PLAY_ANIM(players.user_ped(), "melee@unarmed@streamed_core", "heavy_punch_a", 8.0, 8.0, -1, 0, 0.3, false, false, false)
                util.yield(500)
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
                entity_held = 0
                are_hands_up = false
            end
        end
    end
end)

local ped_held = 0
addict.toggle_loop(Self_addict, "Throw Peds", {"throwpeds"}, "", function(on)
    if PAD.IS_CONTROL_JUST_RELEASED(38, 38) and not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
        if entity_held == 0 then
            if not are_hands_up then 
                local closest = get_closest_ped_new(ENTITY.GET_ENTITY_COORDS(players.user_ped()))
                if closest ~= nil then
                    local ped = closest[1]
                    if ped ~= nil then
                        local dist = closest[2]
                        if dist <= 5 then 
                            request_anim_dict("missminuteman_1ig_2")
                            TASK.TASK_PLAY_ANIM(players.user_ped(), "missminuteman_1ig_2", "handsup_enter", 8.0, 0.0, -1, 50, 0, false, false, false)
                            util.yield(500)
                            are_hands_up = true
                            ENTITY.SET_ENTITY_ALPHA(ped, 100)
                            ENTITY.SET_ENTITY_HEADING(ped, ENTITY.GET_ENTITY_HEADING(players.user_ped()))
                            request_control_of_entity_once(ped)
                            ENTITY.ATTACH_ENTITY_TO_ENTITY(ped, players.user_ped(), 0, 0, 0, 1.3, 180, 180, -180, true, false, true, true, 0, true, 0)
                            entity_held = ped
                        end 
                    end
                end
            else
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                are_hands_up = false
            end
        else
            if ENTITY.IS_ENTITY_A_PED(entity_held) then
                ENTITY.DETACH_ENTITY(entity_held)
                ENTITY.SET_ENTITY_ALPHA(entity_held, 255)
                PED.SET_PED_TO_RAGDOLL(entity_held, 10, 10, 0, false, false, false)
                --SET_ENTITY_VELOCITY(entity_held, 0, 100, 0)
                ENTITY.SET_ENTITY_MAX_SPEED(entity_held, 100.0)
                ENTITY.APPLY_FORCE_TO_ENTITY(entity_held, 1, 0, 100, 0, 0, 0, 0, 0, true, false, true, false, false)
                AUDIO.PLAY_PAIN(entity_held, 7, 0, 0)
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
                ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(entity_held, players.user_ped(), false)
                request_anim_dict("melee@unarmed@streamed_core")
                TASK.TASK_PLAY_ANIM(players.user_ped(), "melee@unarmed@streamed_core", "heavy_punch_a", 8.0, 8.0, -1, 0, 0.3, false, false, false)
                util.yield(500)
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
                entity_held = 0
                are_hands_up = false
            end
            -- toss
        end
    end
end)
-------------------------------------------------------------------------------------------------------------------------------------------


    addict.toggle_loop(Self_addict, "Fast Respawn", {"fastrespawn"}, "", function()
        local gwobaw = memory.script_global(2672524 + 1685 + 756) -- Global_2672524.f_1685.f_756
        if PED.IS_PED_DEAD_OR_DYING(players.user_ped()) then
            GRAPHICS.ANIMPOSTFX_STOP_ALL()
            memory.write_int(gwobaw, memory.read_int(gwobaw) | 1 << 1)
        end
    end,
        function()
        local gwobaw = memory.script_global(2672524 + 1685 + 756)
        memory.write_int(gwobaw, memory.read_int(gwobaw) &~ (1 << 1)) 
    end)
    
    addict.toggle_loop(Self_addict, "Fast Roll", {"fastroll"}, "", function()
        STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 200, true)
    end)

    addict.toggle(Self_addict, "Quiet footsteps", {"quietsteps"}, "Disables the sound of your footsteps.", function(toggle)
        AUDIO.SET_PED_FOOTSTEPS_EVENTS_ENABLED(players.user_ped(), not toggle)
    end)
    

    local max_health
    undead_otr = addict.toggle(Self_addict, "Undead OTR", {"undead"}, "Turn you off the radar without notifying other players.\nNote: Trigger Modded Health detection.", function(on_toggle)
        if on_toggle then
            max_health = ENTITY.GET_ENTITY_MAX_HEALTH(players.user_ped())
            while addict.get_state(undead_otr) == "On" do
                if ENTITY.GET_ENTITY_MAX_HEALTH(players.user_ped()) ~= 0 then
                    ENTITY.SET_ENTITY_MAX_HEALTH(players.user_ped(),0)
                end
                util.yield()
            end
        else
            ENTITY.SET_ENTITY_MAX_HEALTH(players.user_ped(),max_health)
        end
    end)

    
    addict.toggle_loop(Self_addict, "Always Unarmed", {"alwaysunarmed"}, "If your player is frozen on unarmed toggle this off and on to fix without suicide.", function(on_loop)
        local player_ped = PLAYER.PLAYER_PED_ID()    
        WEAPON.GIVE_WEAPON_TO_PED(player_ped, util.joaat('WEAPON_COUGAR'), 1, true, true)
    end)


    addict.toggle(Self_addict, "Autoload Weapons", {"autoloadweapons"}, "Autoload all the weapons everytime you join a new session.", function(state)
        if state then
            players.on_join(function(player_id)
                local my_player_id <const> = players.user()

                if player_id == my_player_id then
                    local all_weapons_command_ref <const> = addict.ref_by_path("Self>Weapons>Get Weapons>All Weapons")

                    wait_session_transition()
                    addict.trigger_command(all_weapons_command_ref)
                    --util.toast("Weapons loaded successfully. :)")
                end
            end)
        end
    end)

    addict.toggle_loop(Self_addict, "Front Flip", {"frontflip"}, "WARNING! Do not click change outfit. Do a front flip.", function(on)
        local hash = util.joaat("prop_ecola_can")
        request_model(hash)
        local prop = entities.create_object(hash, players.get_position(players.user()))
        ENTITY.FREEZE_ENTITY_POSITION(prop)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(players.user_ped(), prop, 0, 0, 0, 0, 0, 0, 0, true, false, false, false, 0, true)
        local hdg = CAM.GET_GAMEPLAY_CAM_ROT(0).z
        ENTITY.SET_ENTITY_ROTATION(prop, 0, 0, hdg, 1)
        for i=1, -360, -8 do
            ENTITY.SET_ENTITY_ROTATION(prop, i, 0, hdg, 1)
            util.yield()
        end
        ENTITY.DETACH_ENTITY(players.user_ped())
        entities.delete_by_handle(prop)
        util.yield(2000)
    end)

        addict.toggle(Self_addict, "LS Mechanic", {"spawnlsman"}, "Activates Mechanic.", function(on)
        if on then
            addict.trigger_commands("smmautoshop01")
            addict.trigger_commands("undead")
            addict.trigger_commands("otr")
            util.toast("Mechanic On") 
        else
            addict.trigger_commands("mpfemale")
            addict.trigger_commands("undead")
            addict.trigger_commands("otr")
            util.toast("Reset to deafult. Change you're outfit to get clothes normal again.")
            end 
        end)


    addict.toggle(Self_addict, "Furry Mode", {"spawnfurry"}, "Activates Furry.", function(on)
        if on then
            addict.trigger_commands("IGFurry")
            addict.trigger_commands("walkstyle mop")
            util.toast("Furry On") 
        else
            addict.trigger_commands("mpfemale")
            addict.trigger_commands("walkstyle poshfemale")
            util.toast("Reset to deafult. Change you're outfit to get clothes normal again.")
            end 
        end)

    addict.toggle(Self_addict, "Rabbit Mode", {"spawnrabbit"}, "Activates Rabbit.", function(on)
        if on then
            addict.trigger_commands("alwaysunarmed")
            addict.trigger_commands("ACRabbit02")
            addict.trigger_commands("walkstyle mop")
            util.toast("Rabbit Mode On") 
        else
            addict.trigger_commands("alwaysunarmed")
            addict.trigger_commands("mpfemale")
            addict.trigger_commands("walkstyle poshfemale")
            util.toast("Reset to deafult. Change you're outfit to get clothes normal again.")
            end 
        end)

    addict.toggle(Self_addict, "Yule Monster Mode", {"spawnyulemonster"}, "Activates Yule Monster, then to Candy's outfit.", function(on)
        if on then
            addict.trigger_commands("UMMYuleMonster")
            addict.trigger_commands("walkstyle mop")
            util.toast("Yule Monster Mode On") 
        else
            addict.trigger_commands("mpfemale")
            addict.trigger_commands("walkstyle poshfemale")
            util.toast("Reset to deafult. Change you're outfit to get clothes normal again.")
            end 
        end)

    addict.toggle(Self_addict, "Hulk Mode", {"hulkmode"}, "Makes you jump high and very strong", function(toggle)
        if toggle then
            addict.trigger_commands("damagemultiplier 10000")
            addict.trigger_commands("superjump")
            util.yield(500)
            util.toast("Hulk Mode On")
        else
            addict.trigger_commands("damagemultiplier 1.01")
            addict.trigger_commands("damagemultiplier 1")
            addict.trigger_commands("superjump")
            util.yield(500)
            util.toast("Hulk Mode Off")
        end 
    end)

    addict.toggle_loop(Self_addict, "Clear All Notifications", {"clearnotifs"}, "", function()
        Clear_Stand_Notifs = addict.ref_by_path("Stand>Clear Notifications")
        Clear_Minimap_Notifs = addict.ref_by_path("Game>Remove Notifications Above Minimap")
        addict.trigger_command(Clear_Stand_Notifs)
        addict.trigger_command(Clear_Minimap_Notifs)
        util.yield(1000)
    end)

    
    local toggle_ghost = false

    -- Local-only Ghost Mode Visuals
    addict.toggle(Self_addict, "Local Ghost Mode", {"localghost"}, "You look ghosted but are still visible to others", function(on)
        toggle_ghost = on
        local ped = PLAYER.PLAYER_PED_ID()
        if on then
            ENTITY.SET_ENTITY_ALPHA(ped, 150, false) -- semi-transparent locally
        else
            ENTITY.SET_ENTITY_ALPHA(ped, 255, false)
        end
    end)

---------------------------------------------------------------------------------------------------------------------------------------
--[[
──────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──██████─██████████████─██████──██████─██████████─██████████████─██████─────────██████████████─
─██░░██──██░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─
─██░░██──██░░██─██░░██████████─██░░██──██░░██─████░░████─██░░██████████─██░░██─────────██░░██████████─
─██░░██──██░░██─██░░██─────────██░░██──██░░██───██░░██───██░░██─────────██░░██─────────██░░██─────────
─██░░██──██░░██─██░░██████████─██░░██████░░██───██░░██───██░░██─────────██░░██─────────██░░██████████─
─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██───██░░██───██░░██─────────██░░██─────────██░░░░░░░░░░██─
─██░░██──██░░██─██░░██████████─██░░██████░░██───██░░██───██░░██─────────██░░██─────────██░░██████████─
─██░░░░██░░░░██─██░░██─────────██░░██──██░░██───██░░██───██░░██─────────██░░██─────────██░░██─────────
─████░░░░░░████─██░░██████████─██░░██──██░░██─████░░████─██░░██████████─██░░██████████─██░░██████████─
───████░░████───██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─────██████─────██████████████─██████──██████─██████████─██████████████─██████████████─██████████████─
──────────────────────────────────────────────────────────────────────────────────────────────────────
]]

    Vehicle_1 = addict.list(addict.my_root(), "Vehicle", {}, "", function() end)

    addict.divider(Vehicle_1, "Vehicle")

    
    addict.toggle_loop(Vehicle_1,"All Vehicles Rainbow", {"rainbowvehicles"}, "Turns all vehicles rainbow and sets plates to 'Addict'.", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
            VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(veh, math.random(0, 255), math.random(0, 255), math.random(0, 255), chrome)
            VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(veh, math.random(0, 255), math.random(0, 255), math.random(0, 255), chrome)
            VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(veh, math.random(0, 255), math.random(0, 255), math.random(0, 255))
            DECORATOR.DECOR_SET_INT(vehicle, "MPBitset", math.random(0, 50))
            VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, math.random(17, 22), true)
            VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, math.random(0, 49))
            VEHICLE.SET_VEHICLE_WINDOW_TINT(veh, math.random(0, 6))
            VEHICLE.SET_VEHICLE_WHEEL_TYPE(veh, math.random(0, 5))
            VEHICLE.SET_VEHICLE_MOD(vehicle, math.random(0, 49))
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(veh, "Addict")
        end
    end)
     
    addict.toggle_loop(Vehicle_1,"All Vehicles Pink", {"pinkvehicles"}, "Turns all vehicles pink and sets plates to 'Addict'.", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(veh, 255, 0, 255, chrome)
            VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(veh,255, 0, 255, chrome)
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(veh, "Addict")
        end
    end)

    addict.toggle_loop(Vehicle_1,"Spinbot Nearby Vehicles", {"glitchall"}, "", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
                ENTITY.APPLY_FORCE_TO_ENTITY(veh, 5, 0, 0, 150.0, 0, 0, 0, 0, true, false, true, false, true)
                cam_pos = CAM.GET_GAMEPLAY_CAM_ROT(0)
                cam_pos.x = cam_pos.x + math.random(-20,20)
                cam_pos.y = cam_pos.y + math.random(-20,20)
                cam_pos.z = cam_pos.z + math.random(-20,20)
                ENTITY.SET_ENTITY_ROTATION(veh, cam_pos.x, cam_pos.y, cam_pos.z, 1, true);
        end
    end)
    
    addict.toggle_loop(Vehicle_1, "360 Self Vehicle", {"spinbotself"}, "", function()
        local vehicle = PED.GET_VEHICLE_PED_IS_USING(players.user_ped())
        local velocity = ENTITY.GET_ENTITY_VELOCITY(vehicle)
        local height = ENTITY.GET_ENTITY_HEIGHT_ABOVE_GROUND(vehicle)
        if vehicle ~= 0 and not PED.IS_PED_DEAD_OR_DYING(players.user_ped()) and NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 5, 0, 0, 150.0, 0, 0, 0, 0, true, false, true, false, true)
        end
    end)
    
    addict.toggle_loop(Vehicle_1,"360 Nearby Vehicles", {"360vehicles"}, "", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 5, 0, 0, 150.0, 0, 0, 0, 0, true, false, true, false, true)
        end
    end)

addict.toggle_loop(Vehicle_1,"Bounce Nearby Vehicles", {"bounceall"}, "", function()
    for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, 0, 0, 10, true, false, true)
        util.yield(250)
    end
end)

addict.toggle_loop(Vehicle_1,"Nearby vehicles fly away", {"flyawayvehicles"}, "", function()
    for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, 0, 0, 100, true, false, true)
        util.yield(10)
    end
end)

	local dont_stop = false
	addict.toggle_loop(Vehicle_1,"Fly Nearby vehicles", {"vehflyall"}, "Basically 'impulse like sport mode' but applied to every vehicle", function()
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
				cam_pos = CAM.GET_GAMEPLAY_CAM_ROT(0)
    			ENTITY.SET_ENTITY_ROTATION(veh, cam_pos.x, cam_pos.y, cam_pos.z, 1, true);
				local locspeed = speed*10
				local locspeed2 = speed
				if PAD.IS_CONTROL_PRESSED(0, 61) then
					locspeed = locspeed*2
					locspeed2 = locspeed2*2
				end
				if PAD.IS_CONTROL_PRESSED(2, 71) then
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, speed, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, locspeed)
					end
				end
				if PAD.IS_CONTROL_PRESSED(2, 72) then
					local lsp = speed
					if not PAD.IS_CONTROL_PRESSED(0, 61) then 
						lsp = speed * 2
					end
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0 - (lsp), 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0 - (locspeed));
					end
			   end
				if PAD.IS_CONTROL_PRESSED(2, 63) then
					local lsp = (0 - speed)*2
					if not PAD.IS_CONTROL_PRESSED(0, 61) then 
						lsp = 0 - speed
					end
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, (lsp), 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0 - (locspeed), 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1);
					end
				end
				if PAD.IS_CONTROL_PRESSED(2, 64) then
					local lsp = speed
					if not PAD.IS_CONTROL_PRESSED(0, 61) then 
						lsp = speed*2
					end
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, lsp, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, locspeed, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					end
				end
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
			end
		end
	end)


    addict.toggle_loop(Vehicle_1,"Destruction", {"destuct"}, "", function()
        util.show_corner_help("~r~Don't use this if your alone it will cause a prevented crash (A0:32).")
        Destruct()
    end)
 
    	addict.toggle_loop(Vehicle_1,"Fuck up all cars", {"fuckupallcars"}, "Beats the SHIT out of all nearby cars. But this damage is only local.", function(on)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            local locspeed2 = speed
            local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
                ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                VEHICLE.SET_VEHICLE_DAMAGE(veh, math.random(-5.0, 5.0), math.random(-5.0, 5.0), math.random(-5.0,5.0), 200.0, 10000.0, true)
            if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
			end
		end
	end)

	addict.toggle_loop(Vehicle_1,"Honk all cars", {"honkallcars"}, "Honkss the SHIT out of all nearby cars.", function(on)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            local locspeed2 = speed
            local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
                ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                VEHICLE.START_VEHICLE_HORN(veh, 200, util.joaat("HELDDOWN"), true)
            if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
			end
		end
	end)
  
	addict.toggle_loop(Vehicle_1, "All cars sink", {"sinkcars"}, "All cars sink.", function(on_toggle)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            local locspeed2 = speed
            local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
                ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                VEHICLE.SET_DISABLE_MAP_COLLISION(veh, vcoords, true)
            if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
			end
		end
	end)
 
	addict.action(Vehicle_1, "Remove Wheels", {"removewheels"}, "removes your wheels and has various side effects depending on the vehicle", function()
		local veh = entities.get_user_vehicle_as_handle()
		if veh ~= 0 then
			native_invoker.begin_call()
			native_invoker.push_arg_int(veh)
			native_invoker.push_arg_float(3.402823466e+38)
			native_invoker.end_call("93A3996368C94158") -- VEHICLE.MODIFY_VEHICLE_TOP_SPEED
		end
	end)

	addict.action(Vehicle_1,"Kill all Engines", {"killall"}, "",function()
		local local_veh = get_player_vehicle(PLAYER.PLAYER_ID(),false)
		for_table_do(entities.get_all_vehicles_as_handles(),true,function(ent) 
			if ent == local_veh then return end
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(ent, -4000)
			VEHICLE.SET_VEHICLE_BODY_HEALTH(ent, -4000)
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(ent, -4000)
		end)
	end)

    addict.action(Vehicle_1, "Sirens All Nearby Players", {"sirenall"}, "", function()
        for _, pid in players.list(false, true, true) do
            local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local pos = players.get_position(pid)
            if ENTITY.DOES_ENTITY_EXIST(ped) then
            addict.trigger_commands("siren " .. players.get_name(pid))
            end
        end
    end)

    


    local world_addict = addict.list(Vehicle_1, "Anti-Try Hard Shit", {"tryhardshit"}, "")

	addict.divider(world_addict, "Anti-Try Hard Shit")

	oppressor_kick_players = false
	addict.toggle(world_addict, "Anti-Oppressor", {"antioppressor"}, "Automatically kicks players off oppressor mkii's", function(on)
		oppressor_kick_players = on
	end, false)
    
	lazer_kick_players = false
	addict.toggle(world_addict, "Anti-Lazer", {"antilazer"}, "Automatically kicks players out lazers", function(on)
		lazer_kick_players = on
	end, false)

    kosatka_kick_players = false
	addict.toggle(world_addict, "Anti-Kosatka", {"antikosatka"}, "Automatically kicks players out kosatka", function(on)
		kosatka_kick_players = on
	end, false)

    hydra_kick_players = false
	addict.toggle(world_addict, "Anti-Hydra", {"antihydra"}, "Automatically kicks players out hydra", function(on)
		hydra_kick_players = on
	end, false)

    khanjali_kick_players = false
	addict.toggle(world_addict, "Anti-Khanjali", {"antikhanjali"}, "Automatically kicks players out khanjali", function(on)
		khanjali_kick_players = on
	end, false)
 
	target_self = false
	addict.toggle(world_addict, "Target self", {"targetselfmk2"}, "Targets your mk2's as well (this is stupid)", function(on)
		target_self = on
	end, false)

	target_friends = false
	addict.toggle(world_addict, "Target friends", {"targetfriendsmk2"}, "Targets your friends' mk2's as well", function(on)
		target_friends = on
	end, false)

local driveshit = addict.list(Vehicle_1, "Driving Shit", {}, "")

addict.action(driveshit, "Candy Paint", {"candypaint"}, "", function()
    candy_paint(true)
end)

addict.action(driveshit,"Tp into nearest vehicle", {"tptonearveh"}, "",function()
    local player = PLAYER.PLAYER_PED_ID(pid)
    local old_coords = ENTITY.GET_ENTITY_COORDS(player_ped)
    local P_Coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)
    local vehicles = entities.get_all_vehicles_as_handles()
    local vehicle = get_closest_vehicle(vehicles)
if ENTITY.DOES_ENTITY_EXIST(vehicle) then
    PED.SET_PED_INTO_VEHICLE(player, vehicle, -1)
    end
end)

addict.slider(driveshit, "Change seat", {"switchseat"}, "DriverSeat = -1 Passenger = 0 Left Rear = 1 RightRear = 2", -1, 7, -1, 1, function(seatnumber)
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    local vehicle = entities.get_user_vehicle_as_handle()
    PED.SET_PED_INTO_VEHICLE(ped, vehicle, seatnumber)
end)

local autodrive = addict.list(driveshit, "Auto Drive", {"autodrive"}, "")

chauffeur_root = addict.list(autodrive, "Chauffeur", {"chauffeur"}, "") -- Thanks again Lance 👍

taxi_ped = 0
taxi_veh = 0
taxi_blip = -1

taxi_veh_options = {"Taxi", "Eudora", "Broadway"}

addict.list_action(chauffeur_root, "Taxi Vehicles", {"taxiveh"}, "", taxi_veh_options, function(index, value, click_type)
    vhash = util.joaat(value)
    phash = util.joaat("s_m_y_casino_01")
    if taxi_veh ~= 0 then
        entities.delete_by_handle(taxi_veh)
    end
    if taxi_ped ~= 0 then
        util.remove_blip(taxi_blip)
        entities.delete_by_handle(taxi_ped)
    end 
    plyr = players.user_ped()
    coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(plyr, 0.0, 5.0, 0.0)
    RequestModel(vhash)
    RequestModel(phash)
    taxi_veh = entities.create_vehicle(vhash, coords, ENTITY.GET_ENTITY_HEADING(plyr))
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_veh, true)
    taxi_ped = entities.create_ped(32, phash, coords, ENTITY.GET_ENTITY_HEADING(plyr))
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(taxi_ped, util.joaat("rgFM_AiLike"))
    taxi_blip = HUD.ADD_BLIP_FOR_ENTITY(taxi_ped)
    HUD.SET_BLIP_COLOUR(taxi_blip, 7)
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_ped, true)
    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(taxi_ped, true)
    PED.SET_PED_FLEE_ATTRIBUTES(taxi_ped, 0, false)
    PED.SET_PED_CAN_BE_DRAGGED_OUT(taxi_ped, false)
    VEHICLE.SET_VEHICLE_EXCLUSIVE_DRIVER(taxi_veh, taxi_ped, -1)
    PED.SET_PED_INTO_VEHICLE(taxi_ped, taxi_veh, -1)
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_ped, true)
    PED.SET_PED_INTO_VEHICLE(players.user_ped(), taxi_veh, 0)
    util.yield(500)
    addict.trigger_commands("tune")
    addict.trigger_commands("frontwheels" .. " 18")
    addict.trigger_commands("wheeltype" .. " 9")
    addict.trigger_commands("headlights" .. " 0")
    addict.trigger_commands("windowtint" .. " 1")
    addict.trigger_commands("livery" .. " 11")
    VEHICLE.SET_VEHICLE_WINDOW_TINT(taxi_veh, 1)
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(taxi_veh, "Addict")
    util.toast("Taxi driver created!")
end)

Boat_veh_options = {"Avisa", "Kosatka", "Submersible2", "Tug", "Seashark3"}

addict.list_action(chauffeur_root, "Sea Vehicles", {"seaveh"}, "", Boat_veh_options, function(index, value, click_type)
    vhash = util.joaat(value)
    phash = util.joaat("s_m_y_casino_01")
    if taxi_veh ~= 0 then
        entities.delete_by_handle(taxi_veh)
    end
    if taxi_ped ~= 0 then
        util.remove_blip(taxi_blip)
        entities.delete_by_handle(taxi_ped)
    end 
    plyr = players.user_ped()
    coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(plyr, 0.0, 5.0, 0.0)
    RequestModel(vhash)
    RequestModel(phash)
    taxi_veh = entities.create_vehicle(vhash, coords, ENTITY.GET_ENTITY_HEADING(plyr))
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_veh, true)
    taxi_ped = entities.create_ped(32, phash, coords, ENTITY.GET_ENTITY_HEADING(plyr))
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(taxi_ped, util.joaat("rgFM_AiLike"))
    taxi_blip = HUD.ADD_BLIP_FOR_ENTITY(taxi_ped)
    HUD.SET_BLIP_COLOUR(taxi_blip, 7)
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_ped, true)
    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(taxi_ped, true)
    PED.SET_PED_FLEE_ATTRIBUTES(taxi_ped, 0, false)
    PED.SET_PED_CAN_BE_DRAGGED_OUT(taxi_ped, false)
    VEHICLE.SET_VEHICLE_EXCLUSIVE_DRIVER(taxi_veh, taxi_ped, -1)
    PED.SET_PED_INTO_VEHICLE(taxi_ped, taxi_veh, -1)
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_ped, true)
    PED.SET_PED_INTO_VEHICLE(players.user_ped(), taxi_veh, 2)
    util.yield(500)
    addict.trigger_commands("tune")
    addict.trigger_commands("frontwheels" .. " 18")
    addict.trigger_commands("wheeltype" .. " 9")
    addict.trigger_commands("headlights" .. " 0")
    addict.trigger_commands("windowtint" .. " 1")
    addict.trigger_commands("livery" .. " 11")
    addict.trigger_commands("livery" .. " 11")
    VEHICLE.SET_VEHICLE_WINDOW_TINT(taxi_veh, 1)
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(taxi_veh, "Addict")
    util.toast("Boat driver created!")
end)

chauffeur_veh_options = {"T20", "Sm722", "Btype3", "Btype2", "Tenf2", "Stretch", "Patriot2", "Kuruma", "Draugur", "Rhinehart", "Sentinel4", "Vigero2", 
"Weevil2", "Journey2", "Surfer3", "Manchez2", "Manchez", "Vagner", "Zhaba", "Apc", "Chernobog", "Khanjali", "Rhino", "Halftrack", "Faggio3", "Hakuchou2", 
"Mesa2", "Ambulance", "Windsor2", "Asbo", "Issi5", "Issi3", "Dilettante2", "Cerberus2", "Phantom2"}

addict.list_action(chauffeur_root, "Chauffeur Vehicles", {"chauffeurveh"}, "", chauffeur_veh_options, function(index, value, click_type)
    vhash = util.joaat(value)
    phash = util.joaat("s_m_y_casino_01")
    if taxi_veh ~= 0 then
        entities.delete_by_handle(taxi_veh)
    end
    if taxi_ped ~= 0 then
        util.remove_blip(taxi_blip)
        entities.delete_by_handle(taxi_ped)
    end 
    plyr = players.user_ped()
    coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(plyr, 0.0, 5.0, 0.0)
    RequestModel(vhash)
    RequestModel(phash)
    taxi_veh = entities.create_vehicle(vhash, coords, ENTITY.GET_ENTITY_HEADING(plyr))
    max_out_car(taxi_veh)
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(taxi_veh, "Addict")
    VEHICLE.SET_VEHICLE_COLOURS(taxi_veh, 0, 0)
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_veh, true)
    taxi_ped = entities.create_ped(32, phash, coords, ENTITY.GET_ENTITY_HEADING(plyr))
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(taxi_ped, util.joaat("rgFM_AiLike"))
    taxi_blip = HUD.ADD_BLIP_FOR_ENTITY(taxi_ped)
    HUD.SET_BLIP_COLOUR(taxi_blip, 7)
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_ped, true)
    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(taxi_ped, true)
    PED.SET_PED_FLEE_ATTRIBUTES(taxi_ped, 0, false)
    PED.SET_PED_CAN_BE_DRAGGED_OUT(taxi_ped, false)
    VEHICLE.SET_VEHICLE_EXCLUSIVE_DRIVER(taxi_veh, taxi_ped, -1)
    PED.SET_PED_INTO_VEHICLE(taxi_ped, taxi_veh, -1)
    ENTITY.SET_ENTITY_INVINCIBLE(taxi_ped, true)
    PED.SET_PED_INTO_VEHICLE(players.user_ped(), taxi_veh, 2)
    addict.trigger_commands("livery" .. " 11")
    VEHICLE.SET_VEHICLE_WINDOW_TINT(taxi_veh, 1)
    VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(taxi_veh, "Addict")
    util.toast("Chauffeur driver created!")
end)

addict.divider(chauffeur_root, "_________________________________________")

local drive_speed = 15.0
local drive_style = 0
local is_driving = false

addict.slider(chauffeur_root, "Driving Speed", {"setaispeed"}, "", 0, 200, drive_speed, 5.0, function(speed, prev)
    drive_speed = speed
end)

addict.action(chauffeur_root, "Drive to waypoint", {"drivetowp"}, "", function(drive_speed)
    if taxi_ped == 0 then
        util.toast("No active chauffeur you fool!")
    else
        goto_coords = get_waypoint_coords()
        if goto_coords ~= nil then
            TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(taxi_ped, taxi_veh, goto_coords['x'], goto_coords['y'], goto_coords['z'], 15, 786996, 5)
        end
    end
end)

addict.action(chauffeur_root, "Wander/Hover", {"aiwandering"}, "", function(v)
    local ped, vehicle = get_my_driver()
    is_driving = true
    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
    TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
    TASK.TASK_VEHICLE_DRIVE_WANDER(ped, vehicle, drive_speed, drive_style)
    PED.SET_DRIVER_ABILITY(ped, 1.0)
    PED.SET_DRIVER_AGGRESSIVENESS(ped, 0.6)
end)

addict.action(chauffeur_root, "Stop Driving", {"aistops"}, "", function(v)
    addict.trigger_commands("setaispeed" .. " 0")
    addict.trigger_commands("aiwandering")
end)

addict.action(chauffeur_root, "TP to chauffeur", {"tptochauffeur"}, "", function(click_type)
    if taxi_ped == 0 then
        util.toast("No active chauffeur you fool!")
    else
        PED.SET_PED_INTO_VEHICLE(players.user_ped(), taxi_veh, 0)
    end
end)

addict.action(chauffeur_root, "Self Destruct", {"selfdestruct"}, "", function(click_type)
    if taxi_ped == 0 then
        util.toast("No active chauffeur you fool!")
    else
        ped_copy = taxi_ped
        veh_copy = taxi_veh
        taxi_ped = 0
        taxi_veh = 0
        coords = ENTITY.GET_ENTITY_COORDS(veh_copy)
        ENTITY.SET_ENTITY_INVINCIBLE(veh_copy, false)
        FIRE.ADD_EXPLOSION(coords['x'], coords['y'], coords['z'], 7, 100.0, true, false, 1.0)
        ENTITY.SET_ENTITY_HEALTH(veh_copy, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(ped_copy, false)
        ENTITY.SET_ENTITY_HEALTH(ped_copy, 0)
        if math.random(5) == 3 then
            util.toast("Chew papi munyanyo :(")
        end
        util.yield(3000)
        entities.delete_by_handle(ped_copy)
        entities.delete_by_handle(veh_copy)
    end
end)

addict.divider(autodrive, "Drive Actions")

drivetoPlayeraddict = addict.list(autodrive, "Drive To Player", {"drivetoplayer"}, "")
drivetoPlayers = {}
setup_choose_player_addict(drivetoPlayeraddict, drivetoPlayers, function(target_pid, name)
    return addict.action(drivetoPlayeraddict, name, {"driveto"}, "", function(_)
        ped, vehicle = get_my_driver()
        addict.trigger_commands("autodrive")
        target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(target_pid)
        hash = ENTITY.GET_ENTITY_MODEL(vehicle)
        util.create_tick_handler(function(_)
            target_pos = ENTITY.GET_ENTITY_COORDS(target_ped)
            TASK.TASK_VEHICLE_DRIVE_TO_COORD(ped, vehicle, target_pos.x, target_pos.y, target_pos.z, 30, 5, hash, 6, 1.0, 1.0)
            util.yield(5000)
            return ENTITY.DOES_ENTITY_EXIST(target_ped) and ENTITY.DOES_ENTITY_EXIST(ped) and TASK.GET_SCRIPT_TASK_STATUS(ped, 0x93A5526E) < 7
        end)
    end)
end)


local drive_speed = 15.0
local drive_style = 0
local is_driving = false

addict.slider(autodrive, "Driving Speed", {"setaispeed1"}, "", 0, 200, drive_speed, 5.0, function(speed, prev)
    drive_speed = speed
end)

addict.action(autodrive, "Wander/Hover", {"aiwander"}, "", function(v)
    local ped, vehicle = get_my_driver()
    is_driving = true
    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
    TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
    TASK.TASK_VEHICLE_DRIVE_WANDER(ped, vehicle, drive_speed, drive_style)
    PED.SET_DRIVER_ABILITY(ped, 1.0)
    PED.SET_DRIVER_AGGRESSIVENESS(ped, 0.6)
end)

addict.action(autodrive, "Stop Driving", {"aistops"}, "", function(v)
    addict.trigger_commands("setaispeed1" .. " 0")
    addict.trigger_commands("aiwander")
end)

--------------------------------------------------------------------------------------------------------------------------------
--[[
────────────────────────────────────────────────────────────────────────────────────────
─██████──────────██████─██████████████─████████████████───██████─────────████████████───
─██░░██──────────██░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░██─────────██░░░░░░░░████─
─██░░██──────────██░░██─██░░██████░░██─██░░████████░░██───██░░██─────────██░░████░░░░██─
─██░░██──────────██░░██─██░░██──██░░██─██░░██────██░░██───██░░██─────────██░░██──██░░██─
─██░░██──██████──██░░██─██░░██──██░░██─██░░████████░░██───██░░██─────────██░░██──██░░██─
─██░░██──██░░██──██░░██─██░░██──██░░██─██░░░░░░░░░░░░██───██░░██─────────██░░██──██░░██─
─██░░██──██░░██──██░░██─██░░██──██░░██─██░░██████░░████───██░░██─────────██░░██──██░░██─
─██░░██████░░██████░░██─██░░██──██░░██─██░░██──██░░██─────██░░██─────────██░░██──██░░██─
─██░░░░░░░░░░░░░░░░░░██─██░░██████░░██─██░░██──██░░██████─██░░██████████─██░░████░░░░██─
─██░░██████░░██████░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░████─
─██████──██████──██████─██████████████─██████──██████████─██████████████─████████████───
────────────────────────────────────────────────────────────────────────────────────────
────────────────────────────────────────────────────────────────────────────
─██████████████─██████──██████─██████████████─██████████████─██████████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██──██░░██─██░░██████░░██─██░░██████░░██─██░░██████████─
─██░░██─────────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██─██░░██─────────
─██░░██─────────██░░██████░░██─██░░██████░░██─██░░██──██░░██─██░░██████████─
─██░░██─────────██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─
─██░░██─────────██░░██████░░██─██░░██████░░██─██░░██──██░░██─██████████░░██─
─██░░██─────────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██─────────██░░██─
─██░░██████████─██░░██──██░░██─██░░██──██░░██─██░░██████░░██─██████████░░██─
─██░░░░░░░░░░██─██░░██──██░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██████████████─██████──██████─██████──██████─██████████████─██████████████─
────────────────────────────────────────────────────────────────────────────
]]

worldchaos = addict.list(addict.my_root(), "World Chaos", {}, "", function() end)

addict.divider(worldchaos, "World Chaos")


local animDict = "amb@world_human_musician@guitar@male@idle_a"
local animName = "idle_a"
local guitarModel = util.joaat("prop_acc_guitar_01")
local attachedGuitars = {}

-- Load animation and model
STREAMING.REQUEST_ANIM_DICT(animDict)
STREAMING.REQUEST_MODEL(guitarModel)
while not STREAMING.HAS_ANIM_DICT_LOADED(animDict) or not STREAMING.HAS_MODEL_LOADED(guitarModel) do
    util.yield()
end

-- Helper: Attach guitar to ped
local function attach_guitar_to_ped(ped)
    if attachedGuitars[ped] and ENTITY.DOES_ENTITY_EXIST(attachedGuitars[ped]) then return end

    local guitar = OBJECT.CREATE_OBJECT(guitarModel, 0.0, 0.0, 0.0, true, true, false)
    local boneIndex = PED.GET_PED_BONE_INDEX(ped, 57005) -- Right hand

    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, ped, boneIndex, 0.15, 0.03, 0.0, 0.0, 90.0, 180.0, true, true, false, false, 2, true)
    attachedGuitars[ped] = guitar
end

-- Cleanup
local function cleanup()
    for ped, obj in pairs(attachedGuitars) do
        if ENTITY.DOES_ENTITY_EXIST(obj) then
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(obj, true, true)
            ENTITY.DELETE_ENTITY(obj)
        end
    end
    attachedGuitars = {}
end

-- Toggle control
local is_enabled = false
menu.my_root():toggle("🎸 All Peds Play Guitar (with prop)", {}, "Loops guitar animation and gives them guitars.", function(toggle)
    is_enabled = toggle
    if not toggle then
        cleanup()
        for _, ped in ipairs(entities.get_all_peds_as_handles()) do
            if ped ~= PLAYER.PLAYER_PED_ID() and not PED.IS_PED_A_PLAYER(ped) then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
            end
        end
    end
end)

-- Loop: force animation and attach guitar
util.create_tick_handler(function()
    if not is_enabled then return true end

    for _, ped in ipairs(entities.get_all_peds_as_handles()) do
        if ped ~= PLAYER.PLAYER_PED_ID() and not PED.IS_PED_A_PLAYER(ped) and ENTITY.IS_ENTITY_ON_SCREEN(ped) then
            -- Animate and attach
            TASK.TASK_PLAY_ANIM(ped, animDict, animName, 8.0, -8.0, 2000, 1, 0.0, false, false, false)
            attach_guitar_to_ped(ped)
        end
    end

    util.yield(2000)
    return true
end)


-- Spawn radius and toggle state
local SPAWN_RADIUS = 50
local enabled = false

-- Model hash tables (maximum variety)
local VehicleModels = {
    util.joaat("adder"),    util.joaat("banshee"),   util.joaat("buffalo"),  util.joaat("comet2"),
    util.joaat("comet"),    util.joaat("elegy2"),   util.joaat("entityxf"), util.joaat("feltzer2"),
    util.joaat("fmj"),      util.joaat("fmj2"),     util.joaat("nero"),     util.joaat("nero2"),
    util.joaat("vagner"),   util.joaat("zentorno"), util.joaat("vacca"),    util.joaat("voltic"),
    util.joaat("gauntlet"), util.joaat("hermes"),   util.joaat("sabregt"),  util.joaat("dominator"),
    util.joaat("dukes2"),   util.joaat("moonbeam"), util.joaat("peyote"),   util.joaat("blade"),
    util.joaat("bifta"),    util.joaat("mesa"),     util.joaat("dubsta"),   util.joaat("dubsta3"),
    util.joaat("dune"),     util.joaat("insurgent"),util.joaat("monster"),  util.joaat("mesa3"),
    util.joaat("brawler"),  util.joaat("patriot"),  util.joaat("sadler"),   util.joaat("sandking"),
    util.joaat("packer"),   util.joaat("phantom"),  util.joaat("pounder"),  util.joaat("barracks"),
    util.joaat("stockade"), util.joaat("coach"),    util.joaat("pbus"),     util.joaat("bus"),
    util.joaat("mule"),     util.joaat("mule2"),    util.joaat("trash"),    util.joaat("benson"),
    util.joaat("police"),   util.joaat("police2"),  util.joaat("ambulance"),util.joaat("firetruk"),
    util.joaat("taxi"),     util.joaat("flatbed"),  util.joaat("towtruck"),util.joaat("towtruck2"),
    util.joaat("bati2"),    util.joaat("hexer"),    util.joaat("blazer"),   util.joaat("seashark"),
    util.joaat("dinghy"),   util.joaat("marquis"),  util.joaat("toro"),     util.joaat("jetmax"),
    util.joaat("dodo"),     util.joaat("cuban800"), util.joaat("duster"),   util.joaat("mammatus"),
    util.joaat("miljet"),   util.joaat("nimbus"),   util.joaat("shamal"),   util.joaat("stunt"),
    util.joaat("velum"),    util.joaat("velum2"),   util.joaat("luxor"),    util.joaat("luxor2"),
    util.joaat("titan"),    util.joaat("volatol"),  util.joaat("avenger"),  util.joaat("bombushka"),
    util.joaat("starling"), util.joaat("cargoplane"),util.joaat("lazer"),   util.joaat("hydra"),
    util.joaat("besra"),    util.joaat("valkyrie"), util.joaat("annihilator"),util.joaat("akula"),
    util.joaat("cargobob"), util.joaat("rhino"),    util.joaat("t20"),      util.joaat("reaper"),
    util.joaat("tempesta")
}

local PedModels = {
    util.joaat("a_f_m_beach_01"),   util.joaat("a_f_y_bevhills_01"),
    util.joaat("a_m_m_business_01"),util.joaat("a_f_y_business_02"),
    util.joaat("a_m_m_farmer_01"),  util.joaat("a_f_y_fitness_01"),
    util.joaat("a_m_m_skater_01"),  util.joaat("a_f_y_skater_01"),
    util.joaat("a_m_m_tramp_01"),   util.joaat("a_f_y_yoga_01"),
    util.joaat("a_m_y_runner_01"),  util.joaat("a_m_o_tramp_01"),
    util.joaat("s_m_y_cop_01"),     util.joaat("s_m_y_fireman_01"),
    util.joaat("s_m_m_paramedic_01"),util.joaat("s_m_m_doctor_01"),
    util.joaat("s_m_m_gaffer_01"),  util.joaat("s_m_y_hwaycop_01"),
    util.joaat("g_m_y_mexgoon_01"), util.joaat("g_m_m_chiboss_01"),
    util.joaat("g_m_y_famca_01"),   util.joaat("g_m_y_strpunk_01"),
    util.joaat("mp_m_shopkeep_01"), util.joaat("mp_f_boatstaff_01"),
    util.joaat("ig_bankman"),       util.joaat("ig_claypain"),
    util.joaat("ig_lestercrest"),   util.joaat("ig_jimmyboston"),
    util.joaat("csb_mweather"),     util.joaat("csb_chef"),
    util.joaat("a_c_husky"),        util.joaat("a_c_rottweiler"),
    util.joaat("a_c_poodle"),       util.joaat("a_c_cat"),
    util.joaat("a_c_pigeon"),       util.joaat("a_c_chimp"),
    util.joaat("u_m_m_jesus_02")
}

local ObjectModels = {
    util.joaat("prop_barrel_01a"),      util.joaat("prop_ld_suitcase_01"),
    util.joaat("prop_ld_flow_bottle"),  util.joaat("prop_tv_flat_02"),
    util.joaat("prop_skateboard_01"),   util.joaat("prop_chateau_chair_01"),
    util.joaat("prop_stool_01"),        util.joaat("prop_ld_coffee_01"),
    util.joaat("prop_ld_shoe_01"),      util.joaat("prop_ld_wallet_01"),
    util.joaat("prop_ld_ferris_wheel"), util.joaat("prop_ld_gravestone_01"),
    util.joaat("prop_roadcone01a"),     util.joaat("prop_phonebox_01"),
    util.joaat("prop_bin_07a"),         util.joaat("prop_gas_pump_1a"),
    util.joaat("prop_gas_pump_1b"),     util.joaat("prop_crane_01_truck1"),
    util.joaat("prop_pit_tube_01"),     util.joaat("prop_jerrycan_01a"),
    util.joaat("prop_bin_10a"),         util.joaat("prop_bin_11a"),
    util.joaat("prop_cs_ciggy_01"),     util.joaat("prop_cs_beer_bot_01"),
    util.joaat("prop_cs_joint_01"),     util.joaat("prop_cs_remote_01"),
    util.joaat("prop_cs_cardbox_01"),   util.joaat("prop_cs_dildo_01"),
    util.joaat("prop_cs_plastic_cup_01"),util.joaat("prop_cs_lighter_01"),
    util.joaat("prop_cs_brain_chunk"),  util.joaat("prop_tool_chest_01"),
    util.joaat("prop_garden_trowel"),   util.joaat("prop_ld_keypad_01"),
    util.joaat("prop_fbi3_coffee_table"),util.joaat("prop_game_clock_01"),
    util.joaat("prop_ld_saxophone")
}


menu.toggle(worldchaos, "Random Entity Spawner", {}, "Spawns random vehicles, peds, and objects every second. WARNING! This may crash your game if left on too long.", function(on)
    enabled = on
    util.toast(on and "Spawner Enabled" or "Spawner Disabled")
end)

-- Helpers
local function random_position()
    local base = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    local x = base.x + math.random(-SPAWN_RADIUS, SPAWN_RADIUS)
    local y = base.y + math.random(-SPAWN_RADIUS, SPAWN_RADIUS)
    local z = base.z + math.random(1, 6)
    return v3.new(x, y, z)
end

local function load_model(hash)
    if not STREAMING.IS_MODEL_VALID(hash) then
        return false
    end
    STREAMING.REQUEST_MODEL(hash)
    local timeout = 200
    while not STREAMING.HAS_MODEL_LOADED(hash) and timeout > 0 do
        util.yield(10)
        timeout = timeout - 1
    end
    return STREAMING.HAS_MODEL_LOADED(hash)
end

-- Main spawn loop
util.create_tick_handler(function()
    if not enabled then return true end

    local pos = random_position()

    -- Vehicle
    local vh = VehicleModels[math.random(#VehicleModels)]
    if load_model(vh) then
        entities.create_vehicle(vh, pos, math.random(0, 360))
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vh)
    end

    -- Ped
    local ph = PedModels[math.random(#PedModels)]
    if load_model(ph) then
        entities.create_ped(4, ph, pos, math.random(0, 360))
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ph)
    end

    -- Object
    local oh = ObjectModels[math.random(#ObjectModels)]
    if load_model(oh) then
        entities.create_object(oh, pos, false)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(oh)
    end

    util.yield(0)
    return true
end)


    addict.toggle_loop(worldchaos, "Invisible Peds", {"invisiblepeds"}, "", function(on_toggle)
            all_peds = entities.get_all_peds_as_handles()
        for k,ped in pairs(all_peds) do
            if not PED.IS_PED_A_PLAYER(ped) then
                if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                end
                ENTITY.SET_ENTITY_VISIBLE(ped, false, 0)
                util.yield(100)
            end
        end
    end)


    addict.toggle_loop(worldchaos,"Spinbot Peds", {"spinbotself"}, "Use levitate to move...", function(on)
        for k, peds in pairs(entities.get_all_peds_as_handles()) do
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(peds)
        local rand_1 = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(peds, math.random(-500, 500), math.random(-500, 500), 300.0)
            if not PAD.IS_CONTROL_PRESSED(71, 71) then
                ENTITY.SET_ENTITY_ROTATION(peds, rand_1['x'], rand_1['y'], rand_1['z'])
            end
        end
    end)

    addict.toggle_loop(worldchaos,"Spinbot Self Ped", {"spinbotself"}, "", function(on)
        local self_ped = players.user_ped()
        local rand_1 = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.PLAYER_PED_ID(), math.random(-500, 500), math.random(-500, 500), 300.0)
            if not PAD.IS_CONTROL_PRESSED(71, 71) then
                ENTITY.SET_ENTITY_ROTATION(self_ped, rand_1['x'], rand_1['y'], rand_1['z'])
            util.yield_once()
            end
            return
    end)
 
    local getEntityCoords = ENTITY.GET_ENTITY_COORDS
    local getPlayerPed = PLAYER.GET_PLAYER_PED

    function explodeAndDelete(entity, exploID, ownerPed, dmgscale, audible, invisible, camshake)
        local ec = getEntityCoords(entity)
        FIRE.ADD_OWNED_EXPLOSION(ownerPed, ec.x, ec.y, ec.z, exploID, dmgscale, audible, invisible, camshake)
    end

        map_explodes = addict.list(worldchaos, "Explode Map", {}, "Explodes all over the map.", function(); end)

    addict.toggle_loop(map_explodes, "Explode Map", {""}, "", function()
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        local height = 0
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(p, c.x + math.random(-100, 100), c.y + math.random(-100, 100), height)
        explodeAndDelete(p, 47, getPlayerPed(players.user()), 5, true, false, 3)
    end)

    
addict.action(map_explodes, "Antimatter Cataclysm", {}, "Triggers cinematic destruction: NPC panic, thunder, and object mayhem.", function()
    addict.trigger_commands("thunderon")
    util.toast("Initiating antimatter singularity...")
    local player_ped = players.user_ped()
    local pos = ENTITY.GET_ENTITY_COORDS(player_ped)
    local radius = 100
    local num_explosions = 75
    local delay = 50

    -- Explosion storm
    for i = 1, num_explosions do
        local offset = v3.new(math.random(-radius, radius), math.random(-radius, radius), math.random(-10, 10))
        local explosion_pos = v3.add(pos, offset)
        FIRE.ADD_EXPLOSION(explosion_pos.x, explosion_pos.y, explosion_pos.z, 37, 12.0, true, false, 1.5)
        util.yield(delay)
    end

    -- NPC chaos
    for _, ped in ipairs(entities.get_all_peds_as_handles()) do
        if ped ~= player_ped and not PED.IS_PED_INJURED(ped) then
            PED.SET_PED_TO_RAGDOLL(ped, 5000, 5000, 0, false, false, false)
            FIRE.START_ENTITY_FIRE(ped)
        end
    end

    -- Thunder flashes
    for i = 1, 10 do
        local offset = v3.new(math.random(-radius, radius), math.random(-radius, radius), 0)
        local flash_pos = v3.add(pos, offset)
        FIRE.ADD_EXPLOSION(flash_pos.x, flash_pos.y, flash_pos.z, 86, 3.0, true, false, 0.5)
        util.yield(150)
    end
    addict.trigger_commands("thunderoff")
    util.toast("Antimatter cataclysm complete. Map integrity compromised.")
end)

    addict.divider(map_explodes, "________________________________________")
    
    local chaos_enabled = false
    local explosion_radius = 50
    local explosion_loop
    
    addict.toggle(map_explodes, "Chaos Explosions", {"chaosexplo"}, "Spawn HUGE random explosions around you.", function(toggle)
        chaos_enabled = toggle
        if toggle then
            explosion_loop = util.create_tick_handler(function()
                if not chaos_enabled then return false end

                local coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
                local angle = math.random() * math.pi * 2
                local dist = math.random() * explosion_radius
                local ex = coords.x + math.cos(angle) * dist
                local ey = coords.y + math.sin(angle) * dist
                local ez = coords.z

                FIRE.ADD_EXPLOSION(ex, ey, ez, 29, 10.0, true, false, 1.0, false)
                return true
            end)
        else
            if explosion_loop then
                explosion_loop = nil
            end
        end
    end)

     addict.slider(map_explodes, "Explosion Radius", {"chaosrad"}, "Distance at which random explosions will spawn around you.", 10, 200, 50, 10, function(value)
        explosion_radius = value
    end)

------------------------------------------------------------------------------------------------------------------------------------
 
    areablocks = addict.list(worldchaos, "Block Entrances", {}, "", function(); end)

    addict.toggle(areablocks, "Casino", {"blockcasino"}, "", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, 920.657, 48.360252, 44.913666, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash) 
    else
        addict.trigger_commands("clearblocks")
        end
    end)

    addict.toggle(areablocks, "Escipse Towers", {"blockeclipse"}, "", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, -796.4927, 310.48416, 50.49049, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash) 
    else
        addict.trigger_commands("clearblocks")
        end
    end)

    area_lsc_blocks = addict.list(areablocks, "Block LSC Entrances", {}, "", function(); end)

    addict.toggle(area_lsc_blocks, "LSC Burton", {"blocklscb"}, "", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, -361.66696, -132.68272, 1.1650558, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash) 
    else
        addict.trigger_commands("clearblocks")
        end
    end)

    addict.toggle(area_lsc_blocks, "LSC La Mesa", {"blocklm"}, "", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, 719.7211, -1088.8136, -15.784607, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash) 
    else
        addict.trigger_commands("clearblocks")
        end
    end)

    addict.toggle(area_lsc_blocks, "LSC International Airport", {"blockia"}, "", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, -1144.0221, -1989.1848, -21.592183, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash) 
    else
        addict.trigger_commands("clearblocks")
        end
    end)

    addict.toggle(area_lsc_blocks, "LSC Grand Senora Desert", {"blockgsd"}, "", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, 1174.6398, 2649.226, 1.21482217, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)

        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, 1182.6398, 2649.226, 1.21482217, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
    else
        addict.trigger_commands("clearblocks")
        end
    end)

    addict.toggle(area_lsc_blocks, "LSC Paleto Bay", {"blockpb"}, "", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, 116.85485, 6620.863, -5.287771, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)

        local hash = 1952396163
        request_model(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, 110.85485, 6614.863, -5.287771, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            util.yield(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
    else
        addict.trigger_commands("clearblocks")
        end
    end)

    addict.divider(areablocks, "__________________bruh__________________")


    addict.action(areablocks, "Clear All Blocks", {"clearblocks"}, "", function()
        local count = 0
        for k,ent in pairs(entities.get_all_objects_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            count = count + 1
            util.yield()
        end
    end)

    addict.action(areablocks, "Custom Bock", {"customblock"}, "Note: You can custom block entrances using a container object or something like it, Shotcut For Custom Model Gun.", function()
        addict.trigger_commands("custommodlegunloc")
        addict.trigger_commands("modgun")
    end)

local tornado_z_offset = 0
local tornado_radius = 30
local tornado_strength = 30
local dont_stop = false

local tornadoMenu = addict.list(worldchaos, "Tornado", {}, "Swirls entities around a tornado vortex.")

-- Helper to compute perpendicular force
local function get_swirl_force(center, entity_pos, strength)
    local dx = entity_pos.x - center.x
    local dy = entity_pos.y - center.y
    local dist = math.sqrt(dx * dx + dy * dy)

    if dist < 1 then dist = 1 end -- Avoid division by 0

    local fx = -dy / dist * strength
    local fy = dx / dist * strength
    local fz = strength * 0.15

    return fx, fy, fz
end

-- Gets the tornado's position (in front of local player)
local function get_tornado_position()
    local ped = PLAYER.PLAYER_PED_ID()
    local pos = ENTITY.GET_ENTITY_COORDS(ped, true)
    local offset = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 0.0, 10.0, 0.0)
    offset.z = offset.z + tornado_z_offset
    return offset
end

-- Applies swirling force to an entity
local function swirl_entity(entity, center)
    local pos = ENTITY.GET_ENTITY_COORDS(entity, true)
    local fx, fy, fz = get_swirl_force(center, pos, tornado_strength)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
    ENTITY.SET_ENTITY_INVINCIBLE(entity, true)
    ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(entity, 1, fx, fy, fz, true, false, true, true)
end

-- Vehicle Tornado
addict.toggle_loop(tornadoMenu, "Vehicle Tornado", {"vehicletornado"}, "Swirls all vehicles in the air around a vortex", function(on)
    local center = get_tornado_position()
    for _, veh in pairs(entities.get_all_vehicles_as_handles()) do
        if VEHICLE.IS_VEHICLE_DRIVEABLE(veh, false) and veh ~= entities.get_user_vehicle_as_handle() then
            swirl_entity(veh, center)
            if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0)
            end
        end
    end
end)

-- Object Tornado
addict.toggle_loop(tornadoMenu, "Object Tornado", {"objecttornado"}, "Swirls world objects around the vortex", function(on)
    local center = get_tornado_position()
    for _, obj in pairs(entities.get_all_objects_as_handles()) do
        swirl_entity(obj, center)
    end
end)

-- Ped Tornado
addict.toggle_loop(tornadoMenu, "Ped Tornado", {"pedtornado"}, "Swirls NPCs and other peds around the vortex", function(on)
    local center = get_tornado_position()
    for _, ped in pairs(entities.get_all_peds_as_handles()) do
        if not PED.IS_PED_A_PLAYER(ped) then
            swirl_entity(ped, center)
        end
    end
end)

-- Slider to adjust tornado height offset
addict.slider(tornadoMenu, "Tornado Z-offset", {"tornadozoffset"}, "Height of the vortex", -100, 100, 0, 5, function(s)
    tornado_z_offset = s
end)

local TornadoEntities = addict.list(worldchaos, "Tornado 2.0", {}, "Swirls entities in a tornado above you")

-- CONFIGURABLE SLIDERS
local tornado_z_offset = 20.0        -- Height above player
local tornado_radius = 25.0          -- How far from player they swirl
local tornado_strength = 35.0        -- Force power
local tornado_density = 10           -- How many entities to swirl per frame
local vehicle_swirl_radius = 15.0    -- Vehicle proximity to player

-- INTERNAL
local dont_stop = false
local entity_index_tracker = {
    vehicle = 1,
    object = 1,
    ped = 1
}

-- Utility: Get tornado swirl center above player
local function get_tornado_center()
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    local coords = ENTITY.GET_ENTITY_COORDS(ped, true)
    coords.z = coords.z + tornado_z_offset
    return coords
end

-- Utility: Apply swirl force to entity
local function swirl_toward(entity, center, radius)
    local pos = ENTITY.GET_ENTITY_COORDS(entity, true)
    local dx = pos.x - center.x
    local dy = pos.y - center.y
    local dist = math.max(1.0, math.sqrt(dx * dx + dy * dy))

    local swirl_fx = -dy / dist * tornado_strength
    local swirl_fy = dx / dist * tornado_strength
    local swirl_fz = (center.z - pos.z) * 2.0 + 5.0

    -- Pull toward circular orbit of desired radius
    local desired_x = center.x + math.cos(util.current_time_millis() / 200) * radius
    local desired_y = center.y + math.sin(util.current_time_millis() / 200) * radius

    swirl_fx = swirl_fx + (desired_x - pos.x) * 2.0
    swirl_fy = swirl_fy + (desired_y - pos.y) * 2.0

    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
    ENTITY.SET_ENTITY_INVINCIBLE(entity, true)
    ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(entity, 1, swirl_fx, swirl_fy, swirl_fz, true, false, true, true)
end

-- VEHICLES
addict.toggle_loop(TornadoEntities, "Vehicle Tornado", {"vehicletornado2"}, "Swirls all vehicles above and around you", function(on)
    local center = get_tornado_center()
    local vehicles = entities.get_all_vehicles_as_handles()
    local processed = 0

    for i = entity_index_tracker.vehicle, #vehicles do
        local veh = vehicles[i]
        if VEHICLE.IS_VEHICLE_DRIVEABLE(veh, false) and veh ~= entities.get_user_vehicle_as_handle() then
            swirl_toward(veh, center, vehicle_swirl_radius)
            if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0)
            end
            processed = processed + 1
            if processed >= tornado_density then break end
        end
    end

    entity_index_tracker.vehicle = (entity_index_tracker.vehicle % #vehicles) + 1
end)

-- OBJECTS
addict.toggle_loop(TornadoEntities, "Object Tornado", {"objecttornado"}, "Swirls world objects around and above you", function(on)
    local center = get_tornado_center()
    local objects = entities.get_all_objects_as_handles()
    local processed = 0

    for i = entity_index_tracker.object, #objects do
        swirl_toward(objects[i], center, tornado_radius)
        processed = processed + 1
        if processed >= tornado_density then break end
    end

    entity_index_tracker.object = (entity_index_tracker.object % #objects) + 1
end)

-- PEDS
addict.toggle_loop(TornadoEntities, "Ped Tornado", {"pedtornado"}, "Swirls NPCs around and above you", function(on)
    local center = get_tornado_center()
    local peds = entities.get_all_peds_as_handles()
    local processed = 0

    for i = entity_index_tracker.ped, #peds do
        local ped = peds[i]
        if not PED.IS_PED_A_PLAYER(ped) then
            swirl_toward(ped, center, tornado_radius)
            processed = processed + 1
            if processed >= tornado_density then break end
        end
    end

    entity_index_tracker.ped = (entity_index_tracker.ped % #peds) + 1
end)

-- SLIDERS
addict.slider(TornadoEntities, "Tornado Z-Offset", {"tornado2zoffset"}, "How high the tornado vortex is above you", 5, 100, 20, 5, function(val)
    tornado_z_offset = val
end)

addict.slider(TornadoEntities, "Tornado Density", {"tornado2density"}, "How many entities are pulled each frame", 1, 50, 10, 1, function(val)
    tornado_density = val
end)

addict.slider(TornadoEntities, "Vehicle Swirl Radius", {"tornado2vehicleradius"}, "Distance vehicles swirl from center", 5, 100, 15, 5, function(val)
    vehicle_swirl_radius = val
end)


    local aicrashes = addict.list(worldchaos, "A.I. Entities", {"aicrashes"}, "")

    addict.toggle_loop(aicrashes,"A.I. Entity Fuck", {"aient"}, "Toggle all of them but doesn't work the same as if toggled individually. Code generated by a.i.", function()
        entity_fuck(pid)
    end)

    addict.toggle_loop(aicrashes,"A.I. Vehicle Fly", {"aivehfly"}, "Code generated by a.i.", function()
        veh_entity_fly(pid)
    end)
    
    addict.toggle_loop(aicrashes,"A.I. Vehicle Fuck", {"aiveh"}, "Code generated by a.i.", function()
        veh_entity_fuck(pid)
    end)
    
    addict.toggle_loop(aicrashes,"A.I. Object Fuck", {"aiobj"}, "Code generated by a.i.", function()
        obj_entity_fuck(pid)
    end)
    
    addict.toggle_loop(aicrashes,"A.I. Ped Fuck", {"aiped"}, "Code generated by a.i.", function()
        ped_entity_fuck(pid)
    end)
    
    addict.toggle_loop(aicrashes,"A.I. Pickup Fuck", {"aipickup"}, "Code generated by a.i.", function()
        pickup_entity_fuck(pid)
    end)
    
    addict.action(aicrashes, "Restart Script To Stop Fuckery", {"restartfuckery"}, "", function ()
        util.restart_script()
    end)

--------------------------------------------------------------------------------------------------------------------
Chatspam = addict.list(addict.my_root(), "Chat Spammers", {}, "", function() end)

addict.divider(Chatspam, "Chat Spammers")

doxing = addict.list(Chatspam, "Doxing", {}, "", function(); end)


addict.action(doxing, 'That\'s pretty funny! Unfortunately, -IP-', {}, 'Everyone will see their own IP, and nobody will see anyone else\'s (unless they also have a menu anyways).\nCustom chat scripts won\'t render this correctly, but the feature will still work to anyone using vanilla chat.', function(click_type)
    chat.send_message("That\'s pretty funny!", false, true, true)
    chat.send_message("Unfortunately, ${ip}", false, true, true)
end)

addict.action(doxing, 'How are things in -city-', {}, 'Everyone will see their own city, and nobody will see anyone else\'s (unless they also have a menu anyways).\nCustom chat scripts won\'t render this correctly, but the feature will still work to anyone using vanilla chat.', function(click_type)
    chat.send_message("So how are things in ${geoip.city}?", false, true, true)
end)
 
addict.action(doxing, 'Call out non-VPN users', {}, 'Sends targeted messages to all non-VPN users and tells them their ip', function(click_type)
    for players.list(false, true, true) as pid do
        if not players.is_using_vpn(pid) then
            chat.send_targeted_message(pid, players.user(), 'Did you know you\'re not using a VPN? You probably should. ${ip}', false)
            util.toast('Sent call-out to ' .. players.get_name(pid))
        end
    end
end)

resellspam = addict.list(Chatspam, "Re Seller Chat Spammers", {}, "Command: help. Spams every 2.5 minutes", function(); end)

addict.toggle_loop(resellspam, "Re Seller Chat Spam", {}, "Spams every 2.5 minutes", function(on_toggle)
chat.send_message(
    "Want money? Want godmode? Want a strong mod menu? Message me to join the discord :)",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

helpcommands = addict.list(Chatspam, "Help Commands", {}, "Command: help. Spams every 2.5 minutes", function(); end)

addict.toggle_loop(helpcommands, "Type Help Commands", {"typehelpcommand"}, "", function(on_toggle)
chat.send_message(
    "Type /help for help",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

addict.action(helpcommands, "Help Commands", {"help"}, "", function()
chat.send_message(
    "/help1 /help2 /help3 /whatmenu",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(helpcommands, "Help Commands", {"helpcommand"}, "", function(on_toggle)
chat.send_message(
    "/help1 /help2 /help3 /whatmenu",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

help1 = addict.list(Chatspam, "Commands A", {}, "Command: help1", function(); end)

addict.action(help1, "Commands A", {"help1"}, "", function()
chat.send_message(
    "/max NAME /ceopay NAME /boost NAME /addictboost NAME /resetacc NAME /repair NAME",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(help1, "Commands A", {}, "", function(on_toggle)
chat.send_message(
    "/max NAME /ceopay NAME /boost NAME /addictboost NAME /resetacc NAME /repair NAME",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

help2 = addict.list(Chatspam, "Commands B", {}, "Command: help2", function(); end)

addict.action(help2, "Commands B", {"help2"}, "", function()
chat.send_message(
    "/arm NAME /ammo NAME /autoheal NAME /bail NAME /giveotr NAME /upgradeveh NAME",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(help2, "Commands B", {}, "", function(on_toggle)
chat.send_message(
    "/arm NAME /ammo NAME /autoheal NAME /bail NAME /giveotr NAME /upgradeveh NAME",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

help3 = addict.list(Chatspam, "Commands C", {}, "Command: help3", function(); end)

addict.action(help3, "Commands C", {"help3"}, "", function()
chat.send_message(
    "/gotowaypoint NAME /alltowaypoint NAME",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(help3, "Commands C", {}, "", function(on_toggle)
chat.send_message(
    "/gotowaypoint NAME /alltowaypoint NAME",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

casinohelp1 = addict.list(Chatspam, "Roulette Method", {}, "Command: casinohelp1", function(); end)

addict.action(casinohelp1, "Roulette Method", {"casinohelp1"}, "", function()
chat.send_message(
    "If you want to make money come to casino play roulette and bet max on 1st 12(50k) and Red 1(5k), win 3 loose 1 550k a minute",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(casinohelp1, "Roulette Method", {"togglecasinohelp1"}, "", function(on_toggle)
chat.send_message(
    "If you want to make money come to casino play roulette and bet max on 1st 12(50k) and Red 1(5k), win 3 loose 1 550k a minute",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

casinohelp2 = addict.list(Chatspam, "Blackjack Method", {}, "Command: casinohelp2", function(); end)

addict.action(casinohelp2, "Blackjack Method", {"casinohelp2"}, "", function()
chat.send_message(
    "If you want to make money come to casino play blackjack! Click max bet then hit stand and win 2x your bet!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(casinohelp2, "Blackjack Method", {"togglecasinohelp2"}, "", function(on_toggle)
chat.send_message(
    "If you want to make money come to casino play blackjack! Click max bet then hit stand and win 2x your bet!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

whatmenu = addict.list(Chatspam, "what menu Do I Use?", {}, "Command: whatmenu", function(); end)

addict.action(whatmenu, "what menu Do I Use?", {"whatmenu"}, "", function()
chat.send_message(
    "I use Stand, Cherax, I got tons other menu's and I coded all the addict scripts.",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(whatmenu, "what menu Do I Use?", {"whatmenu"}, "", function(on_toggle)
chat.send_message(
    "I use Stand, Cherax, I got tons other menu's and I coded all the addict scripts.",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(150000)
end)

imfuckinggod = addict.list(Chatspam, "I'm Fucking God", {}, "Command: imfuckinggod", function(); end)

addict.action(imfuckinggod, "I'm Fucking God", {"imfuckinggod"}, "", function()
chat.send_message(
    "I'M FUCKING GOD!!!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(imfuckinggod, "I'm Fucking God", {"imfuckinggod"}, "", function(on_toggle)
chat.send_message(
    "I'M FUCKING GOD!!!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end)

reportme = addict.list(Chatspam, "Report Me", {}, "Command: reportme", function(); end)

addict.action(reportme, "Report Me", {"reportme"}, "", function()
chat.send_message(
    "REPORT ME!!!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(reportme, "Report Me", {"reportme"}, "", function(on_toggle)
chat.send_message(
    "REPORT ME!!!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end)

ilovezelensky = addict.list(Chatspam, "I <3 ZELEN", {}, "Command: ilovezelensky", function(); end)

addict.action(ilovezelensky, "I <3 ZELEN", {"ilovezelensky"}, "Russians hate this ;)", function()
chat.send_message(
    "I <3 PRESIDENT VOLODYMYR ZELENSKYY",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(ilovezelensky, "I <3 ZELEN", {"ilovezelensky"}, "Russians hate this ;)", function(on_toggle)
chat.send_message(
    "I <3 PRESIDENT VOLODYMYR ZELENSKYY",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end)

iloveputin = addict.list(Chatspam, "I <3 PUTIN", {}, "Command: iloveputin", function(); end)

addict.action(iloveputin, "I <3 PUTIN", {"iloveputin"}, "Ukranians hate this ;)", function()
chat.send_message(
    "I <3 PRESIDENT VOLODYMYR PUTIN",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(iloveputin, "I <3 PUTIN", {"iloveputin"}, "Ukranians hate this ;)", function(on_toggle)
chat.send_message(
    "I <3 PRESIDENT VOLODYMYR PUTIN",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end)

yuminwoman = addict.list(Chatspam, "Yumin Woman", {}, "Command: yuminwoman", function(); end)

addict.action(yuminwoman, "Yumin Woman", {"yuminwoman"}, "AUUUUUUUUUGGHH", function()
chat.send_message(
    "Yumin woman! AUUUUUUUUUGGHH!!!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.toggle_loop(yuminwoman, "Yumin Woman", {"yuminwoman"}, "AUUUUUUUUUGGHH", function(on_toggle)
chat.send_message(
    "Yumin woman! AUUUUUUUUUGGHH!!!",
    false, -- in team chat
    true, -- add to local history
    true  -- networked
    )
util.yield(50)
end)
--------------------------------------------------------------------------------------------------------------------
--[[
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─████████████████───██████████████─██████████████─██████████████─██████──██████─██████████████─████████████████───████████──████████─
─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░██──██░░░░██─
─██░░████████░░██───██░░██████████─██░░██████████─██░░██████░░██─██░░██──██░░██─██░░██████████─██░░████████░░██───████░░██──██░░████─
─██░░██────██░░██───██░░██─────────██░░██─────────██░░██──██░░██─██░░██──██░░██─██░░██─────────██░░██────██░░██─────██░░░░██░░░░██───
─██░░████████░░██───██░░██████████─██░░██─────────██░░██──██░░██─██░░██──██░░██─██░░██████████─██░░████████░░██─────████░░░░░░████───
─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░██─────────██░░██──██░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───────████░░████─────
─██░░██████░░████───██░░██████████─██░░██─────────██░░██──██░░██─██░░██──██░░██─██░░██████████─██░░██████░░████─────────██░░██───────
─██░░██──██░░██─────██░░██─────────██░░██─────────██░░██──██░░██─██░░░░██░░░░██─██░░██─────────██░░██──██░░██───────────██░░██───────
─██░░██──██░░██████─██░░██████████─██░░██████████─██░░██████░░██─████░░░░░░████─██░░██████████─██░░██──██░░██████───────██░░██───────
─██░░██──██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██───████░░████───██░░░░░░░░░░██─██░░██──██░░░░░░██───────██░░██───────
─██████──██████████─██████████████─██████████████─██████████████─────██████─────██████████████─██████──██████████───────██████───────
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]

Cash_addict = addict.list(addict.my_root(), "Recovery", {}, "", function() end)

addict.divider(Cash_addict, "Recovery")

FSL_Money = addict.list(Cash_addict, "FSL Money", {"fslmoney"}, "Don't use this without FSL loaded!", function() end)

    addict.action(FSL_Money, "Give $1 Quintillion", {"givequint"}, "Gives you $1000000000000000000.", function()
        STATS.STAT_INCREMENT(util.joaat("BANK_BALANCE"), 1000000000000000000)
        util.toast("Going above 5 Quintillion can cause you to be unable to purchase anything.\n\nYou have been Warned")
    end)

    addict.action(FSL_Money, "Remove $1 Quintillion", {"removequint"}, "Removes $1000000000000000000.", function()
        local currentBank = util.stat_get_int64(util.joaat("BANK_BALANCE"))
        STATS.STAT_SET_INT(util.joaat("BANK_BALANCE"), 0)
        STATS.STAT_INCREMENT(util.joaat("BANK_BALANCE"), currentBank - 1000000000000000000)
    end)

    addict.action(FSL_Money, "Reset Bank Balance", {"resetmoney"}, "Sets bank balance to 0.", function()
        STATS.STAT_SET_INT(util.joaat("BANK_BALANCE"), 0)
    end)


    addict.toggle_loop(Cash_addict, "Bounty Loop Farm", {"bountyloop"}, "SPAWNS EVERYONE AT ECLIPSE TOWERS AND LOOPS EVERY 60 SECONDS.", function()
        Bountyonself = addict.ref_by_path("Players>All Players>Trolling>Loop Bounty>Place Bounty On Self")
        addict.trigger_command(Bountyonself)
        util.yield(1)
        addict.trigger_commands("loopbountyall")
        util.yield(1)
        addict.trigger_commands("apt1all")
        util.yield(1)
        addict.trigger_commands("apt1" .. PLAYER.GET_PLAYER_NAME(pid))
        util.yield(1)
        util.yield(1)
        Bountyonself = addict.ref_by_path("Players>All Players>Trolling>Loop Bounty>Place Bounty On Self")
        addict.trigger_command(Bountyonself)
        util.yield(1)
        addict.trigger_commands("loopbountyall")
        util.yield(60000)
    end)


--------------------------------------------------------------------------------------------------------------------
--[[
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─████████████████───██████████████─██████████████─██████████████─██████████████─██████████████─██████████─██████████████─██████──────────██████─██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░██████████──██░░██─██░░░░░░░░░░██─
─██░░██████░░██─██░░████████░░██───██░░██████░░██─██████░░██████─██░░██████████─██░░██████████─██████░░██████─████░░████─██░░██████░░██─██░░░░░░░░░░██──██░░██─██░░██████████─
─██░░██──██░░██─██░░██────██░░██───██░░██──██░░██─────██░░██─────██░░██─────────██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██████░░██──██░░██─██░░██─────────
─██░░██████░░██─██░░████████░░██───██░░██──██░░██─────██░░██─────██░░██████████─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██──██░░██─██░░██████████─
─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░██──██░░██─────██░░██─────██░░░░░░░░░░██─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██──██░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██████░░████───██░░██──██░░██─────██░░██─────██░░██████████─██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██──██░░██─██████████░░██─
─██░░██─────────██░░██──██░░██─────██░░██──██░░██─────██░░██─────██░░██─────────██░░██─────────────██░░██───────██░░██───██░░██──██░░██─██░░██──██░░██████░░██─────────██░░██─
─██░░██─────────██░░██──██░░██████─██░░██████░░██─────██░░██─────██░░██████████─██░░██████████─────██░░██─────████░░████─██░░██████░░██─██░░██──██░░░░░░░░░░██─██████████░░██─
─██░░██─────────██░░██──██░░░░░░██─██░░░░░░░░░░██─────██░░██─────██░░░░░░░░░░██─██░░░░░░░░░░██─────██░░██─────██░░░░░░██─██░░░░░░░░░░██─██░░██──██████████░░██─██░░░░░░░░░░██─
─██████─────────██████──██████████─██████████████─────██████─────██████████████─██████████████─────██████─────██████████─██████████████─██████──────────██████─██████████████─
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]

Protex = addict.list(addict.my_root(), "Protections", {}, "", function() end)

addict.divider(Protex, "Protections")

        addict.toggle_loop(Protex, "No Entity Spawn Toggled", {"noentities"}, "Attempt to fuck every single entity without exception. Not recommended but fuck it.", function(on_loop)
            local ct = 0
            for k,ent in pairs(entities.get_all_vehicles_as_handles()) do
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                entities.delete_by_handle(ent)
    
                ct = ct + 1
            end
            for k,ent in pairs(entities.get_all_peds_as_handles()) do
                if not PED.IS_PED_A_PLAYER(ent) then
                    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                    entities.delete_by_handle(ent)
    
                end
                ct = ct + 1
            end
            for k,ent in pairs(entities.get_all_objects_as_handles()) do
                if ent ~= PLAYER.PLAYER_PED_ID() then
                    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                    entities.delete_by_handle(ent)
                    ct = ct + 1
                end
            end
                for k,ent in pairs(entities.get_all_pickups_as_handles()) do
                    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                    entities.delete_by_handle(ent)
                    util.yield()
                return
            end
        end)

addict.toggle_loop(Protex,"Clear Shit Up Toggled", {"togglesuperc"}, "Toggled Clean up.", function()
    addict.trigger_commands("superc 1")
end)

	addict.click_slider(Protex,"Clear Shit Up", {"superc"}, "5 = peds, 4 = vehicles, 3 = objects, 2 = pickups, 1 = all \nNote: This excludes players and their vehicles.", 1, 5, 1, 1, function(on_change)
		if on_change == 5 then
			local count = 0
			for k,ent in pairs(entities.get_all_peds_as_handles()) do
				if not PED.IS_PED_A_PLAYER(ent) then
					ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
					entities.delete_by_handle(ent)
					util.yield()
					count = count + 1

				end
			end
            --util.toast("Fucked off " .. count .. " Peds removed. :)")
		end
		if on_change == 4 then
			local count = 0
			for k, ent in pairs(entities.get_all_vehicles_as_handles()) do
				local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1, false)
				if not PED.IS_PED_A_PLAYER(PedInSeat) then
					ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
					entities.delete_by_handle(ent)
					util.yield()
					count = count + 1
				end
			end
            --util.toast("Fucked off " .. count .. " Vehicles removed. :)")
			return
		end
		if on_change == 3 then
			local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				util.yield()
			    end
			return
            --util.toast("Fucked off " .. count .. " Objects removed. :)")
		end
		if on_change == 2 then
			local count = 0
			for k, ent in pairs(entities.get_all_pickups_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				util.yield()
			    end
			return
            --util.toast("Fucked off " .. count .. " Pickups removed. :)")
		end
		if on_change == 1 then
			local count = 0
			for k, ent in pairs(entities.get_all_peds_as_handles()) do
				if not PED.IS_PED_A_PLAYER(ent) then
					ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
					entities.delete_by_handle(ent)
					util.yield()
					count = count + 1
				end
			end
			for k, ent in pairs(entities.get_all_vehicles_as_handles()) do
				local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1, false)
				if not PED.IS_PED_A_PLAYER(PedInSeat) then
					ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
					entities.delete_by_handle(ent)
					util.yield()
					count = count + 1
				end
			end
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				util.yield()
			end
			for k,ent in pairs(entities.get_all_pickups_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				util.yield()
			end
			return
            --util.toast("Fucked Everything off " .. count .. " Entities removed. :)")
		end
	end)

-- Protection: Suspicious/invalid peds
addict.toggle_loop(Protex, "Suspicious Ped Deletion", {}, "Deletes peds with invalid models or crash-like traits", function()
    local myCoords = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
    local peds = entities.get_all_peds_as_handles()

    for _, ped in ipairs(peds) do
        if not PED.IS_PED_A_PLAYER(ped) then
            local model = ENTITY.GET_ENTITY_MODEL(ped)
            if not STREAMING.IS_MODEL_VALID(model) then
                try_delete_entity(ped)
                util.toast("Invalid ped deleted")
            end
        end
    end
end)

-- Protection: Event spoofing / name spoof checks
addict.toggle_loop(Protex, "Name Spoof Detection", {}, "Warns you if a player joins with a name similar to yours", function()
    local myName = players.get_name(players.user())
    for pid = 0, 31 do
        if players.exists(pid) and pid ~= players.user() then
            local name = players.get_name(pid)
            if name:lower():find(myName:lower()) then
                util.toast("Possible name spoof: " .. name)
            end
        end
    end
    util.yield(1000)
end)

-- Optional: Periodic memory cleanup
addict.action(Protex, "Force Cleanup Entities", {}, "Deletes unowned/unused entities", function()
    local allEnts = entities.get_all_objects_as_handles()
    for _, ent in ipairs(allEnts) do
        if not ENTITY.IS_ENTITY_ATTACHED(ent) then
            try_delete_entity(ent)
        end
    end
    util.toast("Cleanup completed!")
end)


--------------------------------------------------------------------------------------------------------------------
--[[
───────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████████████─██████─────────██████████████─██████████████─██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██████████─██░░██─────────██░░██████████─██░░██████████─██████░░██████─
─██░░██─────────██░░██─────────██░░██─────────██░░██─────────██░░██─────────────██░░██─────
─██░░██████████─██░░██████████─██░░██─────────██░░██████████─██░░██─────────────██░░██─────
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██─────────────██░░██─────
─██████████░░██─██░░██████████─██░░██─────────██░░██████████─██░░██─────────────██░░██─────
─────────██░░██─██░░██─────────██░░██─────────██░░██─────────██░░██─────────────██░░██─────
─██████████░░██─██░░██████████─██░░██████████─██░░██████████─██░░██████████─────██░░██─────
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─────██░░██─────
─██████████████─██████████████─██████████████─██████████████─██████████████─────██████─────
───────────────────────────────────────────────────────────────────────────────────────────
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████─────────██████████████─████████──████████─██████████████─████████████████───██████████████─
─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░░░██──██░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─
─██░░██████░░██─██░░██─────────██░░██████░░██─████░░██──██░░████─██░░██████████─██░░████████░░██───██░░██████████─
─██░░██──██░░██─██░░██─────────██░░██──██░░██───██░░░░██░░░░██───██░░██─────────██░░██────██░░██───██░░██─────────
─██░░██████░░██─██░░██─────────██░░██████░░██───████░░░░░░████───██░░██████████─██░░████████░░██───██░░██████████─
─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─────████░░████─────██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─
─██░░██████████─██░░██─────────██░░██████░░██───────██░░██───────██░░██████████─██░░██████░░████───██████████░░██─
─██░░██─────────██░░██─────────██░░██──██░░██───────██░░██───────██░░██─────────██░░██──██░░██─────────────██░░██─
─██░░██─────────██░░██████████─██░░██──██░░██───────██░░██───────██░░██████████─██░░██──██░░██████─██████████░░██─
─██░░██─────────██░░░░░░░░░░██─██░░██──██░░██───────██░░██───────██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░░░░░██─
─██████─────────██████████████─██████──██████───────██████───────██████████████─██████──██████████─██████████████─
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]

custselc = addict.list(addict.my_root(), "Select Players", {}, "", function(); end)

addict.toggle(custselc, "Exclude Selected", {"excludepussies"}, "", function(on_toggle)
    if on_toggle then
        excludeselected = true
    else
        excludeselected = false
    end
end)

addict.action(custselc, "Go to Players List", {"gotopl"}, "Shotcut for players list.", function()
    addict.trigger_commands("playerlist")
end)

addict.divider(custselc, "Misc Players")

selectedplayer = {}
for b = 0, 31 do
    selectedplayer[b] = false
end
excludeselected = false

cmd_id = {}
for i = 0, 31 do
    cmd_id[i] = 0
end

addict.action(custselc, "Kick", {}, "Kicks Them.", function()
    for pids = 0, 31 do
        if excludeselected then
            if pids ~= players.user() and not selectedplayer[pids] and players.exists(pids) then
                addict.trigger_commands("kick" .. PLAYER.GET_PLAYER_NAME(pids))
                util.yield()
            end
        else
            if pids ~= players.user() and selectedplayer[pids] and players.exists(pids) then
                addict.trigger_commands("kick" .. PLAYER.GET_PLAYER_NAME(pids))
                util.yield()
            end
        end
    end
end)

addict.action(custselc, "Blast Kick", {}, "Blocks Joins And Kicks Them.", function()
    for pids = 0, 31 do
        if excludeselected then
            if pids ~= players.user() and not selectedplayer[pids] and players.exists(pids) then
                addict.trigger_commands("kick" .. PLAYER.GET_PLAYER_NAME(pids))
                addict.trigger_commands("historyblock" .. PLAYER.GET_PLAYER_NAME(pids))
                util.yield()
            end
        else
            if pids ~= players.user() and selectedplayer[pids] and players.exists(pids) then
                addict.trigger_commands("kick" .. PLAYER.GET_PLAYER_NAME(pids))
                addict.trigger_commands("historyblock" .. PLAYER.GET_PLAYER_NAME(pids))
                util.yield()
            end
        end
    end
end)

addict.action(custselc, "Block Player", {}, "", function()
    for pids = 0, 31 do
        if excludeselected then
            if pids ~= players.user() and not selectedplayer[pids] and players.exists(pids) then
                addict.trigger_commands("historyblock" .. PLAYER.GET_PLAYER_NAME(pids))
                util.yield()
            end
        else
            if pids ~= players.user() and selectedplayer[pids] and players.exists(pids) then
                addict.trigger_commands("historyblock" .. PLAYER.GET_PLAYER_NAME(pids))
                util.yield()
            end
        end
    end
end)

addict.divider(custselc, "Select Players")

for pids = 0, 31 do
    if players.exists(pids) then
        cmd_id[pids] = addict.toggle(custselc, tostring(PLAYER.GET_PLAYER_NAME(pids)), {}, "PID - ".. pids, function(on_toggle)
            if on_toggle then
                selectedplayer[pids] = true
            else
                selectedplayer[pids] = false
            end
        end)
    end
end


addict.action(addict.my_root(), "Yeet", {"ye"}, "Instantly sending yourself to desktop.", function()
    addict.trigger_commands("yeet")
end)

addict.action(addict.my_root(), "Yeet Roulette", {"yeetroulette"}, "Take a chance by instantly sending yourself to desktop or use the Restart GTA V Option.", function()
    local pick = math.random(6)
    if pick == 4 then 
        addict.show_command_box("say " .. "I loose.")
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1.0)
        util.log("I loose.")
        util.yield(200)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1.0)
        addict.trigger_commands("ye")
    else
        util.toast("Lucky Bastard ;)")
		addict.show_command_box("say " .. "I got lucky.")
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1.0)
        util.yield(200)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1.0)
    end
end, nil, nil, COMMANDPERM_AGGRESSIVE)

addict.action(addict.my_root(), "Restart GTA V", {"restartgta"}, "Restarts your game, closes it Online. You will need to reinject (duh).", function(on_click)
    MISC.RESTART_GAME("E574A662ACAEFBB1")
    util.yield(3000)
    addict.trigger_commands("ye")
    addict.trigger_commands("yeet")
end)


addict.action(addict.my_root(), "Restart Script", {"restartaddictlua"}, "Restarts the script to check for updates. Or you may prefer it on hotkey to make it the first script in players list making spectate option faster to find.", function ()
    util.restart_script()
end)

---------------------------------------------------------------------------------------------------------------------------------------

-- Player's List Code

players.on_join(function(pid)

addict.divider(addict.player_root(pid), "Addict")

local Vehicle_Events = addict.list(addict.player_root(pid), "Vehicle Events", {"vehicleevents", ""})
local Trolling = addict.list(addict.player_root(pid), "Trolling", {"trolling", ""})
local Crashing = addict.list(addict.player_root(pid), "Crashes", {"crashes"}, "")
local Kicks = addict.list(addict.player_root(pid), "Kicks", {"kicks"}, "")
local Friendly = addict.list(addict.player_root(pid), "Friendly", {"friendly", ""})

addict.action(addict.player_root(pid), "Spectate", {"spec"}, "", function()
    if pids == PLAYER.PLAYER_ID() then
        util.toast("Spectating " .. PLAYER.GET_PLAYER_NAME(pids))
        return
    else
    end
    addict.trigger_commands("spectate" .. PLAYER.GET_PLAYER_NAME(pid))
    local hash = util.joaat("baller")
    local PlayerCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
    if STREAMING.IS_MODEL_A_VEHICLE(hash) then
        STREAMING.REQUEST_MODEL(hash)
        while not STREAMING.HAS_MODEL_LOADED(hash) do
            util.yield()
        end
        local Coords1 = PlayerCoords.y + 10
        local Coords2 = PlayerCoords.y - 10
    addict.trigger_commands("spectate" .. PLAYER.GET_PLAYER_NAME(pid) .. " off")
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------

--[[
─────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──██████─██████████████─██████──██████─██████████─██████████████─██████─────────██████████████────
─██░░██──██░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██────
─██░░██──██░░██─██░░██████████─██░░██──██░░██─████░░████─██░░██████████─██░░██─────────██░░██████████────
─██░░██──██░░██─██░░██─────────██░░██──██░░██───██░░██───██░░██─────────██░░██─────────██░░██────────────
─██░░██──██░░██─██░░██████████─██░░██████░░██───██░░██───██░░██─────────██░░██─────────██░░██████████────
─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██───██░░██───██░░██─────────██░░██─────────██░░░░░░░░░░██────
─██░░██──██░░██─██░░██████████─██░░██████░░██───██░░██───██░░██─────────██░░██─────────██░░██████████────
─██░░░░██░░░░██─██░░██─────────██░░██──██░░██───██░░██───██░░██─────────██░░██─────────██░░██────────────
─████░░░░░░████─██░░██████████─██░░██──██░░██─████░░████─██░░██████████─██░░██████████─██░░██████████────
───████░░████───██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██────
─────██████─────██████████████─██████──██████─██████████─██████████████─██████████████─██████████████────
─────────────────────────────────────────────────────────────────────────────────────────────────────────
───────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████──██████─██████████████─██████──────────██████─██████████████─██████████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░██████████──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██──██░░██─██░░██████████─██░░░░░░░░░░██──██░░██─██████░░██████─██░░██████████─
─██░░██─────────██░░██──██░░██─██░░██─────────██░░██████░░██──██░░██─────██░░██─────██░░██─────────
─██░░██████████─██░░██──██░░██─██░░██████████─██░░██──██░░██──██░░██─────██░░██─────██░░██████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░██──██░░██──██░░██─────██░░██─────██░░░░░░░░░░██─
─██░░██████████─██░░██──██░░██─██░░██████████─██░░██──██░░██──██░░██─────██░░██─────██████████░░██─
─██░░██─────────██░░░░██░░░░██─██░░██─────────██░░██──██░░██████░░██─────██░░██─────────────██░░██─
─██░░██████████─████░░░░░░████─██░░██████████─██░░██──██░░░░░░░░░░██─────██░░██─────██████████░░██─
─██░░░░░░░░░░██───████░░████───██░░░░░░░░░░██─██░░██──██████████░░██─────██░░██─────██░░░░░░░░░░██─
─██████████████─────██████─────██████████████─██████──────────██████─────██████─────██████████████─
───────────────────────────────────────────────────────────────────────────────────────────────────
]]

addict.divider(Vehicle_Events, "Vehicle Events")

local Vehicle_Speed = addict.list(Vehicle_Events, "Vehicle Speed", {"vehiclespeed", ""})

	addict.action(Vehicle_Speed,"Boost", {"boost"}, "Sets max speed of vehicle to 100 better for cars",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 100) 
		end
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(Vehicle_Speed,"Addict boost", {"addictboost"}, "Sets max speed of vehicle to 9999999 better for bikes",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 9999999) 
		end
    end, nil, nil, COMMANDPERM_FRIENDLY)

	addict.action(Vehicle_Speed,"Reset Speed", {"resetaccs"}, "Resets max speed of vehicle",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 1) 
		end
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(Vehicle_Speed,"Ruin Speed", {"trashaccs"}, "Sets max speed of vehicle to INT_MIN.",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, -2147483647) 
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    local Vehicle_Traj = addict.list(Vehicle_Events, "Vehicle Trajectory", {"vehicletraj", ""})
    
    addict.action(Vehicle_Traj, "Launch Forward", {}, "", function()
		local vehicle =  get_player_vehicle(pid,true)
		if vehicle then
			local force = ENTITY.GET_ENTITY_FORWARD_VECTOR(vehicle)
			force:mul(40.0)
			AUDIO.SET_VEHICLE_BOOST_ACTIVE(vehicle, true)
			ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 1, force.x, force.y, force.z, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
			AUDIO.SET_VEHICLE_BOOST_ACTIVE(vehicle, false)
		end
	end)

    addict.action(Vehicle_Traj, "Launch Backward", {}, "", function()
		local vehicle =  get_player_vehicle(pid,true)
		if vehicle then
			local force = ENTITY.GET_ENTITY_FORWARD_VECTOR(vehicle)
			force:mul(-40.0)
			AUDIO.SET_VEHICLE_BOOST_ACTIVE(vehicle, true)
			ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 1, force.x, force.y, force.z, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
			AUDIO.SET_VEHICLE_BOOST_ACTIVE(vehicle, false)
		end
	end)

	addict.action(Vehicle_Traj,"Launch Up", {"launchup"}, "Shoots player up",function()
        local vehicle = get_player_vehicle(pid,true)
        if vehicle then
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 0, 0, 10000, true, false, true)
        end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(Vehicle_Traj,"Launch Down", {"launchdown"}, "Shoots player down",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 0, 0, -10000, true, false, true)
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)
		
	addict.action(Vehicle_Traj,"East", {"eastveh"}, "Boosts player's vehicle in the East direction",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 10000, 0, 0, true, false, true)
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Traj,"West", {"westveh"}, "Boosts player's vehicle in the West direction",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, -10000, 0, 0, true, false, true)
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Traj,"South", {"southveh"}, "Boosts player's vehicle in the South direction",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 0, -10000, 0, true, false, true)
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Traj,"North", {"northveh"}, "Boosts player's vehicle in the North direction",function()
        local vehicle = get_player_vehicle(pid,true)
        if vehicle then
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 0, 10000, 0, true, false, true)
        end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

        Vehicle_kicks = addict.list(Vehicle_Events, "Vehicle Kick", {}, "", function(); end)

    addict.action(Vehicle_kicks, "Ped In Veh", {""}, "", function()
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local my_ped = PLAYER.PLAYER_PED_ID()
        local ped_coords = ENTITY.GET_ENTITY_COORDS(ped)
        local my_coords = ENTITY.GET_ENTITY_COORDS(my_ped)
        local hash = util.joaat("ratbike")
        request_model(hash)
        addict.trigger_commands("vehkick" .. players.get_name(pid))
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
        local veh = entities.create_vehicle(hash, ENTITY.GET_ENTITY_COORDS(ped, true), CAM.GET_FINAL_RENDERED_CAM_ROT(0).z)
        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(veh, true)
        TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(veh, true)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(veh, true, true)
        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
        ENTITY.SET_ENTITY_VISIBLE(veh, false)
        ChangeNetObjOwner(ped, veh)
        util.yield(50)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
        entities.set_can_migrate(entities.handle_to_pointer(ped), false)
        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
        ENTITY.SET_ENTITY_VISIBLE(veh, false)
        ENTITY.FREEZE_ENTITY_POSITION(veh, true)
        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(veh, true)
        PED.CAN_PED_RAGDOLL(ped, false)
        PED.SET_PED_CONFIG_FLAG(ped, 26, true)
        PED.SET_PED_INTO_VEHICLE(ped, veh, -1)
        TASK.TASK_ENTER_VEHICLE(ped, veh, 1000, -1, 1.0, 2|8|16, ped_coords)
        addict.trigger_commands("ragdoll" .. players.get_name(pid))
        util.yield(50)
        addict.trigger_commands("ragdoll" .. players.get_name(pid))
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(veh, my_coords.x, my_coords.y, my_coords.z)
        util.yield(500)
        entities.delete_by_handle(veh)
    end)

    addict.action(Vehicle_kicks, "Steal Vehicle ", {"steal"}, "Spawns a ped to take them out of their vehicle and drives away.", function() -- Skidded from femboy girl prishum
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = players.get_position(pid)
        local vehicle = PED.GET_VEHICLE_PED_IS_USING(ped)

        if not PED.IS_PED_IN_ANY_VEHICLE(ped, false) then
            util.toast(lang.get_localised(1067523721):gsub("{}", players.get_name(pid)))
        return end
        local spawned_ped = PED.CREATE_RANDOM_PED(pos.x, pos.y - 10, pos.z)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(spawned_ped)
        entities.set_can_migrate(entities.handle_to_pointer(spawned_ped), false)
        ENTITY.SET_ENTITY_INVINCIBLE(spawned_ped, true)
        ENTITY.SET_ENTITY_VISIBLE(spawned_ped, false)
        ENTITY.FREEZE_ENTITY_POSITION(spawned_ped, true)
        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(spawned_ped, true)
        PED.CAN_PED_RAGDOLL(spawned_ped, false)
        PED.SET_PED_CONFIG_FLAG(spawned_ped, 26, true)
        TASK.TASK_ENTER_VEHICLE(spawned_ped, vehicle, 1000, -1, 1.0, 2|8|16, pos)
        util.yield(1500)
        if TASK.GET_IS_TASK_ACTIVE(ped, 2) then
            repeat
                util.yield()
            until not TASK.GET_IS_TASK_ACTIVE(ped, 2) or PED.IS_PED_IN_ANY_VEHICLE(spawned_ped, false)
            TASK.TASK_VEHICLE_DRIVE_WANDER(spawned_ped, vehicle, 9999.0, 6)
            util.toast("Now your vehcile!")
        else
            util.toast("Failed to steal players vehicle. :/")
            entities.delete_by_handle(spawned_ped)
        end
        if not TASK.GET_IS_TASK_ACTIVE(spawned_ped) then
            repeat
            TASK.TASK_VEHICLE_DRIVE_WANDER(spawned_ped, vehicle, 9999.0, 6) -- giving task again cus doesnt work sometimes
            util.yield()
            until TASK.GET_IS_TASK_ACTIVE(spawned_ped)
        end
    end)

    addict.action(Vehicle_kicks, "Steal Vehicle V2", {"stealv2"}, "Changes the net object owner of the vehicle.", function()
        local pped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local veh = PED.GET_VEHICLE_PED_IS_IN(ped, true)
        local myveh = PED.GET_VEHICLE_PED_IS_IN(pped, true)
        PED.SET_PED_INTO_VEHICLE(pped, veh, -2)
        util.yield(50)
        ChangeNetObjOwner(veh, pid)
        ChangeNetObjOwner(veh, pped)
        util.yield(50)
        PED.SET_PED_INTO_VEHICLE(pped, myveh, -1)
    end)

    local Steal
    local fail_count = 0
    Steal = addict.action(Vehicle_kicks, "Kick from Vehicle", {"kickfromveh"}, "", function()
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = players.get_position(pid)
        local vehicle = PED.GET_VEHICLE_PED_IS_USING(ped)

        if PED.IS_PED_IN_VEHICLE(ped, vehicle, false) then
            local spawned_ped = PED.CREATE_RANDOM_PED(pos.x, pos.y - 10, pos.z)
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(spawned_ped)
            entities.set_can_migrate(entities.handle_to_pointer(spawned_ped), false)
            ENTITY.SET_ENTITY_INVINCIBLE(spawned_ped, true)
            ENTITY.SET_ENTITY_VISIBLE(spawned_ped, false)
            ENTITY.FREEZE_ENTITY_POSITION(spawned_ped, true)
            PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(spawned_ped, true)
            PED.CAN_PED_RAGDOLL(spawned_ped, false)
            PED.SET_PED_CONFIG_FLAG(spawned_ped, 26, true)
            TASK.TASK_ENTER_VEHICLE(spawned_ped, vehicle, 1000, -1, 1.0, 2|8|16, pos)
            util.yield(1000)
            if TASK.GET_IS_TASK_ACTIVE(ped, 2) then
                repeat
                    util.yield()
                until not TASK.GET_IS_TASK_ACTIVE(ped, 2)
            end
            if fail_count >= 5 then
                util.toast("Failed to steal player too many times. Disabling feature...")
                fail_count = 0
                Steal.value = false
            end
            if PED.IS_PED_IN_ANY_VEHICLE(spawned_ped, false) then
                util.yield(1500)
                TASK.TASK_VEHICLE_DRIVE_WANDER(spawned_ped, vehicle, 9999.0, 6)
                fail_count = 0
            else
                fail_count += 1
                entities.delete_by_handle(spawned_ped)
            end
            util.yield(500)
        end
    end, function()
        fail_count = 0
    end)

    
    addict.toggle_loop(Vehicle_kicks, "Auto Steal Vehicle", {"autosteal"}, "Changes the net object owner of the vehicle looped.", function()
        local pped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local veh = PED.GET_VEHICLE_PED_IS_IN(ped, true)
        local myveh = PED.GET_VEHICLE_PED_IS_IN(pped, true)
        PED.SET_PED_INTO_VEHICLE(pped, veh, -2)
        util.yield(50)
        ChangeNetObjOwner(veh, pid)
        ChangeNetObjOwner(veh, pped)
        util.yield(50)
        PED.SET_PED_INTO_VEHICLE(pped, myveh, -1)
    end)

    local Vehicle_Air = addict.list(Vehicle_Events, "Aircraft Events", {"airevent", ""})

	addict.action(Vehicle_Air,"Detach from Cargobob", {"detachcbob"}, "Detaches from Cargobob",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.DETACH_VEHICLE_FROM_ANY_CARGOBOB(vehicle)
            VEHICLE.DETACH_VEHICLE_FROM_ANY_CARGOBOB(vehicle)
            VEHICLE.DETACH_VEHICLE_FROM_ANY_CARGOBOB(vehicle)
            VEHICLE.DETACH_VEHICLE_FROM_ANY_CARGOBOB(vehicle)
            VEHICLE.DETACH_VEHICLE_FROM_ANY_CARGOBOB(vehicle)
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    	addict.action(Vehicle_Air,"Deploy Landing Gear", {"landing1"}, "",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.CONTROL_LANDING_GEAR(vehicle, 0)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Air,"Retract Landing Gear", {"landing0"}, "",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.CONTROL_LANDING_GEAR(vehicle, 3)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Air,"Disable Cargobob's Hook", {"nohook"}, "Disables cargobob's hook. when used, that cargobob's hook will no longer work",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.REMOVE_PICK_UP_ROPE_FOR_CARGOBOB(vehicle)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Air,"Strong Turbulence", {"turb1"}, "Makes turbulence stronger",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(vehicle, 1.0)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Air,"No Turbulence", {"turb0"}, "Makes turbulence weaker",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(vehicle, 0.0)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Air,"Set Propeller Speed at 100%", {"propel100"}, "",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_HELI_BLADES_FULL_SPEED(vehicle)	
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Air,"Set Propeller Speed at 0%", {"propel0"}, "",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_HELI_BLADES_SPEED(vehicle, 0.0)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.toggle_loop(Vehicle_Air,"Stop Propeller Blades", {"stopheli"}, "",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
            VEHICLE.SET_HELI_BLADES_SPEED(vehicle, -9999999)
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(Vehicle_Air, "Fuck Up Plane/Heli", {"fupplane"}, "If you do it to a plane may get an error its nothing, when sent to a heli it will break off the tailboom and anything with propellers", function(v)
        addict.trigger_commands("spin" .. players.get_name(pid))
        util.yield(100)
        addict.trigger_commands("spin" .. players.get_name(pid))
        addict.trigger_commands("flipveh" .. players.get_name(pid))
        addict.trigger_commands("poptyres" .. players.get_name(pid))
        addict.trigger_commands("lock" .. players.get_name(pid))
        addict.trigger_commands("detachwing" .. players.get_name(pid))
        addict.trigger_commands("detachwheel" .. players.get_name(pid))
        addict.trigger_commands("removedoors" .. players.get_name(pid))
        addict.trigger_commands("destroyprop" .. players.get_name(pid))
        addict.trigger_commands("breakofftailboom" .. players.get_name(pid))
    end)

    addict.toggle(Vehicle_Events, "Stealth Remote Control", {"stealthremote"}, "Enters there vehicle without them knowing and exits the same way. Note: It will disable them using that car until spawned again.", function(on_toggle)
	if on_toggle then
		addict.trigger_commands("tpmyspot")
		addict.trigger_commands("invisibility" .. " On")
        addict.trigger_commands("otr")
		addict.trigger_commands("tpveh" .. players.get_name(pid))
		addict.trigger_commands("rc" .. " On")
	else
        addict.trigger_commands("otr")
		addict.trigger_commands("rc" .. " Off")
		addict.trigger_commands("undoteleport")
		addict.trigger_commands("invisibility" .. " Off")
		end
	end)

    addict.toggle_loop(Vehicle_Events, "Glitch Vehicle V1", {"glitchvehv1"}, "", function()
        local player = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(player, false)
        local glitch_hash = util.joaat("p_spinning_anus_s")
        STREAMING.REQUEST_MODEL(glitch_hash)
        while not STREAMING.HAS_MODEL_LOADED(glitch_hash) do
            util.yield()
        end
        if not PED.IS_PED_IN_VEHICLE(player, PED.GET_VEHICLE_PED_IS_IN(player), false) then
            util.toast("Player isn't in a vehicle. :/")
            return
        end
        glitched_object = entities.create_object(glitch_hash, playerpos)
        ENTITY.SET_ENTITY_VISIBLE(glitched_object, false)
        ENTITY.SET_ENTITY_INVINCIBLE(glitched_object, true)
        ENTITY.SET_ENTITY_COLLISION(glitched_object, true, true)
        util.yield(100)
        entities.delete_by_handle(glitched_object)
        util.yield()
    end)
 
	addict.action(Vehicle_Events,"Repair Vehicle", {"fixveh"}, "Repairs player's vehicle", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
			VEHICLE.SET_VEHICLE_FIXED(veh)
		end
    end, nil, nil, COMMANDPERM_FRIENDLY)

	addict.action(Vehicle_Events,"Repair Vehicle Shell", {"repair"}, "Repairs player's vehicle but don't repair it's engine", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
			VEHICLE.SET_VEHICLE_DEFORMATION_FIXED(veh)
		end
    end, nil, nil, COMMANDPERM_FRIENDLY)

	addict.action(Vehicle_Events,"Addict Upgrade Vehicle", {"ugveh"}, "Note: Spam it if don't work first time. Upgrades player's vehicle.",function()
		upgrade_vehicle(pid)
		upgrade_vehicle(pid)
        upgrade_vehicle(pid)
        upgrade_vehicle(pid)
		upgrade_vehicle(pid)
        upgrade_vehicle(pid)
        upgrade_vehicle(pid)
		upgrade_vehicle(pid)
        upgrade_vehicle(pid)
        upgrade_vehicle(pid)
    end, nil, nil, COMMANDPERM_FRIENDLY)
    
	addict.action(Vehicle_Events,"GodVeh On", {"invon"}, "Gives invincibility to player's vehicle",function(vehicle)
		local vehicle = get_player_veh(pid,true)
		if vehicle then	
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
            ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
		end
	end, nil, nil, COMMANDPERM_FRIENDLY)

	addict.action(Vehicle_Events,"GodVeh Off", {"invoff"}, "Removes invincibility from player's vehicle",function()
		local vehicle = get_player_veh(pid,true)
		if vehicle then	
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
            ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
			ENTITY.SET_ENTITY_INVINCIBLE(vehicle, false)
		end
	end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(Vehicle_Events,"Detach Trailer", {"detachtrailer"}, "Detaches attached trailer",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.DETACH_VEHICLE_FROM_TRAILER(vehicle)
            VEHICLE.DETACH_VEHICLE_FROM_TRAILER(vehicle) 
            VEHICLE.DETACH_VEHICLE_FROM_TRAILER(vehicle) 
            VEHICLE.DETACH_VEHICLE_FROM_TRAILER(vehicle) 
            VEHICLE.DETACH_VEHICLE_FROM_TRAILER(vehicle) 
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Events,"Lock Doors", {"lockveh"}, "Locks the doors",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 4) 
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Events,"Unlock Doors", {"unlockveh"}, "Unlocks the doors",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 1)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Events,"Make Vehicle Drivable", {"engineon"}, "Makes player's vehicle drivable again",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_VEHICLE_UNDRIVEABLE(vehicle, false)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

	addict.action(Vehicle_Events,"Make Vehicle Undrivable", {"engineoff"}, "Makes player's vehicle undrivable",function()
		local vehicle = get_player_vehicle(pid,true)
		if vehicle then
			VEHICLE.SET_VEHICLE_UNDRIVEABLE(vehicle, true)		
		end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(Vehicle_Events,"Honk Car", {"honkcar"}, "Honks.", function(on)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
            VEHICLE.START_VEHICLE_HORN(veh, 200, util.joaat("HELDDOWN"), true)
		end
	end)

    addict.action(Vehicle_Events, "Sound Car Alarm", {"soundalarm"}, "", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
            VEHICLE.SET_VEHICLE_ALARM(veh, true)
            VEHICLE.START_VEHICLE_ALARM(veh)
        end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(Vehicle_Events, "Phantom Ram", {"phantomram"}, "", function()
        local hash = util.joaat("phantom2")
        local PlayerCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        if STREAMING.IS_MODEL_A_VEHICLE(hash) then
            STREAMING.REQUEST_MODEL(hash)
            while not STREAMING.HAS_MODEL_LOADED(hash) do
                util.yield()
            end
            local Coords1 = PlayerCoords.y + 10
            local Coords2 = PlayerCoords.y - 10
            local veh1 = VEHICLE.CREATE_VEHICLE(hash, PlayerCoords.x, Coords1, PlayerCoords.z, -180, true, false, true)
            --local veh2 = VEHICLE.CREATE_VEHICLE(hash, PlayerCoords.x, Coords2, PlayerCoords.z, 0, true, false, true)
            ENTITY.SET_ENTITY_VELOCITY(veh1, 0, -100, 0)
            --ENTITY.SET_ENTITY_VELOCITY(veh2, 0, 100, 0)
            util.yield(500)
            entities.delete_by_handle(veh1)
        end
    end)

    addict.action(Vehicle_Events, "Lazer Ram", {"lazerram"}, "", function()
        local hash = util.joaat("lazer")
        local PlayerCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        if STREAMING.IS_MODEL_A_VEHICLE(hash) then
            STREAMING.REQUEST_MODEL(hash)
            while not STREAMING.HAS_MODEL_LOADED(hash) do
                util.yield()
            end
            local Coords1 = PlayerCoords.y + 10
            local Coords2 = PlayerCoords.y - 10
            local veh1 = VEHICLE.CREATE_VEHICLE(hash, PlayerCoords.x, Coords1, PlayerCoords.z, -180, true, false, true)
            --local veh2 = VEHICLE.CREATE_VEHICLE(hash, PlayerCoords.x, Coords2, PlayerCoords.z, 0, true, false, true)
            ENTITY.SET_ENTITY_VELOCITY(veh1, 0, -100, 0)
            --ENTITY.SET_ENTITY_VELOCITY(veh2, 0, 100, 0)
            util.yield(500)
            entities.delete_by_handle(veh1)
        end
    end)

    addict.action(Vehicle_Events,"Kamikaze lazer", {"kamikazelazer"}, "", function(on)
        local ped = 2459507570
        STREAMING.REQUEST_MODEL(ped)
        while not STREAMING.HAS_MODEL_LOADED(ped) do
            util.yield(100)
        end
        local lazer = 3013282534
        STREAMING.REQUEST_MODEL(lazer)
        while not STREAMING.HAS_MODEL_LOADED(lazer) do
            util.yield(100)
        end
        local pid = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        local spawn = VEHICLE.CREATE_VEHICLE(lazer, pid.x, pid.y, pid.z+20, 0, true, false, false)
        local pedspawn = PED.CREATE_PED(26, ped, pid.x, pid.y, pid.z+20, 0, true, false)
        PED.SET_PED_INTO_VEHICLE(pedspawn, spawn, -1)
        VEHICLE.SET_VEHICLE_ENGINE_HEALTH(spawn, -20)
        ENTITY.SET_ENTITY_ROTATION(spawn, -90.0, 0.0, 0.0, 1, true)
        VEHICLE.SET_VEHICLE_FORWARD_SPEED(spawn, 100)
        util.yield(3000)
    end)

    addict.action(Vehicle_Events, "Fuck Up Car", {"fupcar"}, "", function(v)
        addict.trigger_commands("spin" .. players.get_name(pid))
        util.yield(100)
        addict.trigger_commands("spin" .. players.get_name(pid))
        addict.trigger_commands("poptyres" .. players.get_name(pid))
        addict.trigger_commands("lock" .. players.get_name(pid))
        addict.trigger_commands("detachwheel" .. players.get_name(pid))
        addict.trigger_commands("removedoors" .. players.get_name(pid))
    end)

    addict.action(Vehicle_Events, "Attach Sirens Under Vehicle", {"siren"}, "Attaches annoying cop car under there car with the sirens on. 48 spawned max before stands trottlers delete them.", function()
        if not PED.IS_PED_IN_ANY_VEHICLE(pid) then
            local player_vehicle = get_player_vehicle(pid, true)
            local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        V3 = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        hash = util.joaat("policeold2")
        ped_hash = util.joaat("mp_m_freemode_01")
        if STREAMING.IS_MODEL_A_VEHICLE(hash) then
            STREAMING.REQUEST_MODEL(hash)
            while not STREAMING.HAS_MODEL_LOADED(hash) do
                util.yield()
            end
            local aab = 
            {
                x = -5784.258301,
                y = -8289.385742,
                z = -136.411270
            }
            ENTITY.SET_ENTITY_VISIBLE(ped_to_kidnap, false)
            ENTITY.FREEZE_ENTITY_POSITION(ped_to_kidnap, false)
            siren_vehicle = entities.create_vehicle(hash, ENTITY.GET_ENTITY_COORDS(V3, true), CAM.GET_FINAL_RENDERED_CAM_ROT(0).z)
            while not STREAMING.HAS_MODEL_LOADED(ped_hash) do
                STREAMING.REQUEST_MODEL(ped_hash)
                util.yield()
            end
            ped_to_kidnap = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
            ped_to_drive = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
            ENTITY.SET_ENTITY_INVINCIBLE(siren_vehicle, true)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(siren_vehicle, ped_to_kidnap, 0, 0, 1, -1, 0, 0, 0, false,
                true, true, false, 0, false)
            coords_ped = v3()
            coords_ped = ENTITY.GET_ENTITY_COORDS(V3, true)
            coords_ped.x = coords_ped.x + math.random(-20, 20)
            coords_ped.y = coords_ped.y + math.random(-20, 20)
            coords_ped.z = coords_ped.z
            ENTITY.SET_ENTITY_COORDS(ped_to_kidnap, coords_ped.x, coords_ped.y, coords_ped.z, false, false, false, false)
            PED.SET_PED_INTO_VEHICLE(ped_to_drive, siren_vehicle, -1)
            VEHICLE.SET_VEHICLE_ENGINE_ON(siren_vehicle, true, true, false)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(siren_vehicle, true, true)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(siren_ped, true, true)
            PED.SET_PED_INTO_VEHICLE(siren_ped, siren_vehicle, -1)
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(siren_vehicle)
            ENTITY.SET_ENTITY_INVINCIBLE(siren_vehicle, true)
            VEHICLE.SET_VEHICLE_SIREN(siren_vehicle, true)
            ENTITY.SET_ENTITY_VISIBLE(siren_vehicle, false, 0)
            ENTITY.SET_ENTITY_VISIBLE(siren_ped, false, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(siren_vehicle, player_vehicle, 0, 0, 0, -3, 0, 0, 0, 0, false, true, false, 0, true)
            VEHICLE.SET_VEHICLE_WILL_FORCE_OTHER_VEHICLES_TO_STOP(siren_vehicle, true)
            ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(siren_vehicle, player_vehicle, true)
            VEHICLE.SET_VEHICLE_SIREN(siren_vehicle, true)
            util.yield(1)
            entities.delete_by_handle(ped_to_kidnap)
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ped_hash)
        else
            util.toast("Player is not in a vehicle. :/")
            end
        end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)


    givevehicle = addict.list(Vehicle_Events, "Give Player A Vehicle", {}, "", function(); end)

    addict.action(givevehicle, "Give A UFO", {"giveufo"}, "", function()
        addict.trigger_commands("stopspectating")
        addict.trigger_commands("spectate" .. players.get_name(pid))
        addict.trigger_commands("giveotr" .. players.get_name(pid))
        util.yield(2000)
        local vehicleHash = util.joaat("hydra")
        request_model(vehicleHash)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid))
        jet = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
        VEHICLE.SET_VEHICLE_ENGINE_ON(jet, true, true, true)
        ENTITY.SET_ENTITY_INVINCIBLE(jet, true)
        VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(jet, 0.0)
        NETWORK.SET_ENTITY_LOCALLY_INVISIBLE(jet, true)
        ENTITY.SET_ENTITY_VISIBLE(jet, true, 0)
------------Ufo Object------------------------------------------------------------------------------------------------------------------------------------------------------------
        local id = get_closest_vehicle(entity)
        local playerpos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid))
        playerpos.z = playerpos.z + 3
        local ufo_object = util.joaat("sum_prop_dufocore_01a")
        STREAMING.REQUEST_MODEL(ufo_object)
        while not STREAMING.HAS_MODEL_LOADED(ufo_object) do
            util.yield()
        end
        local object1 = entities.create_object(ufo_object, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        ENTITY.ATTACH_ENTITY_TO_ENTITY(object1, jet, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(object1, jet)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(jet, object1, 0, 0, 3, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(object1, jet, 0, 0, 3, 0, 0, 0, 0, 0, false, true, false, 0, true)
        --NETWORK.SET_ENTITY_LOCALLY_INVISIBLE(id, true)
        util.yield(500)
        addict.trigger_commands("stopspectating")
    end, nil, nil, COMMANDPERM_FRIENDLY)

        addict.action(givevehicle, "Give A MK2", {"givemk2"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " oppressor2")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Deluxo", {"givedeluxo"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " deluxo")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Festival Bus", {"givefestivalbus"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " pbus2")
    end, nil, nil, COMMANDPERM_FRIENDLY)
    
    addict.action(givevehicle, "Give A Forklift", {"giveforklift"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " forklift")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Khanjali", {"givekhanjali"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " khanjali")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Future Shock Sasquatch", {"givesasquatch"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " monster4")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Future Shock Scarab", {"givescarab"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " scarab2")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give Aqua Blazer", {"giveblazer"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " blazer5")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Lazer", {"givelazer"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " lazer")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Hydra", {"givehydra"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " hydra")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Starling", {"givestarling"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " starling")
    end, nil, nil, COMMANDPERM_FRIENDLY)

    addict.action(givevehicle, "Give A Pyro", {"givepyro"}, "", function()
        addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " pyro")
    end, nil, nil, COMMANDPERM_FRIENDLY)

	addict.action(givevehicle,"Spawn them a vehicle", {}, "Spawns a vehicle on target player", function()
		addict.show_command_box("as " .. PLAYER.GET_PLAYER_NAME(pid) .. " ")
    end, nil, nil, COMMANDPERM_FRIENDLY)

---------------------------------------------------------------------------------------------------------------------------------------------
--[[
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─████████████████───██████████████─██████─────────██████─────────██████████─██████──────────██████─██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░██─────────██░░██─────────██░░░░░░██─██░░██████████──██░░██─██░░░░░░░░░░██─
─██████░░██████─██░░████████░░██───██░░██████░░██─██░░██─────────██░░██─────────████░░████─██░░░░░░░░░░██──██░░██─██░░██████████─
─────██░░██─────██░░██────██░░██───██░░██──██░░██─██░░██─────────██░░██───────────██░░██───██░░██████░░██──██░░██─██░░██─────────
─────██░░██─────██░░████████░░██───██░░██──██░░██─██░░██─────────██░░██───────────██░░██───██░░██──██░░██──██░░██─██░░██─────────
─────██░░██─────██░░░░░░░░░░░░██───██░░██──██░░██─██░░██─────────██░░██───────────██░░██───██░░██──██░░██──██░░██─██░░██──██████─
─────██░░██─────██░░██████░░████───██░░██──██░░██─██░░██─────────██░░██───────────██░░██───██░░██──██░░██──██░░██─██░░██──██░░██─
─────██░░██─────██░░██──██░░██─────██░░██──██░░██─██░░██─────────██░░██───────────██░░██───██░░██──██░░██████░░██─██░░██──██░░██─
─────██░░██─────██░░██──██░░██████─██░░██████░░██─██░░██████████─██░░██████████─████░░████─██░░██──██░░░░░░░░░░██─██░░██████░░██─
─────██░░██─────██░░██──██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░██─██░░██──██████████░░██─██░░░░░░░░░░██─
─────██████─────██████──██████████─██████████████─██████████████─██████████████─██████████─██████──────────██████─██████████████─
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]

    addict.divider(Trolling, "Trolling")
 
 -- Cargobob Troll: Hook Target's Car, Fly & Drop into Ocean 🌊✈️🪝

-- 🧰 Utility: Request control of an entity
local function request_control(entity)
    local timeout = 1000
    local start = util.current_time_millis()
    while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity) do
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
        util.yield()
        if util.current_time_millis() - start > timeout then
            return false
        end
    end
    return true
end

-- 🚁 Spawn cargobob + AI pilot
local function spawn_cargobob_with_pilot(pos)
    local heli_hash = util.joaat("cargobob")
    local ped_hash = util.joaat("s_m_m_pilot_01")

    -- Load models
    STREAMING.REQUEST_MODEL(heli_hash)
    STREAMING.REQUEST_MODEL(ped_hash)
    while not STREAMING.HAS_MODEL_LOADED(heli_hash) or not STREAMING.HAS_MODEL_LOADED(ped_hash) do
        util.yield()
    end

    -- Spawn cargobob
    local heli = VEHICLE.CREATE_VEHICLE(heli_hash, pos.x, pos.y, pos.z + 10, 0.0, true, false)
    ENTITY.SET_ENTITY_INVINCIBLE(heli, true)
    VEHICLE.SET_HELI_BLADES_FULL_SPEED(heli)
    VEHICLE.SET_VEHICLE_ENGINE_ON(heli, true, true, false)

    -- Spawn pilot
    local pilot = PED.CREATE_PED_INSIDE_VEHICLE(heli, 1, ped_hash, -1, true, false)
    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pilot, true)
    TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pilot, true)

    return heli, pilot
end

-- 🪝 Attach vehicle to cargobob
local function attach_vehicle_to_heli(veh, heli)
    if not request_control(veh) then
        util.toast("Failed to control vehicle.")
        return false
    end
    if not request_control(heli) then
        util.toast("Failed to control cargobob.")
        return false
    end

    ENTITY.ATTACH_ENTITY_TO_ENTITY(
        veh,
        heli,
        0,
        0.0, -5.5, -1.5,
        0.0, 0.0, 0.0,
        false,
        true,
        false,
        false,
        2,
        true
    )

    return true
end

-- ✈️ Fly heli with target vehicle and drop it
local function fly_and_drop(heli, pilot, veh)
    local start = ENTITY.GET_ENTITY_COORDS(heli)
    local dest = {
        x = start.x + 5000.0,
        y = start.y,
        z = start.z + 50.0
    }

    TASK.TASK_HELI_MISSION(
        pilot,
        heli,
        0, 0,
        dest.x, dest.y, dest.z,
        4,
        60.0,
        0.0,
        0.0,
        100.0,
        10.0,
        0.0,
        0
    )

    util.toast("Towing vehicle...")

    -- Detach after delay mid-flight
    util.create_thread(function()
        util.yield(75000)
        if ENTITY.IS_ENTITY_ATTACHED(veh) then
            ENTITY.DETACH_ENTITY(veh, true, true)
            util.toast("Dropping vehicle into the ocean.")
            util.yield(3000)
            addict.trigger_commands("superc 4")
            util.yield(100)
            addict.trigger_commands("superc 5")
        end
    end)
end

-- 🔁 Main logic for specific player
local function tow_and_drop_player_vehicle(pid)
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    if not PED.IS_PED_IN_ANY_VEHICLE(ped, false) then
        util.toast("Player is not in a vehicle.")
        return
    end

    local veh = PED.GET_VEHICLE_PED_IS_IN(ped, false)
    local pos = ENTITY.GET_ENTITY_COORDS(veh)

    local heli, pilot = spawn_cargobob_with_pilot(pos)
    if not heli or not pilot then
        util.toast("Failed to spawn cargobob or pilot.")
        return
    end

    util.yield(1000)

    if attach_vehicle_to_heli(veh, heli) then
        fly_and_drop(heli, pilot, veh)
    else
        util.toast("Could not attach vehicle.")
        ENTITY.DELETE_ENTITY(heli)
        ENTITY.DELETE_ENTITY(pilot)
    end
end
 
addict.action(Trolling, "Cargobob Kidnap", {"cargonap"}, "Spawns a cargobob, hooks their vehicle, and drops it.", function()
    tow_and_drop_player_vehicle(pid) 
end)

    addict.action(Trolling, 'Cargobob Confiscate', {}, 'Featuring a magnet so you don\'t need to worry about scratches or dents!', function()
        local p_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local target_v = PED.GET_VEHICLE_PED_IS_IN(p_ped, true)
        local c = players.get_position(pid)
        c.z += 10
        if target_v == 0 then 
            util.toast('Player does not have a vehicle')
            return
        end
        local v_hash = util.joaat('cargobob2')
        local p_hash = util.joaat('u_m_y_croupthief_01')
        util.request_model(v_hash, 2000)
        util.request_model(p_hash, 2000)
        local veh = entities.create_vehicle(v_hash, c, ENTITY.GET_ENTITY_HEADING(target_v))
        local pilot = entities.create_ped(28, p_hash, c, 0.0)
        VEHICLE.SET_CARGOBOB_FORCE_DONT_DETACH_VEHICLE(veh, true)
        VEHICLE.SET_HELI_BLADES_FULL_SPEED(veh)
        VEHICLE.CREATE_PICK_UP_ROPE_FOR_CARGOBOB(veh, 1)
        PED.SET_PED_INTO_VEHICLE(pilot, veh, -1)    
        VEHICLE.SET_CARGOBOB_PICKUP_MAGNET_ENSURE_PICKUP_ENTITY_UPRIGHT(target_v, true)
        VEHICLE.SET_CARGOBOB_PICKUP_MAGNET_PULL_STRENGTH(veh, 1000.0)
        VEHICLE.SET_CARGOBOB_PICKUP_MAGNET_FALLOFF(veh, 1000.0)
        entities.request_control(target_v)
        ENTITY.SET_ENTITY_INVINCIBLE(target_v, true)
        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
        VEHICLE.SET_VEHICLE_GRAVITY(target_v, false)
        local v = ENTITY.GET_ENTITY_VELOCITY(target_v)
        ENTITY.SET_ENTITY_VELOCITY(veh, 0, 0, 60.0)
        VEHICLE.ATTACH_VEHICLE_TO_CARGOBOB(veh, target_v, 0, 0.0, 0.0, 5.0)
        ENTITY.SET_ENTITY_ANGULAR_VELOCITY(target_v, 0, 0, 0)
        TASK.TASK_HELI_MISSION(pilot, veh, 0, 0, math.random(1000), math.random(1000), 300, 4, 200.0, 0.0, 0, 100, 1000, 0.0, 16)
        VEHICLE.SET_HELI_TURBULENCE_SCALAR(veh, 0.0)
    end)


 
    addict.toggle_loop(Trolling, "Push player up", {"pushup"}, "Works best if the player is walking on flat ground.", function()
        local vehicle = 4174679674 -- 1518533038
        STREAMING.REQUEST_MODEL(vehicle)
        while not STREAMING.HAS_MODEL_LOADED(vehicle) do
            util.yield(100)
        end
        local coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        local spawn = VEHICLE.CREATE_VEHICLE(vehicle, coords.x, coords.y, coords.z-3, 0, true, false, false)
        ENTITY.SET_ENTITY_VISIBLE(spawn, false, false)
        ENTITY.SET_ENTITY_ROTATION(spawn, 90.0, 0.0, 0.0, 1, true)
        util.yield(100)
        VEHICLE.SET_VEHICLE_FORWARD_SPEED(spawn, 200)
        util.yield(2000)
        util.yield(2000)
        request_control_of_entity(spawn)
        addict.trigger_commands("superc 4")
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicle)
    end)
  
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    efucks = addict.list(Trolling, "Entity Fuck", {""}, "", function(); end)



    Stack_Ents  = addict.list(efucks, "Stack Entitys", {""}, "", function(); end)
    

-- CONFIG
local STACK_HEIGHT = 2.5
local SEARCH_RADIUS = 150.0

-- SETTINGS
local stack_mode = "All"
local blackhole_mode = false
local explode_on_arrival = false

-- Menu options
local stack_options = {"All", "Peds", "Vehicles", "Objects"}

-- Get entity list by pool
local function get_entities(pool_type)
    if pool_type == "peds" then
        return entities.get_all_peds_as_handles()
    elseif pool_type == "vehicles" then
        return entities.get_all_vehicles_as_handles()
    elseif pool_type == "objects" then
        return entities.get_all_objects_as_handles()
    else
        return {}
    end
end


-- Main stacking logic
local function stack_entities()
    local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local base_pos = ENTITY.GET_ENTITY_COORDS(player_ped, true)

    local selected = {}

    -- Gather entities based on chosen mode
    if stack_mode == "All" or stack_mode == "Peds" then
        for _, ped in ipairs(get_entities("peds")) do
            if ped ~= player_ped and v3.distance(base_pos, ENTITY.GET_ENTITY_COORDS(ped, true)) <= SEARCH_RADIUS then
                table.insert(selected, ped)
            end
        end
    end
    if stack_mode == "All" or stack_mode == "Vehicles" then
        for _, veh in ipairs(get_entities("vehicles")) do
            if v3.distance(base_pos, ENTITY.GET_ENTITY_COORDS(veh, true)) <= SEARCH_RADIUS then
                table.insert(selected, veh)
            end
        end
    end
    if stack_mode == "All" or stack_mode == "Objects" then
        for _, obj in ipairs(get_entities("objects")) do
            if v3.distance(base_pos, ENTITY.GET_ENTITY_COORDS(obj, true)) <= SEARCH_RADIUS then
                table.insert(selected, obj)
            end
        end
    end

    -- Stack them
    for i, ent in ipairs(selected) do
        local target_pos
        if blackhole_mode then
            target_pos = base_pos
        else
            target_pos = v3.new(base_pos.x, base_pos.y, base_pos.z + (i * STACK_HEIGHT))
        end

        ENTITY.SET_ENTITY_COORDS(ent, target_pos.x, target_pos.y, target_pos.z, false, false, false, true)

        if explode_on_arrival then
            FIRE.ADD_EXPLOSION(target_pos.x, target_pos.y, target_pos.z, 4, 1.0, true, false, 0.0)
        end
    end

    util.toast("Pulled in " .. #selected .. " entities.")
end


menu.list_select(Stack_Ents, "Stack Entity Type", {"stacktype"}, "Choose which types to stack", stack_options, 1, function(index, name)
    stack_mode = name
end)

menu.toggle(Stack_Ents, "Black Hole Mode", {"blackhole"}, "Teleports all to exact same point instead of stacking", function(val)
    blackhole_mode = val
end)

menu.toggle(Stack_Ents, "Explode on Arrival", {"explodestack"}, "Explodes each entity when it arrives", function(val)
    explode_on_arrival = val
end)

menu.toggle_loop(Stack_Ents, "Activate Entity Pull", {"pullstack"}, "Pull selected entities into one place, Note: if you are close to the target it will pull your ped in if selected.", function()
    stack_entities()
end)

    local function ensure_model(hash)
    if not STREAMING.IS_MODEL_VALID(hash) then return false end
    STREAMING.REQUEST_MODEL(hash)
    local timeout = 1000
    while not STREAMING.HAS_MODEL_LOADED(hash) and timeout > 0 do
        util.yield(10)
        timeout = timeout - 1
    end
    return STREAMING.HAS_MODEL_LOADED(hash)
end

menu.action(
    efucks,
    "Replace Nearby Peds with Whales & Vechs with Cargo Planes",
    {},
    "Deletes all peds within 100m and spawns whales. Deletes all vehicles within 100m and spawns cargoplanes.",
    function()
        local userPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local userPos = ENTITY.GET_ENTITY_COORDS(userPed)
        local radius  = 100.0

        local whaleHash = util.joaat("A_C_HumpBack")
        local planeHash = util.joaat("cargoplane")

        if not ensure_model(whaleHash) then
            util.toast("Failed to load whale model")
            return
        end
        if not ensure_model(planeHash) then
            util.toast("Failed to load cargo plane model")
            return
        end

        -- Replace peds
        for _, ped in ipairs(entities.get_all_peds_as_handles()) do
            if ped ~= userPed and not PED.IS_PED_INJURED(ped) then
                local pedPos = ENTITY.GET_ENTITY_COORDS(ped)
                if v3.distance(userPos, pedPos) <= radius then
                    entities.delete_by_handle(ped)
                    entities.create_ped(28, whaleHash, pedPos, math.random(0, 360))
                end
            end
        end

        -- Replace vehicles
        for _, veh in ipairs(entities.get_all_vehicles_as_handles()) do
            local vehPos = ENTITY.GET_ENTITY_COORDS(veh)
            if v3.distance(userPos, vehPos) <= radius then
                entities.delete_by_handle(veh)
                local spawnPos = v3.new(vehPos.x, vehPos.y, vehPos.z + 10)
                entities.create_vehicle(planeHash, spawnPos, math.random(0, 360))
            end
        end

        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(whaleHash)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(planeHash)

        util.toast("Replaced nearby peds with whales and vehicles with cargoplanes!")
    end
)
    
    addict.action(efucks, "Metro Madness", {""}, "Use with caution this will lag your game if you can see it or close to it, restart the lua and clear area to stop it quicker.", function()
            while true do
            local coords = player_coords(pid)
            coords.x = coords.x
            coords.y = coords.y + -30
            coords.z = coords.z
            util.request_model(util.joaat("metrotrain"))
            STREAMING.REQUEST_MODEL(util.joaat("metrotrain"))
            while not STREAMING.HAS_MODEL_LOADED(util.joaat("metrotrain")) do
                util.yield()
            end
            local trailer = entities.create_object(util.joaat("prop_snow_truktrailer_01a"),  coords, 0.0)
        for i = 1, 50 do
            local dubsta = entities.create_vehicle(util.joaat("metrotrain"),  coords, 0.0)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(dubsta, true, true)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(trailer, true, true)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(trailer, dubsta, 0, 0, 0, 0, 0, 0, 0, true, true, false, true, 1, true)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(trailer, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
            util.yield(5)
            ENTITY.DETACH_ENTITY(trailer, dubsta)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(dubsta, trailer, 0, 0, 0, 0, 0, 0, 0, true, true, false, true, 1, true)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(dubsta, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
            util.yield(5)
            ENTITY.DETACH_ENTITY(dubsta, trailer)
            entities.delete_by_handle(dubsta)
            entities.delete_by_handle(trailer)
            end
        end
    end)

    addict.action(efucks, "Drunk Pilot", {"drunkpilot"}, "", function()
            local coords = player_coords(pid)
            coords.x = coords.x
            coords.y = coords.y + -30
            coords.z = coords.z
            STREAMING.REQUEST_MODEL(745926877)
            while not STREAMING.HAS_MODEL_LOADED(745926877) do
                util.yield()
            end
            for i = 1, 50 do
            local heli_vehicle = entities.create_vehicle(745926877, coords, 0.0)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(heli_vehicle, true, true)
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(heli_vehicle)
            ENTITY.SET_ENTITY_INVINCIBLE(heli_vehicle, true)
            VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(heli_vehicle, true)
            VEHICLE.SET_VEHICLE_ENGINE_ON(heli_vehicle, true, true, true)
            VEHICLE.SET_HELI_BLADES_FULL_SPEED(heli_vehicle)
            ENTITY.SET_ENTITY_VISIBLE(heli_vehicle, true, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(heli_vehicle, playerpos, 0, 0, -1, 2.5, 0, 180, 0, 0, false, true, false, 0, true)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(heli_vehicle, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
            ENTITY.SET_ENTITY_VELOCITY(heli_vehicle, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
            ENTITY.SET_ENTITY_MAX_SPEED(heli_vehicle, 500.0)
            ENTITY.SET_ENTITY_ROTATION(heli_vehicle, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
            VEHICLE.SET_VEHICLE_WILL_FORCE_OTHER_VEHICLES_TO_STOP(heli_vehicle, true)

            STREAMING.REQUEST_MODEL(970385471)
            while not STREAMING.HAS_MODEL_LOADED(970385471) do
                util.yield()
            end
            for i = 1, 50 do

            local craft_vehicle2 = entities.create_vehicle(970385471, coords, 0.0)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(craft_vehicle2, true, true)
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(craft_vehicle2)
            ENTITY.SET_ENTITY_INVINCIBLE(craft_vehicle2, true)
            VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(craft_vehicle2, true)
            VEHICLE.SET_VEHICLE_ENGINE_ON(craft_vehicle2, true, true, true)
            ENTITY.SET_ENTITY_VISIBLE(craft_vehicle2, true, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(craft_vehicle2, heli_vehicle, 0, 0, -1, 2.5, 0, 180, 0, 0, false, true, false, 0, true)
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(craft_vehicle2, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
            ENTITY.SET_ENTITY_VELOCITY(craft_vehicle2, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
            ENTITY.SET_ENTITY_MAX_SPEED(craft_vehicle2, 500.0)
            ENTITY.SET_ENTITY_ROTATION(craft_vehicle2, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
            util.yield(500)
            entities.delete_by_handle(heli_vehicle)
            entities.delete_by_handle(craft_vehicle2)
            end
        end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(efucks, "Garage Doors", {"garagedoors"}, "", function()
        local coords = player_coords(pid)
        coords.x = coords.x
        coords.y = coords.y + -30
        coords.z = coords.z
        local object_req = util.joaat("prop_bh1_09_mp_gar")
        util.request_model(object_req)
        STREAMING.REQUEST_MODEL(970385471)
        while not STREAMING.HAS_MODEL_LOADED(970385471) do
            util.yield()
        end
        for i = 1, 50 do
        local object = entities.create_object(object_req, coords, 0.0)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(object, true, true)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(object, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
        ENTITY.SET_ENTITY_ROTATION(object, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
        ENTITY.SET_ENTITY_VELOCITY(object, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
        end
    end)

    addict.action(efucks, "Train Fuck", {"trainfuck"}, "Use with caution this will lag your game if you can see it or close to it, restart the lua and clear area to stop it quicker.", function()
        local coords = player_coords(pid)
        coords.x = coords.x
        coords.y = coords.y + -30
        coords.z = coords.z
        local vehicle_req = util.joaat("freight")
        util.request_model(vehicle_req)
        local object_req = util.joaat("prop_container_01a")
        util.request_model(object_req)
    for i = 1, 50 do
        local object = entities.create_object(object_req, coords, 0.0)
        local vehicle = entities.create_vehicle(vehicle_req, coords, 0.0)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(object, true, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(object, vehicle, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(object, 1, 0.0, 10000.0, 0.0, 0.0, 0.0, 0.0, false, true, true, false, true)
        ENTITY.SET_ENTITY_ROTATION(vehicle, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
        ENTITY.SET_ENTITY_ROTATION(object, math.random(0, 360), math.random(0, 360), math.random(0, 360), 0, true)
        ENTITY.SET_ENTITY_VELOCITY(vehicle, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
        ENTITY.SET_ENTITY_VELOCITY(object, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
        util.yield(500)
        entities.delete_by_handle(object)
        entities.delete_by_handle(vehicle)
        end
    end)
    
    addict.action(efucks, "Nuke V1", {"nuke"}, "Nuke the player", function()
        addict.trigger_commands("levitate")
        util.yield(10)
        addict.trigger_commands("anticrashcamera")
        local self_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(self_ped, -75.2188, -818.582, 2698.8700, true, true, true)
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = offset_coords_forward(ENTITY.GET_ENTITY_COORDS(p), ENTITY.GET_ENTITY_HEADING(p), 100)
        local defx = 0
        local defy = 0
        local defz = 0
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
        util.yield(50)
        defz = defz + 2
        c = offset_coords_forward(ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(p, defx, defy, defz), ENTITY.GET_ENTITY_HEADING(p), 300)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
        util.yield(50)
        defz = defz + 2
        c = offset_coords_forward(ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(p, defx, defy, defz), ENTITY.GET_ENTITY_HEADING(p), 300)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
        util.yield(50)
        defz = defz + 2
        c = offset_coords_forward(ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(p, defx, defy, defz), ENTITY.GET_ENTITY_HEADING(p), 300)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
        util.yield(50)
         defz = defz + 2
        c = offset_coords_forward(ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(p, defx, defy, defz), ENTITY.GET_ENTITY_HEADING(p), 300)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
         util.yield(50)
        defz = defz + 2
        c = offset_coords_forward(ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(p, defx, defy, defz), ENTITY.GET_ENTITY_HEADING(p), 300)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
        util.yield(50)
        defx = defx + 2
        defy = defy + 2
        c = offset_coords_forward(ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(p, defx, defy, defz), ENTITY.GET_ENTITY_HEADING(p), 300)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
        while not STREAMING.HAS_MODEL_LOADED(2336777441) do
            STREAMING.REQUEST_MODEL(2336777441)
            util.yield(10)
        end
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local PlayerPedCoords = offset_coords_forward(ENTITY.GET_ENTITY_COORDS(player_ped, true), ENTITY.GET_ENTITY_HEADING(player_ped), 300)
        spam_amount = 300
        while spam_amount >= 1 do
            entities.create_vehicle(2336777441, PlayerPedCoords, 0)
            spam_amount = spam_amount - 1
            util.yield(10)
        end
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local PlayerPedCoords = offset_coords_forward(ENTITY.GET_ENTITY_COORDS(player_ped, true), ENTITY.GET_ENTITY_HEADING(player_ped), 300)
        spam_amount = 300
        while spam_amount >= 1 do
            entities.create_vehicle(2336777441, PlayerPedCoords, 0)
            spam_amount = spam_amount - 1
            util.yield(10)
        end
        local ct = 0       
        util.toast("Working")
        for k, ent in pairs(entities.get_all_vehicles_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            ct = ct + 1
        end
        addict.trigger_commands("levitate")
        util.yield(10)
        addict.trigger_commands("anticrashcamera")
        util.toast("Finished")
        for k, ent in pairs(entities.get_all_peds_as_handles()) do
            if not PED.IS_PED_A_PLAYER(ent) then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                entities.delete_by_handle(ent)
            end
            ct = ct + 1
        end
    end)
 
        -- Core mod logic
    addict.action(efucks, "Scrap Storm", {}, "Collects wheels, doors, hood, trunk, bumpers and attaches them to a player", function()
        local local_ped = players.user_ped()
        local my_coords = ENTITY.GET_ENTITY_COORDS(local_ped, true)
        local player_list = players.list(true, true, true)
        if #player_list == 0 then util.toast("No players found.") return end
        local target_pid = player_list[1]
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(target_pid)
        local vehicles = entities.get_all_vehicles_as_handles()
        local parts_to_attach = {}
        for _, veh in ipairs(vehicles) do
            local vpos = ENTITY.GET_ENTITY_COORDS(veh, true)
            if get_distance(my_coords, vpos) < 100.0 then
                -- 👟 Remove and collect wheels
                for i = 0, 5 do
                    if not VEHICLE.IS_VEHICLE_TYRE_BURST(veh, i, false) then
                        VEHICLE.SET_VEHICLE_TYRE_BURST(veh, i, true, 1000.0)
                        table.insert(parts_to_attach, util.joaat("prop_wheel_rim_01"))
                    end
                end
                -- 🚪 Remove doors (0-3), hood (4), trunk (5)
                for i = 0, 5 do
                    if not VEHICLE.IS_VEHICLE_DOOR_DAMAGED(veh, i) then
                        VEHICLE.SET_VEHICLE_DOOR_BROKEN(veh, i, true)
                        table.insert(parts_to_attach, util.joaat("prop_car_door_01"))
                    end
                end
                -- 🧱 Simulate bumpers, fenders with other props
                table.insert(parts_to_attach, util.joaat("prop_car_bonnet_01")) -- hood extra
                table.insert(parts_to_attach, util.joaat("prop_car_engine_01")) -- engine block
                table.insert(parts_to_attach, util.joaat("prop_bumper_01"))     -- fake bumper
            end
        end
        -- Load all models
        for _, model in ipairs(parts_to_attach) do
            STREAMING.REQUEST_MODEL(model)
        end
        util.yield(500)
        for _, model in ipairs(parts_to_attach) do
            while not STREAMING.HAS_MODEL_LOADED(model) do util.yield() end
        end
        -- Attach to player randomly
        local base = ENTITY.GET_ENTITY_COORDS(target_ped, true)
        local attached = 0
        for _, model in ipairs(parts_to_attach) do
            local offset = {
                x = math.random(-300, 300) / 100,
                y = math.random(-300, 300) / 100,
                z = math.random(0, 200) / 100
            }
            local obj = OBJECT.CREATE_OBJECT_NO_OFFSET(model, base.x, base.y, base.z, true, false, false)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(obj, target_ped, 0, offset.x, offset.y, offset.z, 0, 0, 0, false, false, true, false, 2, true)
            attached = attached + 1
        end
        util.toast("Scrap Storm: Attached "..attached.." parts to "..players.get_name(target_pid))
    end)

    addict.action(efucks,"Entity Dump", {"entcrash"}, "Working.", function()
        local player_ped = PLAYER.PLAYER_PED_ID()    
        local old_coords = ENTITY.GET_ENTITY_COORDS(player_ped)
    for i=1,1  do
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(player_ped, -858.3132, 184.23877, 100.07001)
        addict.trigger_commands("objfuck" .. players.get_name(pid))
        util.yield(1000)
        addict.trigger_commands("vehfuck" .. players.get_name(pid))
        end
        util.yield(1000)
        addict.trigger_commands("objfuck" .. players.get_name(pid))
        addict.trigger_commands("vehfuck" .. players.get_name(pid))
        addict.trigger_commands("cleararea")
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(player_ped, old_coords.x, old_coords.y, old_coords.z)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.toggle_loop(efucks, "Vehicle fuck", {"vehfuck"}, "", function()
    for _, entity in ipairs(entities.get_all_vehicles_as_handles()) do
        if ENTITY.DOES_ENTITY_EXIST(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
            local entityCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
            local height = 100.0
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x, entityCoords.y , height)
            ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
            ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
            ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
            end
        end
        util.yield(1)
    end)

    addict.toggle_loop(efucks, "Ped fuck", {"pedfuck"}, "", function()
        for _, entity in ipairs(entities.get_all_peds_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
                local height = 100.0
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x, entityCoords.y , height)
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end)

    addict.toggle_loop(efucks, "Object fuck", {"objfuck"}, "", function()
        for _, entity in ipairs(entities.get_all_objects_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(entity) and not PED.IS_PED_A_PLAYER(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(entity)) then
                local entityCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
                local height = 100.0
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, entityCoords.x, entityCoords.y , height)
                ENTITY.SET_ENTITY_VELOCITY(entity, math.random(-10, 10), math.random(-10, 10), math.random(30, 50))
                ENTITY.SET_ENTITY_MAX_SPEED(entity, 500.0)
                ENTITY.SET_ENTITY_ROTATION(entity, math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, 1)
                end
            end
            util.yield(1)
        end)

    local BlackholeEntities = addict.list(efucks, "Blackholes", {}, "")
    
	local dont_stop = false
	addict.toggle_loop(BlackholeEntities,"Vehicle Blackhole", {"vehicleblackholes"}, "Basically 'impulse like sport mode. but applied to every vehicle.", function(on)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        speed = 100
                        local x_vec = (holecoords['x']-vcoords['x'])*speed
                        local y_vec = (holecoords['y']-vcoords['y'])*speed
                        local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
                        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, x_vec, y_vec, z_vec, true, false, true, true)
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

    addict.toggle_loop(BlackholeEntities,"Object Blackhole", {"objectblackholes"}, "Basically 'impulse like sport mode. but applied to every object.", function(on)
		for k, veh in pairs(entities.get_all_objects_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        speed = 100
                        local x_vec = (holecoords['x']-vcoords['x'])*speed
                        local y_vec = (holecoords['y']-vcoords['y'])*speed
                        local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
                        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, x_vec, y_vec, z_vec, true, false, true, true)
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

    addict.toggle_loop(BlackholeEntities,"Ped Blackhole", {"pedblackholes"}, "Turn on undead to not effect you. Basically 'impulse like sport mode. but applied to every ped.", function(on)
		for k, veh in pairs(entities.get_all_peds_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        speed = 100
                        local x_vec = (holecoords['x']-vcoords['x'])*speed
                        local y_vec = (holecoords['y']-vcoords['y'])*speed
                        local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
                        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, x_vec, y_vec, z_vec, true, false, true, true)
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				    end
			    end
            end
        end)

    hole_zoff = 0
    addict.slider(BlackholeEntities, "Blackhole Z-offset", {"blackholeoffset"}, "", 0, 100, 50, 10, function(s)
        hole_zoff = s
    end)

local TornadoEntities = addict.list(efucks, "Tornado", {}, "Swirls entities in a tornado above you")

-- CONFIGURABLE SLIDERS
local tornado_z_offset = 20.0        -- Height above player
local tornado_radius = 25.0          -- How far from player they swirl
local tornado_strength = 35.0        -- Force power
local tornado_density = 10           -- How many entities to swirl per frame
local vehicle_swirl_radius = 15.0    -- Vehicle proximity to player

-- INTERNAL
local dont_stop = false
local entity_index_tracker = {
    vehicle = 1,
    object = 1,
    ped = 1
}

-- Utility: Get tornado swirl center above player
local function get_tornado_center()
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    local coords = ENTITY.GET_ENTITY_COORDS(ped, true)
    coords.z = coords.z + tornado_z_offset
    return coords
end

-- Utility: Apply swirl force to entity
local function swirl_toward(entity, center, radius)
    local pos = ENTITY.GET_ENTITY_COORDS(entity, true)
    local dx = pos.x - center.x
    local dy = pos.y - center.y
    local dist = math.max(1.0, math.sqrt(dx * dx + dy * dy))

    local swirl_fx = -dy / dist * tornado_strength
    local swirl_fy = dx / dist * tornado_strength
    local swirl_fz = (center.z - pos.z) * 2.0 + 5.0

    -- Pull toward circular orbit of desired radius
    local desired_x = center.x + math.cos(util.current_time_millis() / 200) * radius
    local desired_y = center.y + math.sin(util.current_time_millis() / 200) * radius

    swirl_fx = swirl_fx + (desired_x - pos.x) * 2.0
    swirl_fy = swirl_fy + (desired_y - pos.y) * 2.0

    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
    ENTITY.SET_ENTITY_INVINCIBLE(entity, true)
    ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(entity, 1, swirl_fx, swirl_fy, swirl_fz, true, false, true, true)
end

-- VEHICLES
addict.toggle_loop(TornadoEntities, "Vehicle Tornado", {"vehicletornado2"}, "Swirls all vehicles above and around you", function(on)
    local center = get_tornado_center()
    local vehicles = entities.get_all_vehicles_as_handles()
    local processed = 0

    for i = entity_index_tracker.vehicle, #vehicles do
        local veh = vehicles[i]
        if VEHICLE.IS_VEHICLE_DRIVEABLE(veh, false) and veh ~= entities.get_user_vehicle_as_handle() then
            swirl_toward(veh, center, vehicle_swirl_radius)
            if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0)
            end
            processed = processed + 1
            if processed >= tornado_density then break end
        end
    end

    entity_index_tracker.vehicle = (entity_index_tracker.vehicle % #vehicles) + 1
end)

-- OBJECTS
addict.toggle_loop(TornadoEntities, "Object Tornado", {"objecttornado"}, "Swirls world objects around and above you", function(on)
    local center = get_tornado_center()
    local objects = entities.get_all_objects_as_handles()
    local processed = 0

    for i = entity_index_tracker.object, #objects do
        swirl_toward(objects[i], center, tornado_radius)
        processed = processed + 1
        if processed >= tornado_density then break end
    end

    entity_index_tracker.object = (entity_index_tracker.object % #objects) + 1
end)

-- PEDS
addict.toggle_loop(TornadoEntities, "Ped Tornado", {"pedtornado"}, "Swirls NPCs around and above you", function(on)
    local center = get_tornado_center()
    local peds = entities.get_all_peds_as_handles()
    local processed = 0

    for i = entity_index_tracker.ped, #peds do
        local ped = peds[i]
        if not PED.IS_PED_A_PLAYER(ped) then
            swirl_toward(ped, center, tornado_radius)
            processed = processed + 1
            if processed >= tornado_density then break end
        end
    end

    entity_index_tracker.ped = (entity_index_tracker.ped % #peds) + 1
end)

-- SLIDERS
addict.slider(TornadoEntities, "Tornado Z-Offset", {"tornado2zoffset"}, "How high the tornado vortex is above you", 5, 100, 20, 5, function(val)
    tornado_z_offset = val
end)

addict.slider(TornadoEntities, "Tornado Density", {"tornado2density"}, "How many entities are pulled each frame", 1, 50, 10, 1, function(val)
    tornado_density = val
end)

addict.slider(TornadoEntities, "Vehicle Swirl Radius", {"tornado2vehicleradius"}, "Distance vehicles swirl from center", 5, 100, 15, 5, function(val)
    vehicle_swirl_radius = val
end)

-------------------------------------------------------------------------------------------------------------------------------------

	seizures = addict.list(Trolling, "Seizure Shit", {}, "", function(); end)

    addict.toggle_loop(seizures, "Seizure V1", {"seizurev1"}, "", function()
        local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3

        local khanjali = util.joaat("cargobob")
        STREAMING.REQUEST_MODEL(khanjali)
        while not STREAMING.HAS_MODEL_LOADED(khanjali) do
            util.yield()
        end

        local vehicle1 = entities.create_vehicle(khanjali, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        local vehicle2 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle3 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle4 = entities.create_vehicle(khanjali, playerpos, 0)

        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)

        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(0)
        entities.delete_by_handle(vehicle1)

        local khanjali = util.joaat("kosatka")
        STREAMING.REQUEST_MODEL(khanjali)
        while not STREAMING.HAS_MODEL_LOADED(khanjali) do
            util.yield()
        end

        local vehicle1 = entities.create_vehicle(khanjali, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        local vehicle2 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle3 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle4 = entities.create_vehicle(khanjali, playerpos, 0)

        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)

        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(0)
        entities.delete_by_handle(vehicle1)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.toggle_loop(seizures, "Seizure V2", {"seizurev2"}, "", function(on_toggle)
        local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3

        local khanjali = util.joaat("cargoplane")
        STREAMING.REQUEST_MODEL(khanjali)
        while not STREAMING.HAS_MODEL_LOADED(khanjali) do
            util.yield()
        end

        local vehicle1 = entities.create_vehicle(khanjali, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        local vehicle2 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle3 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle4 = entities.create_vehicle(khanjali, playerpos, 0)

        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)

        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, 180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, 180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(0)
        entities.delete_by_handle(vehicle1)

        local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3

        local khanjali = util.joaat("cargoplane")
        STREAMING.REQUEST_MODEL(khanjali)
        while not STREAMING.HAS_MODEL_LOADED(khanjali) do
            util.yield()
        end

        local vehicle1 = entities.create_vehicle(khanjali, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        local vehicle2 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle3 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle4 = entities.create_vehicle(khanjali, playerpos, 0)

        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)

        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(0)
        entities.delete_by_handle(vehicle1)

        local khanjali = util.joaat("cargobob")
        STREAMING.REQUEST_MODEL(khanjali)
        while not STREAMING.HAS_MODEL_LOADED(khanjali) do
            util.yield()
        end

        local vehicle1 = entities.create_vehicle(khanjali, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        local vehicle2 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle3 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle4 = entities.create_vehicle(khanjali, playerpos, 0)

        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)

        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(0)
        entities.delete_by_handle(vehicle1)

        local khanjali = util.joaat("kosatka")
        STREAMING.REQUEST_MODEL(khanjali)
        while not STREAMING.HAS_MODEL_LOADED(khanjali) do
            util.yield()
        end

        local vehicle1 = entities.create_vehicle(khanjali, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        local vehicle2 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle3 = entities.create_vehicle(khanjali, playerpos, 0)
        local vehicle4 = entities.create_vehicle(khanjali, playerpos, 0)

        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)

        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(0)
        entities.delete_by_handle(vehicle1)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)


	addict.toggle(seizures, "Seizure V3", {"seizurev3"}, "", function(on_toggle)
	if on_toggle then
			addict.trigger_commands("seizurev1" .. players.get_name(pid))
			addict.trigger_commands("seizurev2" .. players.get_name(pid))
	else
			addict.trigger_commands("seizurev1" .. players.get_name(pid))
			addict.trigger_commands("seizurev2" .. players.get_name(pid))
		end
	end)

    local tormentspam = addict.list(Trolling, "Spammers")

    addict.toggle_loop(tormentspam, "Crap trail", {"crapon"}, "", function()
        local coords = players.get_position(pid)
        coords.z = coords['z'] + 1.5
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 35, 0, false, false, 0, false)
        util.yield(65)
    end)

    player_toggle_loop(tormentspam, pid, "Taser", {"taseron"}, "", function()
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = ENTITY.GET_ENTITY_COORDS(ped)
        for i = 1, 50 do
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pos.x, pos.y, pos.z + 1, pos.x, pos.y, pos.z, 0, true, util.joaat("weapon_stungun"), players.user_ped(), false, true, 1.0)
        end
        util.yield()
    end)

    player_toggle_loop(tormentspam, pid, "Up-n-Atomizer", {"atomizeron"}, "", function()
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = ENTITY.GET_ENTITY_COORDS(ped)
        for i = 1, 24 do
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pos.x, pos.y, pos.z + 1, pos.x, pos.y, pos.z, 0, true, util.joaat("weapon_raypistol"), players.user_ped(), false, true, 1.0)
        end
        util.yield()
    end)

    player_toggle_loop(tormentspam, pid, "Firework", {"fireworkon"}, "", function()
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = ENTITY.GET_ENTITY_COORDS(ped)
        for i = 1, 30 do
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pos.x, pos.y, pos.z + 1, pos.x, pos.y, pos.z, 0, true, util.joaat("weapon_firework"), players.user_ped(), false, true, 1.0)
        end
        util.yield()
    end)

    addict.toggle_loop(tormentspam, "Asteroid Smash", {"asteroidon"}, "Crush the player with an asteroid", function() 
        local coords = players.get_position(pid)
        coords.z = coords['z'] + 15.0
        local asteroid = entities.create_object(3751297495, coords)
        ENTITY.SET_ENTITY_DYNAMIC(asteroid, true)
    end)

    addict.toggle_loop(tormentspam, "Ragdoll", {"ragdollon"}, "Keeps target ragdolled", function()
        local coords = players.get_position(pid)
        coords.z = coords['z'] - 2.0
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 11, 1, false, true, 0, true)
        util.yield(10)
    end)

    addict.toggle_loop(tormentspam, "Flames", {"fireon"}, "Spam fire beneath the target", function()
        local coords = players.get_position(pid)
        coords.z = coords['z'] - 2.0
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 12, 1, true, false, 0, false)
        util.yield(25)
    end)

    addict.toggle_loop(tormentspam, "Water Jet", {"wateron"}, "Spam water jets beneath the target", function()
        local coords = players.get_position(pid)
        coords.z = coords['z'] - 2.0
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 13, 1, true, false, 0, false)
        util.yield(25)
    end)

    addict.toggle_loop(tormentspam, "Flame path", {"flamepathon"}, "They better run", function()
        local coords = players.get_position(pid)
        --coords.z = coords['z'] + 1.5
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 38, 0, false, false, 0, false)
        util.yield(65)
    end)

    local tormentplayer = addict.list(Trolling, "Torment Shit")
    
    addict.action(tormentplayer, "Tram Lag", {"tramlag"}, "", function()
        TramLag(pid)
    end)
    
    addict.action(tormentplayer,"Heli Rapel Chimp", {"helirapel"}, "(Needs Fixing)", function(on)
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = ENTITY.GET_ENTITY_COORDS(ped)
        pos.z = pos.z + 35
        local mdl = util.joaat("A_C_Chimp_02")
        local veh_mdl = util.joaat("maverick")
        util.request_model(mdl)
        util.request_model(veh_mdl)
        local modelHash <const> = util.joaat("weapon_raypistol")
        local flag_hash = util.joaat("prop_flag_uk")
        PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped, util.joaat("PLAYER"))
        local veh = entities.create_vehicle(veh_mdl, pos, 0)
        VEHICLE.SET_HELI_BLADES_FULL_SPEED(veh)
        local chimp2 = entities.create_ped(2, mdl, pos, 0)
        local player_chimp_army = entities.create_ped(2, mdl, pos, 0)
        local object = entities.create_object(flag_hash, pos)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(object, player_chimp_army, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
        ENTITY.SET_ENTITY_COLLISION(veh, false, false)
        ENTITY.SET_ENTITY_COLLISION(player_chimp_army, false, false)
        ENTITY.SET_ENTITY_COLLISION(chimp2, false, false)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(veh, true, true)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(player_chimp_army, true, true)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(chimp2, true, true)
        ENTITY.SET_ENTITY_INVINCIBLE(player_chimp_army, true)
        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
        ENTITY.SET_ENTITY_INVINCIBLE(chimp2, true)
        PED.SET_PED_INTO_VEHICLE(player_chimp_army, veh, 1)
        PED.SET_PED_INTO_VEHICLE(chimp2, veh, -1)
        TASK.TASK_RAPPEL_FROM_HELI(player_chimp_army, 20)
        PED.SET_PED_MAX_HEALTH(player_chimp_army, 100)
        ENTITY.SET_ENTITY_HEALTH(player_chimp_army, 100)
        ENTITY.SET_ENTITY_INVINCIBLE(player_chimp_army, true)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(player_chimp_army)
        PED.SET_PED_AS_ENEMY(player_chimp_army, true)
        --PED.SET_PED_FLEE_ATTRIBUTES(player_chimp_army, 0, false)
        PED.SET_PED_COMBAT_ATTRIBUTES(player_chimp_army, 46, true)
        WEAPON.GIVE_WEAPON_TO_PED(player_chimp_army, modelHash, 9999,  true)
        PED.SET_PED_COMBAT_ATTRIBUTES(player_chimp_army, player_ped, 0, 16)
        PED.SET_PED_RELATIONSHIP_GROUP_HASH(player_chimp_army, util.joaat("HATES_PLAYER"))
        util.toast("Chimp sent to " .. PLAYER.GET_PLAYER_NAME(pid))
        util.log("Chimp sent to " .. PLAYER.GET_PLAYER_NAME(pid))
    end)
    
    addict.toggle_loop(tormentplayer, "Drop Fake Bags", {"dropfakebags"}, "Old School :D", function()
        local coords = players.get_position(pid)
        coords.z = coords.z + 1.5
        local card = MISC.GET_HASH_KEY("prop_money_bag_01")
        STREAMING.REQUEST_MODEL(card)
        if STREAMING.HAS_MODEL_LOADED(card) == false then  
            STREAMING.REQUEST_MODEL(card)
        end
        OBJECT.CREATE_AMBIENT_PICKUP(-1009939663, coords.x, coords.y, coords.z, 0, 1, card, false, true)
    end)

    addict.toggle_loop(tormentplayer, "Glitch Physics", {"glitchphysics"}, "", function(on_toggle)
        local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3

        local khanjali = util.joaat("prop_ld_ferris_wheel")
        STREAMING.REQUEST_MODEL(khanjali)
        while not STREAMING.HAS_MODEL_LOADED(khanjali) do
            util.yield()
        end

        local vehicle1 = entities.create_object(khanjali, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        local vehicle2 = entities.create_object(khanjali, playerpos, 0)
        local vehicle3 = entities.create_object(khanjali, playerpos, 0)
        local vehicle4 = entities.create_object(khanjali, playerpos, 0)

        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)

        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, false)
        util.yield(1200)
        entities.delete_by_handle(vehicle1)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)


addict.toggle_loop(tormentplayer, "Rain Peds on Player", {"rainingpeds"}, "", function(on_toggle)
    local c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
    local ped_c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        all_peds = entities.get_all_peds_as_handles()
    for k,ped in pairs(all_peds) do
        if not PED.IS_PED_A_PLAYER(ped) then
            if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                TASK.TASK_LEAVE_ANY_VEHICLE(ped, 0, 16)
            end
            ENTITY.IS_ENTITY_IN_AIR(ped)
            ENTITY.SET_ENTITY_COORDS(ped, ped_c.x, ped_c.y, ped_c.z)
            ped_c.x = ped_c.x + math.random(-5, 5)
            ped_c.y = ped_c.y + math.random(-5, 5)
            ped_c.z = ped_c.z + math.random(5, 10)
            ENTITY.SET_ENTITY_VELOCITY(ped, 0.0, 0.0, -1.0)
            util.yield(100)
        end
    end
end)

addict.toggle_loop(tormentplayer, "Rain Vehicles on Player", {"rainveh"}, "", function(on_toggle)
    local c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
    local ped_c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        all_peds = entities.get_all_vehicles_as_handles()
    for k,ped in pairs(all_peds) do
        if not PED.IS_PED_A_PLAYER(ped) then
            if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                TASK.TASK_LEAVE_ANY_VEHICLE(ped, 0, 16)
            end
            ENTITY.IS_ENTITY_IN_AIR(ped)
            ENTITY.SET_ENTITY_COORDS(ped, ped_c.x, ped_c.y, ped_c.z)
            ped_c.x = ped_c.x + math.random(-5, 5)
            ped_c.y = ped_c.y + math.random(-5, 5)
            ped_c.z = ped_c.z + math.random(5, 10)
            ENTITY.SET_ENTITY_VELOCITY(ped, 0.0, 0.0, -1.0)
            util.yield(100)
        end
    end
end)


addict.toggle_loop(tormentplayer, "Rain Objects on Player", {"rainobj"}, "", function(on_toggle)
    local c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
    local ped_c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        all_peds = entities.get_all_objects_as_handles()
    for k,ped in pairs(all_peds) do
        if not PED.IS_PED_A_PLAYER(ped) then
            if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                TASK.TASK_LEAVE_ANY_VEHICLE(ped, 0, 16)
            end
            ENTITY.IS_ENTITY_IN_AIR(ped)
            ENTITY.SET_ENTITY_COORDS(ped, ped_c.x, ped_c.y, ped_c.z)
            ped_c.x = ped_c.x + math.random(-5, 5)
            ped_c.y = ped_c.y + math.random(-5, 5)
            ped_c.z = ped_c.z + math.random(5, 10)
            ENTITY.SET_ENTITY_VELOCITY(ped, 0.0, 0.0, -100.0)
            util.yield(0)
        end
    end
end)

addict.toggle_loop(tormentplayer, "Bend There Knees", {"bendknees"}, "Forces them down making them bend there knees.", function(on_toggle)
    for k, ped in pairs(entities.get_all_peds_as_handles()) do
        local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(ped, -1, false)
        local locspeed2 = speed
                local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        if not PED.IS_PED_A_PLAYER(PedInSeat) then
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                    vcoords = ENTITY.GET_ENTITY_COORDS(ped, true)
                    speed = 100
                    local x_vec = (holecoords['x']-vcoords['x'])*speed
                    local y_vec = (holecoords['y']-vcoords['y'])*speed
                    local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                    ENTITY.IS_ENTITY_IN_AIR(ped)
                    local ped_c = ENTITY.GET_ENTITY_COORDS(players.user_ped())
                    ped_c.x = ped_c.x + math.random(-50, 50)
                    ped_c.y = ped_c.y + math.random(-50, 50)
                    ped_c.z = ped_c.z + math.random(100, 120)
                    ENTITY.SET_ENTITY_VELOCITY(ped, 0.0, 0.0, -1.0)
                    if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(ped, 0.0);
            end
        end
    end
end)

addict.toggle_loop(tormentplayer, "Give Wanted", {"givewanted"}, "", function(on_toggle)
        local p_hash = util.joaat("s_m_y_swat_01")
        local c 
        local cop
        for i=0, 5 do
            c = players.get_position(pid)
            c.z = 2500
            request_model(p_hash)
            local cop = entities.create_ped(6, p_hash, c, 0)
            FIRE.ADD_OWNED_EXPLOSION(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), c.x, c.y, c.z, 1, 100.0, false, true, 0.0)
            util.yield(2000)
            entities.delete_by_handle(cop)
        end
    end)

    
    addict.toggle(tormentplayer, "Toggle Sneaky Mode", {"sneakymode"}, "Teleports you to player then turns you invisible, off radar, blocks outgoing syncs and no collisions...", function(on_toggle)
        if on_toggle then
            addict.trigger_commands("tp" .. PLAYER.GET_PLAYER_NAME(pid))
            addict.trigger_commands("invisibility" .. " on")
            addict.trigger_commands("reducedcollision" .. " on")
            addict.trigger_commands("otr")
            addict.trigger_commands("quietsteps")
            addict.trigger_commands("desyncall")
            util.toast("Sneaky Mode On") 
        else
            addict.trigger_commands("tpmazehelipad")
            addict.trigger_commands("invisibility" .. " off")
            addict.trigger_commands("reducedcollision" .. " off")
            addict.trigger_commands("otr")
            addict.trigger_commands("quietsteps")
            addict.trigger_commands("desyncall")
            util.toast("Sneaky Mode Off")
            end 
    end)

    addict.toggle(tormentplayer, "Toggle Pidgeon Mode", {"pidgeonmode"}, "Teleports you to player then turns you into a Pidgeon, off radar and no collisions...", function(on_toggle)
        if on_toggle then
            addict.trigger_commands("otr")
            addict.trigger_commands("tp" .. PLAYER.GET_PLAYER_NAME(pid))
            addict.trigger_commands("reducedcollision" .. " on")
            addict.trigger_commands("acpigeon")
            util.yield(100)
            addict.trigger_commands("alwaysunarmed")
            util.toast("Pidgeon Mode On") 
        else
            addict.trigger_commands("alwaysunarmed")
            addict.trigger_commands("otr")
            addict.trigger_commands("tpmazehelipad")
            addict.trigger_commands("reducedcollision" .. " off")
            addict.trigger_commands("mpfemale")
            util.toast("Pidgeon Mode Off")
            end 
    end)
    
    addict.toggle_loop(tormentplayer, "Sky Dive Peds", {"skydivepeds"}, "", function()
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
                all_peds = entities.get_all_peds_as_handles()
                player_ped = PLAYER.PLAYER_PED_ID()
                for k,ped in pairs(all_peds) do
                    if not PED.IS_PED_A_PLAYER(ped) then
                        TASK.TASK_SKY_DIVE(ped)
                    end
            end
    end)

    addict.toggle_loop(tormentplayer, "Writher Peds", {"writherpeds"}, "", function()
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
                all_peds = entities.get_all_peds_as_handles()
                player_ped = PLAYER.PLAYER_PED_ID()
                for k,ped in pairs(all_peds) do
                    if not PED.IS_PED_A_PLAYER(ped) then
                        TASK.TASK_WRITHE(ped, player_ped, -1, 0)
                    end
            end
    end)

    addict.toggle_loop(tormentplayer, "Vault Peds", {"vaultpeds"}, "", function()
        util.yield(1000)
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
                all_peds = entities.get_all_peds_as_handles()
                player_ped = PLAYER.PLAYER_PED_ID()
                for k,ped in pairs(all_peds) do
                    if not PED.IS_PED_A_PLAYER(ped) then
                        TASK.TASK_CLIMB(ped, true)
                    end
            end
    end)

    addict.toggle_loop(tormentplayer, "Cower Peds", {"cowerpeds"}, "", function()
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
                all_peds = entities.get_all_peds_as_handles()
                player_ped = PLAYER.PLAYER_PED_ID()
                for k,ped in pairs(all_peds) do
                    if not PED.IS_PED_A_PLAYER(ped) then
                        TASK.TASK_COWER(ped, -1)
                    end
            end
    end)

    addict.toggle_loop(tormentplayer, "Cover Peds", {"coverpeds"}, "", function()
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
                all_peds = entities.get_all_peds_as_handles()
                player_ped = PLAYER.PLAYER_PED_ID()
                for k,ped in pairs(all_peds) do
                    if not PED.IS_PED_A_PLAYER(ped) then
                        TASK.TASK_STAY_IN_COVER(ped)
                    end
            end
    end)

	centipedegriefing = addict.list(Trolling, "Human Centipede", {}, "", function(); end)

    addict.action(centipedegriefing, "Human Centipede", {"centipede"}, "", function()
        local c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        all_peds = entities.get_all_peds_as_handles()
        local last_ped = 0
        local last_ped_ht = 0
        for k,ped in pairs(all_peds) do
            if not PED.IS_PED_A_PLAYER(ped) and not PED.IS_PED_FATALLY_INJURED(ped) then
                get_control_request(ped)
                if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_LEAVE_ANY_VEHICLE(ped, 0, 16)
                end
    
                ENTITY.DETACH_ENTITY(ped, false, false)
                if last_ped ~= 0 then
                    ENTITY.ATTACH_ENTITY_TO_ENTITY(ped, last_ped, 0, 0.0, 0.0, last_ped_ht- -0.5, 0.0, 0.0, 0.0, false, false, false, false, 0, false)
                else
                    ENTITY.SET_ENTITY_COORDS(ped, c.x, c.y, c.z)
                end
                last_ped = ped
            end
        end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)
    
    addict.toggle_loop(centipedegriefing, "Human Centipede", {"togglecentipede"}, "", function(on_toggle)
        local c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        all_peds = entities.get_all_peds_as_handles()
        local last_ped = 0
        local last_ped_ht = 0
        for k,ped in pairs(all_peds) do
            if not PED.IS_PED_A_PLAYER(ped) and not PED.IS_PED_FATALLY_INJURED(ped) then
                get_control_request(ped)
                if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_LEAVE_ANY_VEHICLE(ped, 0, 16)
                end
    
                ENTITY.DETACH_ENTITY(ped, false, false)
                if last_ped ~= 0 then
                    ENTITY.ATTACH_ENTITY_TO_ENTITY(ped, last_ped, 0, 0.0, 0.0, last_ped_ht- -0.5, 0.0, 0.0, 0.0, false, false, false, false, 0, false)
                else
                    ENTITY.SET_ENTITY_COORDS(ped, c.x, c.y, c.z)
                end
                last_ped = ped
            end
        end
    end)

    addict.toggle_loop(centipedegriefing, "Clone Centipede", {"clonecentipede"}, "Clone the player into a centipede. Note: Click a few times for better results.", function()
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        PED.SET_PED_RELATIONSHIP_GROUP_HASH(p, util.joaat("PLAYER"))
        local pclone = entities.create_ped(26, ENTITY.GET_ENTITY_MODEL(p), c, 0)
        pclpid [#pclpid + 1] = pclone 
        PED.CLONE_PED_TO_TARGET(p, pclone)
        local c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        all_peds = entities.get_all_peds_as_handles()
        local last_ped = 0
        local last_ped_ht = 0
        for k,ped in pairs(all_peds) do
            if not PED.IS_PED_A_PLAYER(ped) and not PED.IS_PED_FATALLY_INJURED(ped) then
                get_control_request(ped)
                if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(pclone)
                    TASK.TASK_LEAVE_ANY_VEHICLE(pclone, 0, 16)
                    PED.SET_PED_MAX_HEALTH(pclone, 100)
                    ENTITY.SET_ENTITY_HEALTH(pclone, 100)
                    ENTITY.SET_ENTITY_INVINCIBLE(pclone, true)
                    PED.SET_PED_AS_ENEMY(pclone, true)
                    PED.SET_PED_FLEE_ATTRIBUTES(pclone, 0, false)
                    PED.SET_PED_COMBAT_ATTRIBUTES(pclone, 46, true)
                    WEAPON.GIVE_WEAPON_TO_PED(pclone, util.joaat("weapon_raypistol"), 9999,  true)
                    PED.SET_PED_COMBAT_ATTRIBUTES(pclone, ped, 0, 16)
                    PED.SET_PED_RELATIONSHIP_GROUP_HASH(pclone,util.joaat("HATES_PLAYER"))
                end
    
                ENTITY.DETACH_ENTITY(ped, false, false)
                if last_ped ~= 0 then
                    ENTITY.ATTACH_ENTITY_TO_ENTITY(ped, last_ped, 0, 0.0, 0.0, last_ped_ht- -0.5, 0.0, 0.0, 0.0, false, false, false, false, 0, false)
                else
                    ENTITY.SET_ENTITY_COORDS(ped, c.x, c.y, c.z)
                end
                last_ped = ped
            end
        end
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    local Ped_Voices = addict.list(Trolling, "Ped Voices")

    addict.toggle_loop(Ped_Voices, "Mother Fucker", {"motherfuck"}, "Spawns a man behind them and keeps saying mother fucker", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_M_Y_BEACH_03_BLACK_MINI_01"
        local speech = "MOTHER_FUCK"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("IG_LamarDavis_02"))
        local voice_ped = entities.create_ped(28, util.joaat("IG_LamarDavis_02"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(3500)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Perv", {"pervert"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_M_M_HILLBILLY_01_WHITE_MINI_01"
        local speech = "SHOUT_PERV_AT_WOMAN_PERV"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(3500)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Nice Car", {"nicecar"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_M_M_HILLBILLY_01_WHITE_MINI_01"
        local speech = "NICE_CAR_SHOUT"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(3000)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Nice Car Thanks", {"nicecarthanks"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_M_M_HILLBILLY_01_WHITE_MINI_01"
        local speech = "NICE_CAR_THANKS"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2000)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Angry", {"angry"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_M_M_HILLBILLY_01_WHITE_MINI_01"
        local speech = "ANGRY_WITH_PLAYER_TREVOR"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2000)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Agreement", {"agreeing"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_M_M_HILLBILLY_01_WHITE_MINI_01"
        local speech = "AGREE_ACROSS_STREET"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2000)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Laughter Torment", {"laughter"}, "Only works when they are on foot.", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
        local speech = "FEMALE_DISTANT_LAUGH"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(3000)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Car Crash 1", {"carcrash1"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
        local speech = "CRASH_GENERIC"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2500)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Car Crash 2", {"carcrash2"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
        local speech = "CRASH_CAR"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2500)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Idiotaaa", {"idiota"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
        local speech = "CHALLENGE_THREATEN"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2500)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "Move!!!", {"movenow"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
        local speech = "BLOCKED_GENERIC"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2500)
        entities.delete_by_handle(voice_ped)
    end)

    addict.toggle_loop(Ped_Voices, "No trouble", {"notrouble"}, "", function()
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
        local speech = "APOLOGY_NO_TROUBLE"
        local z_off = 0
        if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
            ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
        end
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
        request_model(util.joaat("s_f_m_shop_high"))
        local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
        ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
        ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
        ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
        ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
        util.yield(2500)
        entities.delete_by_handle(voice_ped)
    end)

addict.toggle_loop(Ped_Voices, "Animal!!!", {"animalaa"}, "", function()
    local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
    local speech = "ANGRY_WITH_PLAYER_TREVOR"
    local z_off = 0
    if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
        ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
    end
    local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
    request_model(util.joaat("s_f_m_shop_high"))
    local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
    ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
    ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
    ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
    ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
    AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
    util.yield(1500)
    entities.delete_by_handle(voice_ped)
end)

addict.toggle_loop(Ped_Voices, "Be Careful", {"becareful"}, "", function()
    local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
    local speech = "BUMP"
    local z_off = 0
    if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
        ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
    end
    local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
    request_model(util.joaat("s_f_m_shop_high"))
    local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
    ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
    ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
    ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
    ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
    AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
    util.yield(3000)
    entities.delete_by_handle(voice_ped)
end)

addict.toggle_loop(Ped_Voices, "Challenge accepted", {"chalacc"}, "", function()
    local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local voice = "A_F_M_EASTSA_01_LATINO_FULL_01"
    local speech = "CHALLENGE_ACCEPTED_BUMPED_INTO"
    local z_off = 0
    if PED.IS_PED_IN_ANY_VEHICLE(target_ped, false) then 
        ENTITY.GET_ENTITY_MODEL(PED.GET_VEHICLE_PED_IS_IN(target_ped, false))
    end
    local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0.0, -1.0, 0.0 + z_off)
    request_model(util.joaat("s_f_m_shop_high"))
    local voice_ped = entities.create_ped(28, util.joaat("s_f_m_shop_high"), coords, 0)
    ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(voice_ped, true, false)
    ENTITY.SET_ENTITY_VISIBLE(voice_ped, false, 0)
    ENTITY.FREEZE_ENTITY_POSITION(voice_ped, true)
    ENTITY.SET_ENTITY_INVINCIBLE(voice_ped, true)
    AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(voice_ped, speech, voice, "SPEECH_PARAMS_FORCE_SHOUTED", 0)
    util.yield(2500)
    entities.delete_by_handle(voice_ped)
end)

---------------------------------------------------------------------------------------------------------------------
-- All Weapons List 

local all_weapons_list = {
    "weapon_unarmed",
    "weapon_candycane",
    "weapon_candycane",
    "weapon_briefcase",
    "weapon_briefcase_02",
    "weapon_digiscanner",
    "weapon_raypistol",
    "weapon_firework",
    "weapon_stungun",
    "weapon_switchblade",
    "weapon_emplauncher",
    "weapon_railgun",
    "weapon_flare",
    "weapon_knife",
    "weapon_NIGHTSTICK",
    "weapon_bottle",
    "weapon_HAMMER",
    "weapon_BAT",
    "weapon_GOLFCLUB",
    "weapon_CROWBAR",
    "weapon_PISTOL",
    "weapon_COMBATPISTOL",
    "weapon_APPISTOL",
    "weapon_PISTOL50",
    "weapon_MICROSMG",
    "weapon_SMG",
    "weapon_ASSAULTSMG",
    "weapon_ASSAULTRIFLE",
    "weapon_hatchet",
    "weapon_knuckle",
    "weapon_machete",
    "weapon_dagger",
    "weapon_wrench",
    "weapon_battleaxe",
    "weapon_poolcue",
    "weapon_pistol_mk2",
    "weapon_snspistol",
    "weapon_snspistol_mk2",
    "weapon_heavypistol",
    "weapon_vintagepistol",
    "weapon_flaregun",
    "weapon_marksmanpistol",
    "weapon_revolver",
    "weapon_revolver_mk2",
    "weapon_doubleaction",
    "weapon_ceramicpistol",
    "weapon_navyrevolver",
    "weapon_smg_mk2",
    "weapon_combatpdw",
    "weapon_machinepistol",
    "weapon_minismg",
    "weapon_raycarbine",
    "weapon_pumpshotgun",
    "weapon_pumpshotgun_mk2",
    "weapon_sawnoffshotgun",
    "weapon_assaultshotgun",
    "weapon_bullpupshotgun",
    "weapon_musket",
    "weapon_heavyshotgun",
    "weapon_dbshotgun",
    "weapon_autoshotgun",
    "weapon_assaultrifle",
    "weapon_assaultrifle_mk2",
    "weapon_carbinerifle",
    "weapon_carbinerifle_mk2",
    "weapon_advancedrifle",
    "weapon_specialcarbine",
    "weapon_specialcarbine_mk2",
    "weapon_bullpuprifle",
    "weapon_bullpuprifle_mk2",
    "weapon_compactrifle",
    "weapon_mg",
    "weapon_combatmg",
    "weapon_combatmg_mk2",
    "weapon_gusenberg",
    "weapon_sniperrifle",
    "weapon_heavysniper",
    "weapon_heavysniper_mk2",
    "weapon_marksmanrifle",
    "weapon_marksmanrifle_mk2",
    "weapon_rpg",
    "weapon_grenadelauncher",
    "weapon_grenadelauncher_smoke",
    "weapon_minigun",
    "weapon_hominglauncher",
    "weapon_compactlauncher",
    "weapon_rayminigun",
    "weapon_grenade",
    "weapon_bzgas",
    "weapon_molotov",
    "weapon_proxmine",
    "weapon_snowball",
    "weapon_pipebomb",
    "weapon_ball",
    "weapon_smokegrenade",
    "weapon_stickybomb",
    "weapon_petrolcan",
    "weapon_parachute",
    "weapon_fireextinguisher",
    "weapon_hazardcan",
}
 
-- CONFIG
local config = {
    count = 1,
    weaponslist = "WEAPON_CANDYCANE",
    "WEAPON_PISTOL",
    "WEAPON_CANDYCANE",
    "WEAPON_UNARMED",
    "WEAPON_STUNROD",
    "WEAPON_STONE_HATCHET",
    "WEAPON_BRIEFCASE",
    "WEAPON_BRIEFCASE_02",
    "WEAPON_DIGISCANNER",
    "WEAPON_RAYPISTOL",
    "WEAPON_FIREWORK",
    "WEAPON_STUNGUN",
    "WEAPON_SWITCHBLADE",
    "WEAPON_EMPLAUNCHER",
    "WEAPON_RAILGUN",
    "WEAPON_FLARE",
    "WEAPON_KNIFE",
    "WEAPON_NIGHTSTICK",
    "WEAPON_BOTTLE",
    "WEAPON_HAMMER",
    "WEAPON_BAT",
    "WEAPON_GOLFCLUB",
    "WEAPON_CROWBAR",
    "WEAPON_PISTOL",
    "WEAPON_COMBATPISTOL",
    "WEAPON_APPISTOL",
    "WEAPON_PISTOL50",
    "WEAPON_MICROSMG",
    "WEAPON_SMG",
    "WEAPON_ASSAULTSMG",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_HATCHET",
    "WEAPON_KNUCKLE",
    "WEAPON_MACHETE",
    "WEAPON_DAGGER",
    "WEAPON_WRENCH",
    "WEAPON_BATTLEAXE",
    "WEAPON_POOLCUE",
    "WEAPON_PISTOL_MK2",
    "WEAPON_SNSPISTOL",
    "WEAPON_SNSPISTOL_MK2",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_FLAREGUN",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_REVOLVER_MK2",
    "WEAPON_DOUBLEACTION",
    "WEAPON_CERAMICPISTOL",
    "WEAPON_NAVYREVOLVER",
    "WEAPON_SMG_MK2",
    "WEAPON_COMBATPDW",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_MINISMG",
    "WEAPON_RAYCARBINE",
    "WEAPON_PUMPSHOTGUN",
    "WEAPON_PUMPSHOTGUN_MK2",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_DBSHOTGUN",
    "WEAPON_AUTOSHOTGUN",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_CARBINERIFLE",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_BULLPUPRIFLE_MK2",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_MG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_GUSENBERG",
    "WEAPON_SNIPERRIFLE",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    "WEAPON_RPG",
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_MINIGUN",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_COMPACTLAUNCHER",
    "WEAPON_RAYMINIGUN",
    "WEAPON_GRENADE",
    "WEAPON_BZGAS",
    "WEAPON_MOLOTOV",
    "WEAPON_PROXMINE",
    "WEAPON_SNOWBALL",
    "WEAPON_PIPEBOMB",
    "WEAPON_BALL",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_STICKYBOMB",
    "WEAPON_PETROLCAN",
    "WEAPON_PARACHUTE",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_HAZARDCAN",
}

local AttackerPeds = addict.list(Trolling, "Attacker Peds", {}, "")

local British_Attack = addict.list(AttackerPeds, "Bri' 'ish Attack")

-- RELATIONSHIP SETUP
local hostile_group_ptr = memory.alloc(4)
PED.ADD_RELATIONSHIP_GROUP("UK_ATTACKERS", hostile_group_ptr)
local hostile_group_id = memory.read_int(hostile_group_ptr)

PED.SET_RELATIONSHIP_BETWEEN_GROUPS(5, hostile_group_id, util.joaat("PLAYER")) -- Hate player
PED.SET_RELATIONSHIP_BETWEEN_GROUPS(5, util.joaat("PLAYER"), hostile_group_id)

-- SPAWN FUNCTION
local function spawn_attacker(coords, weaponslist)
    local pedModel = util.joaat("IG_EnglishDave_02")
    local propModel = util.joaat("prop_flag_uk")

    STREAMING.REQUEST_MODEL(pedModel)
    STREAMING.REQUEST_MODEL(propModel)
    while not STREAMING.HAS_MODEL_LOADED(pedModel) or not STREAMING.HAS_MODEL_LOADED(propModel) do
        util.yield()
    end

    local ped = PED.CREATE_PED(26, pedModel, coords.x, coords.y, coords.z, 0.0, true, true)
    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
    -- Attach flag to hand
    local flag = OBJECT.CREATE_OBJECT(propModel, coords.x, coords.y, coords.z, true, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(flag, ped, PED.GET_PED_BONE_INDEX(ped, 57005), 0.1, 0, 0, 0.0, 0.0, 180.0, true, true, false, false, 2, true)

    -- Give weapon
    WEAPON.GIVE_WEAPON_TO_PED(ped, util.joaat(weaponslist), 9999, true, true)

    -- Combat settings
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped, hostile_group_id)
    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true) -- Always fight
    PED.SET_PED_COMBAT_ABILITY(ped, 2)
    PED.SET_PED_COMBAT_RANGE(ped, 2)
    PED.SET_PED_FLEE_ATTRIBUTES(ped, 0, false)
    PED.SET_PED_CAN_RAGDOLL(ped, true)
    PED.SET_PED_AS_ENEMY(ped, true)
    PED.SET_PED_ACCURACY(ped, 75)

    -- Task attack
    TASK.TASK_COMBAT_PED(ped, PLAYER.PLAYER_PED_ID(), 0, 16)

    return ped
end

addict.divider(British_Attack, "Bri' 'ish Attackers")

-- CONFIG MENU
addict.slider(British_Attack, "Number of Attackers", {"ukcount"}, "", 1, 48, config.count, 1, function(val)
    config.count = val
end)

-- Weapon selection via slider/list
local weapon_names = {}
for i = 2, #config do
    table.insert(weapon_names, config[i])
end

local function get_weapon_index(weaponslist)
    for i, w in ipairs(weapon_names) do
        if w == weaponslist then return i end
    end
    return 1
end

addict.list_select(British_Attack, "Select Weapon", {"ukweapon"}, "Choose a weapon from the list", weapon_names, get_weapon_index(config.weaponslist), function(index, value)
    config.weaponslist = value
end)


-- MAIN TOGGLE
addict.action(British_Attack, "Spawn UK Attackers", {"ukattack"}, "Spawns hostile English Dave attackers with flags", function()
    local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local coords = ENTITY.GET_ENTITY_COORDS(p)
    --local coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
    for i = 1, config.count do
        local angle = (i - 1) * (360 / config.count)
        local rad = math.rad(angle)
        local spawn = {
            x = coords.x + math.cos(rad) * 5.0,
            y = coords.y + math.sin(rad) * 5.0,
            z = coords.z
        }
        spawn_attacker(spawn, config.weaponslist)
        util.yield(500)
    end
    util.yield(5000)
end)

-------------------------------------------------------------------------------------------------------------------------------

    local CloneEntities = addict.list(AttackerPeds, "Clone Attacker", {}, "")

    local pclpid = {}
    local selectedweapon = 1

    addict.action(CloneEntities, "Clone", {}, "Clone the player into a ped", function()
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        PED.SET_PED_RELATIONSHIP_GROUP_HASH(p, util.joaat("PLAYER"))
        local modelHashes <const> = util.joaat(all_weapons_list[selectedweapon])
        local pclone = entities.create_ped(26, ENTITY.GET_ENTITY_MODEL(p), c, 0)
        pclpid [#pclpid + 1] = pclone 
        PED.CLONE_PED_TO_TARGET(p, pclone)
        PED.SET_PED_MAX_HEALTH(pclone, 100)
        ENTITY.SET_ENTITY_HEALTH(pclone, 100)
        ENTITY.SET_ENTITY_INVINCIBLE(pclone, true)
        PED.SET_PED_AS_ENEMY(pclone, true)
        PED.SET_PED_FLEE_ATTRIBUTES(pclone, 0, false)
        PED.SET_PED_COMBAT_ATTRIBUTES(pclone, 46, true)
        WEAPON.GIVE_WEAPON_TO_PED(pclone, modelHashes, 9999,  true)
        PED.SET_PED_COMBAT_ATTRIBUTES(pclone, ped, 0, 16)
        PED.SET_PED_RELATIONSHIP_GROUP_HASH(pclone,util.joaat("HATES_PLAYER"))
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.list_select(CloneEntities, 'Weapon Select', {}, "", all_weapons_list, 1, function (opt)
        selectedweapon = opt
    end)

local Nearby_Armys = addict.list(AttackerPeds, "Nearby Peds Attack")

local selweapon = 1
addict.toggle_loop(Nearby_Armys, "Nearby Peds Attack", {"pedsattack"}, "", function()
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local pos = ENTITY.GET_ENTITY_COORDS(ped, false)
    pos.y = pos.y - 5
    pos.z = pos.z + 1
    local modelHash <const> = util.joaat(all_weapons_list[selweapon])
    for i, peds in ipairs(entities.get_all_peds_as_handles()) do
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(peds)
    if PED.IS_PED_IN_ANY_VEHICLE(peds) then
        WEAPON.GIVE_WEAPON_TO_PED(peds, modelHash, 9999, true, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(peds, 5, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(peds, 46, true)
        TASK.SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE(peds, 0.0)
        TASK.SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG(peds, 1, true)
        TASK.TASK_COMBAT_PED(peds, ped, 0, 16)
        TASK.TASK_VEHICLE_CHASE(peds, PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pos))
        ENTITY.SET_ENTITY_INVINCIBLE(peds, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(peds, 5, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(peds, 46, true)
        PED.SET_PED_ACCURACY(peds, 100)
        PED.SET_PED_COMBAT_ABILITY(peds, 3)
        PED.SET_PED_AS_ENEMY(peds, true)
        util.yield()
        end 
    end 
end)

addict.list_select(Nearby_Armys, 'Weapon Select', {}, "", all_weapons_list, 1, function (opt)
    selweapon = opt
end)

-- Cleanup: 
addict.action(AttackerPeds, "Clear Nearby Attackers", {"clearattacks"}, "Clears all IG_EnglishDave_02 peds near you", function()
    addict.trigger_commands("superc 5")
    util.yield(500)
    addict.trigger_commands("superc 3")
    util.yield(2000)
    util.toast("Cleared nearby UK attackers.")
end)
-------------------------------------------------------------------------------------------------------------------------------------

local Attacker_Tanks = addict.list(Trolling, "Attacker Tanks")

addict.action(Attacker_Tanks,"Spawn Attacker Khanjali", {"sendkhanjali"}, "", function()
    V3 = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    hash = util.joaat("khanjali")
    ped_hash = util.joaat("MP_M_Cocaine_01")
    if STREAMING.IS_MODEL_A_VEHICLE(hash) then
        STREAMING.REQUEST_MODEL(hash)
        while not STREAMING.HAS_MODEL_LOADED(hash) do
            util.yield()
        end
        local aab = 
        {
            x = -5784.258301,
            y = -8289.385742,
            z = -136.411270
        }
        ENTITY.SET_ENTITY_VISIBLE(ped_to_kidnap, false)
        ENTITY.FREEZE_ENTITY_POSITION(ped_to_kidnap, false)
        table_kidnap = entities.create_vehicle(hash, ENTITY.GET_ENTITY_COORDS(V3, true),
        CAM.GET_FINAL_RENDERED_CAM_ROT(0).z)
        while not STREAMING.HAS_MODEL_LOADED(ped_hash) do
            STREAMING.REQUEST_MODEL(ped_hash)
            util.yield()
        end
        ped_to_kidnap = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
        ped_to_drive = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
        ENTITY.SET_ENTITY_INVINCIBLE(table_kidnap, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(table_kidnap, ped_to_kidnap, 0, 0, 1, -1, 0, 0, 0, false,
            true, true, false, 0, false)
        coords_ped = v3()
        coords_ped = ENTITY.GET_ENTITY_COORDS(V3, true)
        coords_ped.x = coords_ped.x + math.random(-20, 20)
        coords_ped.y = coords_ped.y + math.random(-20, 20)
        coords_ped.z = coords_ped.z
        ENTITY.SET_ENTITY_COORDS(ped_to_kidnap, coords_ped.x, coords_ped.y, coords_ped.z, false, false, false, false)
        PED.SET_PED_INTO_VEHICLE(ped_to_drive, table_kidnap, -1)

        if table_kidnap then
            DECORATOR.DECOR_SET_INT(table_kidnap, "MPBitset", 0)
            VEHICLE.SET_VEHICLE_MOD_KIT(table_kidnap, 0)
            for i = 0 ,50 do
                VEHICLE.SET_VEHICLE_MOD(table_kidnap, i, VEHICLE.GET_NUM_VEHICLE_MODS(table_kidnap, i) - 13, false)
            end	
            VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(table_kidnap, 255, 0, 255)
            VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(table_kidnap,255, 0, 255)
            VEHICLE.TOGGLE_VEHICLE_MOD(table_kidnap, 17, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(table_kidnap, 18, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(table_kidnap, 19, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(table_kidnap, 20, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(table_kidnap, 21, true)
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(table_kidnap, "Addict")

        end
        VEHICLE.SET_VEHICLE_ENGINE_ON(table_kidnap, true, true, false)
        TASK.TASK_VEHICLE_SHOOT_AT_PED(ped_to_drive, V3, 1)
        TASK.TASK_VEHICLE_CHASE(ped_to_drive, V3)
        util.yield(1)
        entities.delete_by_handle(ped_to_kidnap)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ped_hash)
        util.toast(os.date("%H:%M:%S") .. " Khanjali Sent To Attack", TOAST_ABOVE_MAP)
    end
end)

addict.action(Attacker_Tanks,"Spawn Attacker Tank", {"sendtank"}, "", function()
    V3 = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    hash = util.joaat("rhino")
    ped_hash = util.joaat("MP_M_Cocaine_01")
    if STREAMING.IS_MODEL_A_VEHICLE(hash) then
        STREAMING.REQUEST_MODEL(hash)
        while not STREAMING.HAS_MODEL_LOADED(hash) do
            util.yield()
        end
        local aab = 
        {
            x = -5784.258301,
            y = -8289.385742,
            z = -136.411270
        }
        ENTITY.SET_ENTITY_VISIBLE(ped_to_kidnap, false)
        ENTITY.FREEZE_ENTITY_POSITION(ped_to_kidnap, false)
        table_kidnap = entities.create_vehicle(hash, ENTITY.GET_ENTITY_COORDS(V3, true), CAM.GET_FINAL_RENDERED_CAM_ROT(0).z)
        while not STREAMING.HAS_MODEL_LOADED(ped_hash) do
            STREAMING.REQUEST_MODEL(ped_hash)
            util.yield()
        end
        ped_to_kidnap = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
        ped_to_drive = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
        ENTITY.SET_ENTITY_INVINCIBLE(table_kidnap, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(table_kidnap, ped_to_kidnap, 0, 0, 1, -1, 0, 0, 0, false,
            true, true, false, 0, false)
        coords_ped = v3()
        coords_ped = ENTITY.GET_ENTITY_COORDS(V3, true)
        coords_ped.x = coords_ped.x + math.random(-20, 20)
        coords_ped.y = coords_ped.y + math.random(-20, 20)
        coords_ped.z = coords_ped.z
        ENTITY.SET_ENTITY_COORDS(ped_to_kidnap, coords_ped.x, coords_ped.y, coords_ped.z, false, false, false, false)
        PED.SET_PED_INTO_VEHICLE(ped_to_drive, table_kidnap, -1)
        VEHICLE.SET_VEHICLE_ENGINE_ON(table_kidnap, true, true, false)
        TASK.TASK_VEHICLE_SHOOT_AT_PED(ped_to_drive, V3, 1)
        TASK.TASK_VEHICLE_CHASE(ped_to_drive, V3)
        util.yield(1)
        entities.delete_by_handle(ped_to_kidnap)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ped_hash)
        util.toast(os.date("%H:%M:%S") .. " Tank Sent To Attack", TOAST_ABOVE_MAP)
    end
end)

addict.action(Attacker_Tanks,"Spawn Attacker MiniTank", {"sendminitank"}, "", function()
    V3 = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    hash = util.joaat("minitank")
    ped_hash = util.joaat("mp_m_freemode_01")
    if STREAMING.IS_MODEL_A_VEHICLE(hash) then
        STREAMING.REQUEST_MODEL(hash)
        while not STREAMING.HAS_MODEL_LOADED(hash) do
            util.yield()
        end
        local aab = 
        {
            x = -5784.258301,
            y = -8289.385742,
            z = -136.411270
        }
        ENTITY.SET_ENTITY_VISIBLE(ped_to_kidnap, false)
        ENTITY.FREEZE_ENTITY_POSITION(ped_to_kidnap, false)
        table_kidnap = entities.create_vehicle(hash, ENTITY.GET_ENTITY_COORDS(V3, true),
        CAM.GET_FINAL_RENDERED_CAM_ROT(0).z)
        while not STREAMING.HAS_MODEL_LOADED(ped_hash) do
            STREAMING.REQUEST_MODEL(ped_hash)
            util.yield()
        end
        ped_to_kidnap = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
        ped_to_drive = entities.create_ped(28, ped_hash, aab, CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
        ENTITY.SET_ENTITY_INVINCIBLE(table_kidnap, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(table_kidnap, ped_to_kidnap, 0, 0, 1, -1, 0, 0, 0, false,
            true, true, false, 0, false)
        coords_ped = v3()
        coords_ped = ENTITY.GET_ENTITY_COORDS(V3, true)
        coords_ped.x = coords_ped.x + math.random(-20, 20)
        coords_ped.y = coords_ped.y + math.random(-20, 20)
        coords_ped.z = coords_ped.z
        ENTITY.SET_ENTITY_COORDS(ped_to_kidnap, coords_ped.x, coords_ped.y, coords_ped.z, false, false, false, false)
        PED.SET_PED_INTO_VEHICLE(ped_to_drive, table_kidnap, -1)
        VEHICLE.SET_VEHICLE_MOD_KIT(table_kidnap, 0)
        for i = 0, 50 do
            VEHICLE.SET_VEHICLE_MOD(table_kidnap, i, VEHICLE.GET_NUM_VEHICLE_MODS(table_kidnap, i) - 1, false)
        end
        VEHICLE.SET_VEHICLE_ENGINE_ON(table_kidnap, true, true, false)
        TASK.TASK_VEHICLE_SHOOT_AT_PED(ped_to_drive, V3, 1)
        TASK.TASK_VEHICLE_CHASE(ped_to_drive, V3)
        util.yield(1)
        entities.delete_by_handle(ped_to_kidnap)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ped_hash)
        util.toast(os.date("%H:%M:%S") .. " Tank Sent To Attack", TOAST_ABOVE_MAP)
    end
end)

addict.action(Attacker_Tanks, "Delete Tanks", {"deletetanks"}, "Deletes all tanks you've spawned", function()
        local count = 0
        for k, ent in pairs(entities.get_all_vehicles_as_handles()) do
            local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1, false)
            if not PED.IS_PED_A_PLAYER(PedInSeat) then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                entities.delete_by_handle(ent)
                count = count + 1
                util.yield()
                util.toast("Cleared Tanks.")
            end
        end
    end)

        attachoptions = addict.list(Trolling, "Attach Options", {}, "", function(); end)

    local windmilling = addict.list(attachoptions, "Spam Windmills", {}, "")

    addict.action(windmilling, "Spam Windmills", {"togglemills"}, "", function()
 --       if pid ~= players.user() then
        local TargetPlayerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerID)
        local TargetPlayerPos = ENTITY.GET_ENTITY_COORDS(TargetPlayerPed, true)
        local Object_pizza2 = entities.create_object(util.joaat("prop_windmill_01"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
        local Object_pizza2 = entities.create_object(util.joaat("prop_windmill_01"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
        local Object_pizza2 = entities.create_object(util.joaat("prop_windmill_01"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
        local Object_pizza2 = entities.create_object(util.joaat("prop_windmill_01"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
        for i = 0, 100 do 
            local TargetPlayerPos = ENTITY.GET_ENTITY_COORDS(TargetPlayerPed, true);
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Object_pizza2, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Object_pizza2, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Object_pizza2, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Object_pizza2, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
        util.yield(10)
        entities.delete_by_handle(Object_pizza2)
        entities.delete_by_handle(Object_pizza2)
        entities.delete_by_handle(Object_pizza2)
        entities.delete_by_handle(Object_pizza2)
        return
--        end
    end
    end)

    addict.toggle_loop(windmilling, "Attach Windmills", {"attachmills"}, "", function()
        if pid ~= players.user() then
        local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3
        local windmill = util.joaat("prop_windmill_01")
        STREAMING.REQUEST_MODEL(windmill)
        while not STREAMING.HAS_MODEL_LOADED(windmill) do
            util.yield()
        end
        local vehicle1 = entities.create_object(windmill, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        local vehicle2 = entities.create_object(windmill, playerpos, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        local vehicle3 = entities.create_object(windmill, playerpos, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        local vehicle4 = entities.create_object(windmill, playerpos, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(10)
        end
    end)

    addict.divider(windmilling, "__________________bruh__________________")

    addict.action(windmilling, "Clear Windmill's", {"clearwindmills"}, "", function()
        local count = 0
        for k,ent in pairs(entities.get_all_objects_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            count = count + 1
            util.yield()
        end
    end)


addict.toggle_loop(attachoptions,"Attach A Umbrella", {}, "", function()
    local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local playerpos = ENTITY.GET_ENTITY_COORDS(id)
    playerpos.z = playerpos.z + 3
    local candyattach = util.joaat("p_amb_brolly_01")
    STREAMING.REQUEST_MODEL(candyattach)
    while not STREAMING.HAS_MODEL_LOADED(candyattach) do
        util.yield()
    end
    local cane1 = entities.create_object(candyattach, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
    ENTITY.ATTACH_ENTITY_TO_ENTITY(cane1, id, playerpos, 0.2, 0.2, 0.5, 0, 0, 0, -180, 0, true, true, false, 0, true)
    ENTITY.SET_ENTITY_VISIBLE(cane1, true, 0)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(cane1)
    util.yield(100)
end)

    addict.toggle_loop(attachoptions, "Attach Candy Cane", {"attachcandycane"}, "", function()
        local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3
        local candyattach = util.joaat("w_me_candy_xm3")
        STREAMING.REQUEST_MODEL(candyattach)
        while not STREAMING.HAS_MODEL_LOADED(candyattach) do
            util.yield()
        end
        local cane1 = entities.create_object(candyattach, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        ENTITY.ATTACH_ENTITY_TO_ENTITY(cane1, id, playerpos, 0, 0, 1, 0, 0, 0, -180, 0, true, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(cane1, true, 0)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(cane1)
        util.yield(100)
    end)
    
    addict.toggle_loop(attachoptions, "Attach A Ramp", {"attachramp"}, "Works best on vehicles", function()
        local id = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3
        local rampattach = util.joaat("lts_prop_lts_ramp_03")
        STREAMING.REQUEST_MODEL(rampattach)
        while not STREAMING.HAS_MODEL_LOADED(rampattach) do
            util.yield()
        end
        local vehicle1 = entities.create_object(rampattach, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        local vehicle2 = entities.create_object(rampattach, playerpos, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        local vehicle3 = entities.create_object(rampattach, playerpos, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        local vehicle4 = entities.create_object(rampattach, playerpos, 0)
            ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle1, id, playerpos, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
            ENTITY.SET_ENTITY_VISIBLE(vehicle1, true, 0)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle1)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle2)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle3)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicle4)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle2, vehicle1, 0, 0, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle3, vehicle1, 0, 3, 3, 0, 0, 0, -180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(vehicle4, vehicle1, 0, 3, 0, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle1, true)
        util.yield(100)
    end)

    
    addict.toggle(attachoptions, "Attach To Player", {"attachto"}, "", function(on)
        if PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid) == players.user_ped() then 
            return
        end
        if on then
            ENTITY.ATTACH_ENTITY_TO_ENTITY(players.user_ped(), PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), 0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)
        else
            ENTITY.DETACH_ENTITY(players.user_ped(), false, false)
            end
        end)

        addict.toggle_loop(attachoptions, "Attach All Vehicles", {"attachallvehs"}, "", function(on_toggle)
                local tar = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
                vehicles = entities.get_all_vehicles_as_handles()
                for i, ent in pairs(vehicles) do
                    if not is_ped_player(VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1)) then
                        ENTITY.ATTACH_ENTITY_TO_ENTITY(ent, tar, 0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)
                    end
                end
            end)

            addict.toggle_loop(attachoptions, "Attach All Objects", {"attachallobjects"}, "", function(on_toggle)
                local tar = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
                objects = entities.get_all_objects_as_handles()
                for i, ent in pairs(objects) do
                    if not is_ped_player(VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1)) then
                        ENTITY.ATTACH_ENTITY_TO_ENTITY(ent, tar, 0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)
                    end
                end
            end)

            addict.toggle_loop(attachoptions, "Attach All Peds", {"attachallpeds"}, "", function(on_toggle)
                local tar = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
                peds = entities.get_all_peds_as_handles()
                for i, ent in pairs(peds) do
                    if not is_ped_player(VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1)) then
                        ENTITY.ATTACH_ENTITY_TO_ENTITY(ent, tar, 0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)
                    end
                end
            end)

    addict.toggle_loop(attachoptions, "Attach All Nearby Entities", {"attachallnearby"}, "", function(on_toggle)
        local tar = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        objects = entities.get_all_objects_as_handles()
        vehicles = entities.get_all_vehicles_as_handles()
        peds = entities.get_all_peds_as_handles()
        for i, ent in pairs(peds) do
            if not is_ped_player(ped) then
                ENTITY.ATTACH_ENTITY_TO_ENTITY(ent, tar, 0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)
            end
        end
        for i, ent in pairs(vehicles) do
            if not is_ped_player(VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1)) then
                ENTITY.ATTACH_ENTITY_TO_ENTITY(ent, tar, 0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)
            end
        end
        for i, ent in pairs(objects) do
            ENTITY.ATTACH_ENTITY_TO_ENTITY(ent, tar, 0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)
        end
    end)

    addict.toggle_loop(attachoptions, "Dettach All Nearby Entities", {"attachallnearby"}, "", function(on_toggle)
        local tar = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        objects = entities.get_all_objects_as_handles()
        vehicles = entities.get_all_vehicles_as_handles()
        peds = entities.get_all_peds_as_handles()
        for i, ent in pairs(peds) do
            if not is_ped_player(ped) then
                DetachAll(ent, tar)
            end
        end
        for i, ent in pairs(vehicles) do
            if not is_ped_player(VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1)) then
                DetachAll(ent, tar)
            end
        end
        for i, ent in pairs(objects) do
            DetachAll(ent, tar)
        end
    end)
    

local usingPiggyback = false
local usingRape = false

addict.toggle(attachoptions, "Rape Player", {"rape"}, "Rapes a player.", function(on)
    usingRape = on

    if pid == players.user() then return end -- avoid self-attachment

    if usingRape then
        usingPiggyback = false

        local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid) -- correct way to get ped from Player ID
        local myPed = players.user_ped()

        -- Load animation
        local animDict = "rcmpaparazzo_2"
        local animName = "shag_loop_a"
        STREAMING.REQUEST_ANIM_DICT(animDict)
        while not STREAMING.HAS_ANIM_DICT_LOADED(animDict) do
            util.yield_once()
        end

        -- Play the animation
        TASK.TASK_PLAY_ANIM(myPed, animDict, animName, 8.0, -8.0, -1, 1, 0.0, false, false, false)

        -- Attach to target player
        ENTITY.ATTACH_ENTITY_TO_ENTITY(
            myPed,               -- entity to attach
            targetPed,           -- target to attach to
            0,                   -- bone index (0 = root)
            0.0, -0.3, 0.0,      -- x, y, z offset
            0.0, 0.0, 0.0,       -- pitch, roll, yaw (rotation)
            false, true, false, false, 0, true
        )

        -- Maintain attachment while active
        while usingRape and is_player_active(pid, false, true) and not util.is_session_transition_active() do
            util.yield_once()
        end

        -- Cleanup
        usingRape = false
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(myPed)
        ENTITY.DETACH_ENTITY(myPed, true, false)
    end
end)


    -- Needs Fixing (won't attach to other players)
    
    --[[
        local usingPiggyback = false
        local usingRape = false

	addict.toggle(attachoptions, "Rape Player", {"Rape"}, "The player won't see you attached to them", function (on)
		usingRape = on
		-- Otherwise the game would crash
		if pid == players.user() then
			return
		end
		if usingRape then
			usingPiggyback = false
			local target = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.GET_PLAYER_NAME(pid))
			STREAMING.REQUEST_ANIM_DICT("rcmpaparazzo_2")
			while not STREAMING.HAS_ANIM_DICT_LOADED("rcmpaparazzo_2") do
				util.yield_once()
			end
			TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmpaparazzo_2", "shag_loop_a", 8.0, -8.0, -1, 1, 0.0, false, false, false)
			ENTITY.ATTACH_ENTITY_TO_ENTITY(players.user_ped(), target, 0, 0, -0.3, 0, 0.0, 0.0, 0.0, false, true, false, false, 0, true, 0)
			while usingRape and is_player_active(pid, false, true) and
			not util.is_session_transition_active() do
				util.yield_once()
			end
			usingRape = false
			TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
			ENTITY.DETACH_ENTITY(players.user_ped(), true, false)
		end
	end)
]]

    addict.action(attachoptions, "Clear Peds", {"clearpeds"}, "", function()
        local count = 0
        for k,ent in pairs(entities.get_all_peds_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            count = count + 1
            util.yield()
        end
    end)

    addict.action(attachoptions, "Clear Objects", {"clearobjects"}, "", function()
        local count = 0
        for k,ent in pairs(entities.get_all_objects_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            count = count + 1
            util.yield()
        end
    end)

    addict.action(attachoptions, "Clear Vehicles", {"clearvehicles"}, "", function()
        local count = 0
        for k, ent in pairs(entities.get_all_vehicles_as_handles()) do
            local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1, false)
            if not PED.IS_PED_A_PLAYER(PedInSeat) then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
                entities.delete_by_handle(ent)
                count = count + 1
                util.yield()
            end
        end
    end)

    addict.action(attachoptions, "Clear All", {"clearall"}, "", function()
        addict.trigger_commands("clearpeds" .. players.get_name(pid))
        addict.trigger_commands("clearobjects" .. players.get_name(pid))
        addict.trigger_commands("clearvehicles" .. players.get_name(pid))
    end)

    Owned_Anon = addict.list(Trolling, "Owned & Anon", {"o&a"}, "", function(); end)

    Owned_Anon_Snipe = addict.list(Owned_Anon, "Snipe", {}, "", function(); end)

    addict.divider(Owned_Anon_Snipe, "Owned & Anon")

    addict.action(Owned_Anon_Snipe, "Owned snipe", {"osnipe"}, "Snipes the player with you as the attacker [Will not work if you do not have LOS with the target]. Maybe patched now.", function(on_click)
        owner = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
        target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        target = ENTITY.GET_ENTITY_COORDS(target_ped)
        local coords = target
        coords.x = coords.x
        coords.y = coords.y + -0.5
        coords.z = coords.z
        MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(coords['x'], coords['y'], coords['z'], coords['x'], coords['y'], coords['z']+0.1, 300.0, true, 100416529, owner, true, false, 100.0)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(Owned_Anon_Snipe, "Anon snipe", {"asnipe"}, "Snipes the player anonymously, as if a random ped did it [The randomly selected ped needs to have LOS, I think].", function(on_click)
        target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        target = ENTITY.GET_ENTITY_COORDS(target_ped)
        random_ped = get_random_ped()
        MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(target['x'], target['y'], target['z'], target['x'], target['y'], target['z']+0.1, 300.0, true, 100416529, random_ped, true, false, 100.0)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.divider(Owned_Anon_Snipe, "Owned & Anon Looped")

    addict.toggle_loop(Owned_Anon_Snipe, "Owned snipe", {"osnipel"}, "Snipes the player with you as the attacker [Will not work if you do not have LOS with the target]. Maybe patched now.", function(on_click)
        owner = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
        target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        target = ENTITY.GET_ENTITY_COORDS(target_ped)
        MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(target['x'], target['y'], target['z'], target['x'], target['y'], target['z']+0.1, 300.0, true, 100416529, owner, true, false, 100.0)
    end)

    addict.toggle_loop(Owned_Anon_Snipe, "Anon snipe", {"asnipel"}, "Snipes the player anonymously, as if a random ped did it [The randomly selected ped needs to have LOS, I think].", function(on_click)
        target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        target = ENTITY.GET_ENTITY_COORDS(target_ped)
        random_ped = get_random_ped()
        MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(target['x'], target['y'], target['z'], target['x'], target['y'], target['z']+0.1, 300.0, true, 100416529, random_ped, true, false, 100.0)
    end)

    Owned_Anon_Explode = addict.list(Owned_Anon, "Explode", {}, "", function(); end)

    addict.divider(Owned_Anon_Explode, "Owned & Anon")

    addict.action(Owned_Anon_Explode, "Owned Explode", {"oexplode"}, "Explode the player.", function() --owned exp
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        FIRE.ADD_OWNED_EXPLOSION(players.user_ped(), c.x, c.y, c.z, exp, 100.0, true, false, 1.0)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(Owned_Anon_Explode, "Anon Explode", {"aexplode"}, "Explode the player anonymously.", function() --anon exp
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.action(Owned_Anon_Explode, "Owned Orbital Cannon Explode", {"orbitalbang"}, "Explode the player using become orbital cannon looped.", function() --owned exp
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        addict.trigger_commands("becomeorbitalcannon")
        FIRE.ADD_OWNED_EXPLOSION(players.user_ped(), c.x, c.y, c.z, exp, 100.0, true, false, 1.0)
        util.yield(500)
        addict.trigger_commands("becomeorbitalcannon")
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

    addict.divider(Owned_Anon_Explode, "Owned & Anon Loop")

    addict.toggle_loop(Owned_Anon_Explode, "Owned Explode Loop", {"oexplodel"}, "Explode the player looped.", function() --owned exp
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        FIRE.ADD_OWNED_EXPLOSION(players.user_ped(), c.x, c.y, c.z, exp, 100.0, true, false, 1.0)
    end)

    addict.toggle_loop(Owned_Anon_Explode, "Anon Explode Loop", {"aexplodel"}, "Explode the player anonymously looped.", function() --anon exp
        local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local c = ENTITY.GET_ENTITY_COORDS(p)
        FIRE.ADD_EXPLOSION(c.x, c.y, c.z, exp, 100.0, true, false, 1.0, false)
    end, nil, nil, COMMANDPERM_AGGRESSIVE)

---------------------------------------------------------------------------------------------------------------------------------------
--[[
──────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─████████████████───██████████████─██████████████─██████──██████─██████████████─██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██░░██████████─██░░████████░░██───██░░██████░░██─██░░██████████─██░░██──██░░██─██░░██████████─██░░██████████─
─██░░██─────────██░░██────██░░██───██░░██──██░░██─██░░██─────────██░░██──██░░██─██░░██─────────██░░██─────────
─██░░██─────────██░░████████░░██───██░░██████░░██─██░░██████████─██░░██████░░██─██░░██████████─██░░██████████─
─██░░██─────────██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██░░██─────────██░░██████░░████───██░░██████░░██─██████████░░██─██░░██████░░██─██░░██████████─██████████░░██─
─██░░██─────────██░░██──██░░██─────██░░██──██░░██─────────██░░██─██░░██──██░░██─██░░██─────────────────██░░██─
─██░░██████████─██░░██──██░░██████─██░░██──██░░██─██████████░░██─██░░██──██░░██─██░░██████████─██████████░░██─
─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██████████████─██████──██████████─██████──██████─██████████████─██████──██████─██████████████─██████████████─
──────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]

    local include_friends = false
    addict.toggle(Crashing, "Exclude friends", {"excludefriends"}, "Save friends ass from being crashed if close (Turns off sync to friends using timeout).", function(on)
        include_friends = on
        for k, id in pairs(players.list(false, true, false)) do
            name = players.get_name(id)
            if include_friends then
                addict.trigger_commands("timeout"..name.." on")
            else
                addict.trigger_commands("timeout"..name.." off")
            end
        end
    end, false)
 
    addict.divider(Crashing, "Crashes")
    

----------------------------------------------------------------------------------------------------------------------------------------


local vehicle_models = {
  "adder","admiral", "alpha", "banshee", "blista", "buffalo", "buffalo2", "carbonizzare", "comet2", "coquette", "elegy2", "feltzer2",
  "furoregt", "fusilade", "futo", "jester", "jester2", "massacro", "ninef", "ninef2", "penumbra", "rapidgt", "rapidgt3",
  "raptor", "ruffian", "sanchez", "sanchez2", "slamvan", "slamvan2", "slamvan3", "sultan", "sultanrs", "surano", "t20",
  "trophytruck", "trophytruck2", "turismor", "vacca", "vigero", "vigero2", "voltic", "zentorno", "bus", "tug", "police",
  "tractor", "firetruk", "asbo", "astron", "autarch", "avarus", "baller", "baller2", "baller3", "baller4", "baller5", "baller6",
  "banshee2", "benson", "bf400", "bfinjection", "bifta", "bison", "blazer", "blazer2", "blazer3", "blazer4", "blazer5",
  "blimp", "blista2", "blista3", "bobcatxl", "brawler", "brioso", "brioso2", "brioso3", "buffalo3", "buffalo4", "bullet",
  "burrito", "burrito2", "burrito3", "burrito4", "burrito5", "bus", "buzzard", "buzzard2", "caddy", "caddy2", "caddy3",
  "calico", "camacho", "caracara", "caracara2", "carbonrs", "casco", "cavalcade", "cavalcade2", "cerberus", "cerberus2",
  "cerberus3", "cheburek", "chimera", "chino", "chino2", "cliffhanger", "clique", "cog55", "cog552", "cogcabrio",
  "cognoscenti", "cognoscenti2", "comet3", "comet4", "comet5", "comet6", "comet7", "contender", "coquette2", "coquette3",
  "coquette4", "crusader", "cyclone", "cyclone2", "deathbike", "deathbike2", "deathbike3", "defiler", "deluxo", "deveste",
  "deviant", "diablous", "diablous2", "dominator", "dominator2", "dominator3", "dominator4", "dominator5", "dominator6",
  "dominator7", "dominator8", "drafter", "driftampa", "dune", "dune2", "dune3", "dune4", "dune5", "dynasty", "elegy",
  "ellie", "emperor", "emperor2", "emperor3", "entity2", "entity3", "entityxf", "esskey", "everon", "exemplar", "f620",
  "fagaloa", "faggio", "faggio2", "faggio3", "fbi", "fbi2", "fcr", "fcr2", "felon", "felon2", "feltzer", "flashgt", "fmj",
  "freecrawler", "fugitive", "furia", "gauntlet", "gauntlet2", "gauntlet3", "gauntlet4", "gauntlet5", "glendale",
  "glendale2", "greenwood", "gresley", "growler", "gt500", "guardian", "habanero", "hakuchou", "hakuchou2", "hellion",
  "hermes", "hotknife", "hotring", "hustler", "ignus", "impaler", "impaler2", "impaler3", "impaler4", "imperator",
  "imperator2", "imperator3", "infernus", "infernus2", "ingot", "innovation", "insurgent", "insurgent2", "insurgent3",
  "intruder", "issi2", "issi3", "issi4", "issi5", "issi6", "issi7", "italigtb", "italigtb2", "italigto", "italirsx",
  "iwagen", "jackal", "jb700", "jb7002", "jester3", "jester4", "journey", "journey2", "jugular", "kalahari", "kamacho",
  "kanjo", "kanjosj", "khamelion", "kuruma", "kuruma2", "landstalker", "landstalker2", "le7b", "lectro", "lguard",
  "locust", "lynx", "mamba", "manana", "manana2", "manchez", "manchez2", "massacro2", "mesa", "mesa2", "mesa3",
}



local object_models = { 
    "prop_beachball_02", "prop_gascyl_01a", "prop_barrel_02a", "prop_rock_1_c",
    "prop_barrier_work01a",
    "prop_trafficcone01a",
    "prop_sign_road_01a",
    "prop_ld_garaged_01",
    "prop_woodpile_01a",
    "prop_fire_exting",
    "prop_bench_01a",
    "prop_bin_04a",
    "prop_cctv_cam_01a",
    "prop_cs_bike_01",
    "prop_ld_keypad_01",
    "prop_tv_flat_01",
    "prop_watercooler",
    "prop_jukebox_01",
    "prop_park_bench_01",
    "prop_fire_hydrant_01",
    "prop_streetlight_01",
    "prop_mailbox_01",
    "prop_dumpster_01a",
    "prop_roadblock_01"
}

local all_spawned = {}

-- Helper: Load model
local function request_model(hash)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        util.yield()
    end
end

-- Get random position near player
local function get_offset_coords(player_coords)
    return {
        x = player_coords.x + math.random(-15, 15),
        y = player_coords.y + math.random(-15, 15),
        z = player_coords.z + 1.0
    }
end

-- Helper: Create vehicle
local function spawn_vehicle(model_name, coords)
    local hash = util.joaat(model_name)
    request_model(hash)
    local veh = VEHICLE.CREATE_VEHICLE(hash, coords.x, coords.y, coords.z, math.random(0, 360), true, true, false)
    table.insert(all_spawned, veh)
    return veh
end

-- Helper: Create object
local function spawn_object(model_name, coords)
    local hash = util.joaat(model_name)
    request_model(hash)
    local obj = OBJECT.CREATE_OBJECT(hash, coords.x, coords.y, coords.z, true, true, false)
    table.insert(all_spawned, obj)
    return obj
end

-- Helper: Attach two entities randomly
local function attach_randomly(ent1, ent2)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(ent1, ent2, 0,
        math.random(-3, 3), math.random(-3, 3), math.random(-1, 3),
        math.random(-180, 180), math.random(-180, 180), math.random(-180, 180),
        true, true, true, false, 2, true)
end

-- Chaos logic
local function run_chaos_chain()
    local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local player_coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)

    local last_ent = nil
    for i = 1, 10 do
        util.yield(100)

        local pos = get_offset_coords(player_coords)

        local ent
        if math.random() > 0.5 then
            local veh_model = vehicle_models[math.random(#vehicle_models)]
            ent = spawn_vehicle(veh_model, pos)

            -- Make driver panic
            local driver = PED.CREATE_RANDOM_PED(pos.x, pos.y, pos.z)
            PED.SET_PED_INTO_VEHICLE(driver, ent, -1)
            TASK.TASK_VEHICLE_DRIVE_WANDER(driver, ent, 100.0, 786603)
            PED.SET_PED_FLEE_ATTRIBUTES(driver, 0, true)
            TASK.TASK_COMBAT_HATED_TARGETS_AROUND_PED(driver, 500.0, 0)

        else
            local obj_model = object_models[math.random(#object_models)]
            ent = spawn_object(obj_model, pos)
            ENTITY.APPLY_FORCE_TO_ENTITY(ent, 1, math.random(-10, 10), math.random(-10, 10), 20.0, 0, 0, 0, 0, false, true, true, false, true)
        end

        -- Chain to previous
        if last_ent and ENTITY.DOES_ENTITY_EXIST(last_ent) then
            attach_randomly(ent, last_ent)
        end

        last_ent = ent
    end
end

addict.action(Crashing, "Chaos Chain Crash 🔥", {}, "Spawns crazy linked vehicles and objects with physics and AI. Causes crash event (X8) and (XK)", function()
    run_chaos_chain()
end)

----------------------------------------------------------------------------------------------------------------------------------------

local bikeModel = util.joaat("hexer")
local boatModel = util.joaat("tug")
local wallModel = util.joaat("prop_wallbrick_01") -- we'll make it invisible later

-- Load models
STREAMING.REQUEST_MODEL(bikeModel)
STREAMING.REQUEST_MODEL(boatModel)
STREAMING.REQUEST_MODEL(wallModel)
while not STREAMING.HAS_MODEL_LOADED(bikeModel) or not STREAMING.HAS_MODEL_LOADED(boatModel) or not STREAMING.HAS_MODEL_LOADED(wallModel) do
    util.yield()
end

local spawned_entities = {}

-- Create invisible wall
local function create_invisible_wall(pos)
    local wall = OBJECT.CREATE_OBJECT(wallModel, pos.x, pos.y, pos.z, true, true, false)
    ENTITY.SET_ENTITY_VISIBLE(wall, false, 0)
    ENTITY.FREEZE_ENTITY_POSITION(wall, true)
    table.insert(spawned_entities, wall)
    return wall
end

-- Random position around player
local function random_offset()
    return {
        x = math.random(-10, 10) + 0.0,
        y = math.random(-10, 10) + 0.0,
        z = math.random(-1, 2) + 0.0
    }
end

-- Attach randomly
local function attach_entities_randomly(entity1, entity2)
    local rx = math.random(-180, 180)
    local ry = math.random(-180, 180)
    local rz = math.random(-180, 180)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(entity1, entity2, 0, 0.0, 0.0, 0.0, rx, ry, rz, true, true, true, false, 0, true)
end

-- Main function
local function chaos_spawn()
    local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local player_coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)

    for i = 1, 150 do
        -- Spawn bike
        local bike_offset = random_offset()
        local bike = VEHICLE.CREATE_VEHICLE(bikeModel, player_coords.x + bike_offset.x, player_coords.y + bike_offset.y, player_coords.z + bike_offset.z, 0.0, true, true, false)
        table.insert(spawned_entities, bike)

        -- Spawn boat
        local boat_offset = random_offset()
        local boat = VEHICLE.CREATE_VEHICLE(boatModel, player_coords.x + boat_offset.x, player_coords.y + boat_offset.y, player_coords.z + boat_offset.z, 0.0, true, true, false)
        table.insert(spawned_entities, boat)

        -- Spawn wall
        local wall_offset = random_offset()
        local wall = create_invisible_wall({
            x = player_coords.x + wall_offset.x,
            y = player_coords.y + wall_offset.y,
            z = player_coords.z + wall_offset.z
        })

        -- Attach bike to boat, or boat to wall, etc.
        local roll = math.random(1, 3)
        if roll == 1 then
            attach_entities_randomly(bike, boat)
        elseif roll == 2 then
            attach_entities_randomly(boat, wall)
        else
            attach_entities_randomly(bike, wall)
        end
    end
end

-- Toggle
addict.action(Crashing, "BB Crash", {}, "Spawns choppers and tugboats that attach into walls or each other.", function()
    chaos_spawn()
end)

----------------------------------------------------------------------------------------------------------------------------------------

local function can_run_crash()
    return true -- Always runs, since we're not mimicking `outgoing_player_sync_exclusive.isActive()` exactly
end

-- Task-based crash logic
local function crash_task_on_player(pid)
    if not can_run_crash() then return end

    local target_pos = players.get_position(pid)

    -- Move the local player to the target's position
    ENTITY.SET_ENTITY_COORDS(players.user_ped(), target_pos.x, target_pos.y, target_pos.z, false, false, false, true)

    -- Clear current tasks
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())

    -- Load the animation dictionary
    local anim_dict = "anim@mp_player_intupperstinker"
    STREAMING.REQUEST_ANIM_DICT(anim_dict)
    while not STREAMING.HAS_ANIM_DICT_LOADED(anim_dict) do
        util.yield()
    end

    -- Play task (sweep aim)
    TASK.TASK_SWEEP_AIM_POSITION(
        players.user_ped(),
        anim_dict,
        "", "", "", -- These would be bone names or anim names if needed
        -1,         -- Duration
        0.0, 0.0, 0.0, -- Position offsets
        0.0, 0.0     -- Sweep direction
    )

    util.yield(1000)

    -- Clear tasks again
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
end
 
addict.action(Crashing,"Anim Crash", {"animcrash"}, "Doesn't work with cherax co loaded as it blocks it.", function(pid)
    crash_task_on_player(pid)
end)

----------------------------------------------------------------------------------------------------------------------------------------
-- Request a model to load
function request_model(model)
    STREAMING.REQUEST_MODEL(model)
    while not STREAMING.HAS_MODEL_LOADED(model) do
        util.yield()
    end
end
 
local getEntityCoords = ENTITY.GET_ENTITY_COORDS
local getPlayerPed = PLAYER.GET_PLAYER_PED

local function create_car_for_player(player)
    local model = util.joaat("freightcar")
    request_model(model)

    --local pos = players.get_position(player) Old pos

    local pos = getEntityCoords(getPlayerPed(player))
    local vehicle = entities.create_vehicle(model, pos, 0)

    ENTITY.SET_ENTITY_VISIBLE(vehicle, false, 0)
    ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(vehicle, false, false)

    return vehicle
end

-- This function mimics the expandDong function
function crash_train_on_player(pid)
 
    local car1 = create_car_for_player(pid)
    local car2 = create_car_for_player(pid)
    local car3 = create_car_for_player(pid)

    util.yield(1000)

    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(car1)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(car2)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(car3)

    util.yield(1000)

    entities.delete_by_handle(car1)
    entities.delete_by_handle(car2)
    entities.delete_by_handle(car3)
end
 
addict.action(Crashing, "Train Crash (Steamroll)", {"Steamroll"}, "", function(pid)
    crash_train_on_player(pid)
end)

----------------------------------------------------------------------------------------------------------------------------------------    

    local getEntityCoords = ENTITY.GET_ENTITY_COORDS
    local getPlayerPed = PLAYER.GET_PLAYER_PED

    addict.toggle_loop(Crashing, "Weed Pot Crash", {"toggleweedcrash"}, "", function(on_toggle)
        local cord = getEntityCoords(getPlayerPed(pid))
        local a1 = entities.create_object(-930879665, cord)
        local a2 = entities.create_object(3613262246, cord)
        local b1 = entities.create_object(452618762, cord)
        local b2 = entities.create_object(3613262246, cord)
        for i = 1, 10 do
            util.request_model(-930879665)
            util.yield(10)
            util.request_model(3613262246)
            util.yield(10)
            util.request_model(452618762)
            util.yield(300)
            entities.delete_by_handle(a1)
            entities.delete_by_handle(a2)
            entities.delete_by_handle(b1)
            entities.delete_by_handle(b2)
            util.request_model(452618762)
            util.yield(10)
            util.request_model(3613262246)
            util.yield(10)
            util.request_model(-930879665)
            util.yield(10)
            return
        end
    end)

----------------------------------------------------------------------------------------------------------------------------------------

	local planes = {'hydra','volatol','duster','luxor','Lazer','mammatus','velum','Shamal','Stunt','vestra','titan','besra',
	'dodo','alkonost','velum2','cuban800','luxor2','nimbus','howard','alphaz1','seabreeze','nokota','molotok','starling','tula',
	'microlight','rogue','pyro','mogul','strikeforce','avenger','avenger2','bombushka'}

	local coords = {
		{-1718.5878, -982.02405, 322.83115},
		{-2671.5007, 3404.2637, 455.1972},
		{9.977266, 6621.406, 306.46536 },
		{3529.1458, 3754.5452, 109.96472},
		{252, 2815, 120},
	}

	local cveh = {
		'raketrailer','docktrailer','trailers','freightgrain','patrolboat','prop_truktrailer_01a',
        'prop_tanktrailer_01a','prop_rail_boxcar','prop_rail_boxcar','sm_prop_smug_havok',
        'dt1_11_heliport','dt1_11_heliport_st','sf_prop_sf_heli_blade_b_02a'}

	local to_ply = 1

G_GeneratedList = false

addict.toggle_loop(Crashing, "Hyper-Crash", {"hypercrash"}, "Warning: Max-aggression crash attempt", function()
	--addict.trigger_commands("anticrashcamera")
    if PED.IS_PED_IN_ANY_VEHICLE(GetLocalPed(), false) then
        local jet = PED.GET_VEHICLE_PED_IS_IN(GetLocalPed(), false)
        ENTITY.SET_ENTITY_PROOFS(jet, true, true, true, true, true, true, true, true)

        if players.exists(to_ply) then 
            local asda = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(to_ply)) 
            ENTITY.SET_ENTITY_COORDS(jet, asda.x, asda.y, asda.z + math.random(100, 250), false, false, false, true) 
            to_ply = to_ply + 1
        else 
            if to_ply >= 32 then to_ply = 0 end
            to_ply = to_ply + 1
            local let_coords = coords[math.random(1, #coords)]
            ENTITY.SET_ENTITY_COORDS(jet,
                let_coords[1] + math.random(-100, 100),
                let_coords[2] + math.random(-100, 100),
                let_coords[3] + math.random(0, 250),
                false, false, false, true)
        end
        -- Max out physics load
        ENTITY.SET_ENTITY_VELOCITY(jet, math.random(-500, 500), math.random(-500, 500), math.random(-500, 1000))
        ENTITY.SET_ENTITY_ROTATION(jet, math.random(0, 720), math.random(0, 720), math.random(0, 720), 2, true)

        local pedpos = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
        pedpos.z = pedpos.z + math.random(50, 100)
        for i = 1, math.random(10, 15) do
            local s_plane = planes[math.random(1, #planes)]
            RqModel(util.joaat(s_plane))
            local veha1 = entities.create_vehicle(util.joaat(s_plane), pedpos, math.random(0, 360))

            -- Nest inside another vehicle for max collision
            local nested = entities.create_vehicle(util.joaat(planes[math.random(1, #planes)]), pedpos, math.random(0, 360))
            ENTITY.ATTACH_ENTITY_TO_ENTITY(nested, veha1, 0, 0, 0, 0, 0, 0, 0, false, false, false, false, 0, true)
			ENTITY.ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(veha1, jet, 0, 0, 0, 0, 5 + (2 * i), 0, 0, 0, 0, 0, 0, 1000, true, true, true, true, 2)
        end
        AddEntityToList("💣 Crash Plane: ", jet, true)
        -- Very short delay before overloading position updates
        util.yield(math.random(50, 100))
        -- Flood with teleport spam
        for i = 1, 100 do
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(
                jet,
                math.random(-8000, 8000),
                math.random(-8000, 8000),
                math.random(100, 2500),
                false, false, false)
            util.yield() -- zero delay
        end

    else
        RqModel(util.joaat('hydra'))
        local spawn_in = entities.create_vehicle(util.joaat('hydra'), ENTITY.GET_ENTITY_COORDS(GetLocalPed()), math.random(0, 360))
        PED.SET_PED_INTO_VEHICLE(GetLocalPed(), spawn_in, -1)
		--addict.trigger_commands("anticrashcamera")
        end
	end)

addict.toggle_loop(Crashing, "Hyper-Crash V2", {"hypercrashv2"}, "Warning: Max-aggression crash attempt", function()
	--addict.trigger_commands("anticrashcamera")
    if PED.IS_PED_IN_ANY_VEHICLE(GetLocalPed(), false) then
        local jet = PED.GET_VEHICLE_PED_IS_IN(GetLocalPed(), false)
        ENTITY.SET_ENTITY_PROOFS(jet, true, true, true, true, true, true, true, true)
        if players.exists(to_ply) then 
            local asda = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(to_ply)) 
            ENTITY.SET_ENTITY_COORDS(jet, asda.x, asda.y, asda.z + math.random(100, 250), false, false, false, true) 
            to_ply = to_ply + 1
        else 
            if to_ply >= 32 then to_ply = 0 end
            to_ply = to_ply + 1
            local let_coords = coords[math.random(1, #coords)]
            ENTITY.SET_ENTITY_COORDS(jet,
                let_coords[1] + math.random(-100, 100),
                let_coords[2] + math.random(-100, 100),
                let_coords[3] + math.random(0, 250),
                false, false, false, true)
        end
        -- Max out physics load
        ENTITY.SET_ENTITY_VELOCITY(jet, math.random(-500, 500), math.random(-500, 500), math.random(-500, 1000))
        ENTITY.SET_ENTITY_ROTATION(jet, math.random(0, 720), math.random(0, 720), math.random(0, 720), 2, true)
        local pedpos = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
        pedpos.z = pedpos.z + math.random(50, 100)
        for i = 1, math.random(10, 15) do
            local cveh = cveh[math.random(1, #cveh)]
            RqModel(util.joaat(cveh))
            local veha1 = entities.create_vehicle(util.joaat(cveh), pedpos, math.random(0, 360))

            -- Nest inside another vehicle for max collision
            local nested = entities.create_vehicle(util.joaat(cveh[math.random(1, #cveh)]), pedpos, math.random(0, 360))
            ENTITY.ATTACH_ENTITY_TO_ENTITY(nested, veha1, 0, 0, 0, 0, 0, 0, 0, false, false, false, false, 0, true)
			ENTITY.ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(veha1, jet, 0, 0, 0, 0, 5 + (2 * i), 0, 0, 0, 0, 0, 0, 1000, true, true, true, true, 2)
        end
        AddEntityToList("Crash Plane: ", jet, true)
        -- Very short delay before overloading position updates
        util.yield(math.random(50, 100))
        -- Flood with teleport spam
        for i = 1, 100 do
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(
                jet,
                math.random(-8000, 8000),
                math.random(-8000, 8000),
                math.random(100, 2500),
                false, false, false)
            util.yield() -- zero delay
        end
    else
        RqModel(util.joaat('freightgrain'))
        local spawn_in = entities.create_vehicle(util.joaat('freightgrain'), ENTITY.GET_ENTITY_COORDS(GetLocalPed()), math.random(0, 360))
        PED.SET_PED_INTO_VEHICLE(GetLocalPed(), spawn_in, -1)
		--addict.trigger_commands("anticrashcamera")
        end
	end)

    addict.toggle_loop(Crashing, "Trailer Crash", {"trailercrash"}, "(DontGoNear)", function(on_toggle)
        --addict.trigger_commands("anticrashcamera")
        local object = entities.create_object(util.joaat("raketrailer"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("docktrailer"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("trailers"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("freightgrain"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("patrolboat"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("prop_truktrailer_01a"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("prop_tanktrailer_01a"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("prop_rail_boxcar"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("prop_rail_boxcar"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("sm_prop_smug_havok"), coords, ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("dt1_11_heliport"), coords, ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("dt1_11_heliport_st"), ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        local object = entities.create_object(util.joaat("sf_prop_sf_heli_blade_b_02a"), coords, ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)))
        --addict.trigger_commands("anticrashcamera")
    end)

     
local TaskCrashes = addict.list(Crashing, "Task Crashes", {"taskcrashes"}, "Spawns animations next to them for crashing.")



local crash_ents = {}
   local BrokenScenarioPeds = {
       "s_m_y_construct_01",
       "s_m_y_construct_02",
       "csb_janitor",
       "ig_russiandrunk",
       "s_m_m_gardener_01",
       "s_m_y_winclean_01",
       "a_f_m_bodybuild_01",
       "s_m_m_cntrybar_01",
       "s_m_y_chef_01",
       "ig_abigail",
   }
   local BrokenScenarios = {
       "WORLD_HUMAN_CONST_DRILL",
       "WORLD_HUMAN_HAMMERING",
       "WORLD_HUMAN_JANITOR",
       "WORLD_HUMAN_DRINKING",
       "WORLD_HUMAN_GARDENER_PLANT",
       "WORLD_HUMAN_MAID_CLEAN",
       "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS",
       "WORLD_HUMAN_STAND_FISHING",
       "PROP_HUMAN_BBQ",
       "WORLD_HUMAN_WELDING",
   }
   local BrokenScenariosProps = {
       "prop_tool_jackham",
       "prop_tool_hammer",
       "prop_tool_broom",
       "prop_amb_40oz_02",
       "prop_cs_trowel",
       "prop_rag_01",
       "prop_curl_bar_01",
       "prop_fishing_rod_01",
       "prop_fish_slice_01",
       "prop_weld_torch",
       "p_amb_coffeecup_01",
   }

       addict.toggle(TaskCrashes, "All Scenario Crashes", {"togglescenariocrashes"}, "It's risky to spectate using this but your call", function(on_toggle)
        if on_toggle then
            util.yield()
            addict.trigger_commands("bongoguitarscrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("cigarscrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("spatularcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("barbellcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("hammercrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("fishingcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("jackhammercrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("broomcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("drunkcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("trowelcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("wincleancrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("torchcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("coffeecrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
        else
            util.yield()
            addict.trigger_commands("bongoguitarscrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("cigarscrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("spatularcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("barbellcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("hammercrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("fishingcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("jackhammercrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("broomcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("drunkcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("trowelcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("wincleancrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("torchcrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("coffeecrash" .. PLAYER.GET_PLAYER_NAME(pid))
            util.yield(200)
            addict.trigger_commands("noentities")
            util.yield(200)
            addict.trigger_commands("noentities")
            end
        end)

        addict.divider(TaskCrashes, "_________________________________________")

           
    local crash_toggle = false
    addict.toggle(TaskCrashes, "Scenario Crash", {"scenariocrash"}, "Do not spectate them or stand near whilst using this. Made By Aplics.", function(val)
        crash_toggle = val
            if val then
                local ped_pos = players.get_position(pid)
                ped_pos.z += 3
                for i = 1, 10 do
                    local ped_mdl = util.joaat(BrokenScenarioPeds[i])
                    request_model(ped_mdl)
                    local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                    crash_ents[i] = ped
                    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                    TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                    
                end
                repeat
                    for i=1, #crash_ents do
                        TASK.CLEAR_PED_TASKS_IMMEDIATELY(crash_ents[i])
                        TASK.TASK_START_SCENARIO_IN_PLACE(crash_ents[i], BrokenScenarios[i], 0, false)
                    end
                    for i=1, #BrokenScenariosProps do
                        for k, v in entities.get_all_objects_as_pointers() do
                            if entities.get_model_hash(v) == util.joaat(BrokenScenariosProps[i]) then
                            end
                        end
                    end
                    util.yield_once()
                    util.yield_once()
                until not (crash_toggle and players.exists(pid))
                crash_toggle = false
                for k, obj in crash_ents do
                end
                crash_ents = {}
            else
                for k, obj in crash_ents do
                end
                for i=1, #BrokenScenariosProps do
                    for k, v in entities.get_all_objects_as_pointers() do
                        if entities.get_model_hash(v) == util.joaat(BrokenScenariosProps[i]) then
                        end
                    end
                end
                crash_ents = {}
            end
        end)

        addict.divider(TaskCrashes, "_________________________________________")
        
        local ents = {}
        local thingy = false
        addict.toggle(TaskCrashes, "Muscle Crash", {"musclecrash"}, "Do not spectate them or stand near whilst using this.", function(val,cl)
            thingy = val
            BlockSyncs(pid, function()
                if val then
                    local number_of_things = 30
                    local ped_mdl = util.joaat("ig_siemonyetarian")
                    local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
                    local ped_pos = ENTITY.GET_ENTITY_COORDS(ply_ped)
                    ped_pos.z += 30
                    request_model(ped_mdl)
                    for i=1,number_of_things do
                        local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                        ents[i] = ped
                        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                        TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                        ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                        ENTITY.SET_ENTITY_VISIBLE(ped, true)
                    end
                    repeat
                        for k, ped in ents do
                            TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                            TASK.TASK_START_SCENARIO_IN_PLACE(ped, "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS", 0, false)  
                        end
                        for k, v in entities.get_all_objects_as_pointers() do
                            if entities.get_model_hash(v) == util.joaat("ig_siemonyetarian") then
                                entities.delete_by_pointer(v)
                            end
                        end
                        util.yield_once()
                        util.yield_once()
                    until not (thingy and players.exists(pid))
                    thingy = false
                    for k, obj in ents do
                        entities.delete_by_handle(obj)
                    end
                    ents = {}
                else
                    for k, obj in ents do
                        entities.delete_by_handle(obj)
                    end
                    ents = {}
                end
            end)
        end)
       
       addict.divider(TaskCrashes, "_________________________________________")


       local peds = 5
addict.slider(TaskCrashes, "Number Of Guitars & Bongos", {"noguitarsnbongos"}, "Sends Guitar & Bongos crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Guitar & Bongos Crash", {"bongoguitarscrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("IG_Musician_00")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_MUSICIAN", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_acc_guitar_01") then
--                        entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)


       local peds = 5
addict.slider(TaskCrashes, "Number Of Cigars", {"nocigars"}, "Sends Cigar crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Cigar Crash", {"cigarscrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("A_F_Y_BevHills_02")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_SMOKING", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("ng_proc_cigarette01a") then
--                        entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Spatulas", {"nospatulars"}, "Sends Spatula crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Spatula Crash", {"spatularcrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("ig_siemonyetarian")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "PROP_HUMAN_BBQ", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_fish_slice_01") then
--                        entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Barbell", {"nobarbell"}, "Sends Barbell crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Barbell Crash", {"barbellcrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("A_F_M_BodyBuild_01")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_barbell_02") then
--                        entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Hammers", {"nohammers"}, "Sends Hammers crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Hammers Crash", {"hammercrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("s_m_y_construct_02")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_HAMMERING", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_tool_hammer") then
--                        entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Fishing Rods", {"norods"}, "Sends Fishing crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Fishing Crash", {"fishingcrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("s_m_m_cntrybar_01")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_STAND_FISHING", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_fishing_rod_02") then
--                        entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Jack Hammmers", {"nojacks"}, "Sends Jack Hammmer crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Jack Hammmer Crash", {"jackhammercrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("s_m_y_construct_01")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_CONST_DRILL", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_tool_jackham") then
 --                       entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
 --               entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Brooms", {"nobrooms"}, "Sends Broom crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Broom Crash", {"broomcrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("csb_janitor")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_JANITOR", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_tool_broom") then
 --                       entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
 --               entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)


local peds = 5
addict.slider(TaskCrashes, "Number Of Russian Drunks", {"nodrunks"}, "Sends Russian Drunk crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Russian Drunk Crash", {"drunkcrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("ig_russiandrunk")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_DRINKING", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_amb_40oz_02") then
 --                       entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
 --               entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)


local peds = 5
addict.slider(TaskCrashes, "Number Of Trowels", {"notrowels"}, "Sends Trowel crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Trowel Crash", {"trowelcrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("s_m_m_gardener_01")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_cs_trowel") then
 --                       entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
 --               entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)


local peds = 5
addict.slider(TaskCrashes, "Number Of Window Cleans", {"nowincleans"}, "Sends Window Clean crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)



local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Window Clean Crash", {"wincleancrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("s_m_y_winclean_01")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_MAID_CLEAN", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_rag_01") then
 --                       entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
 --               entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Torches", {"notorches"}, "Sends Torch crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Torch Crash", {"torchcrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("s_m_y_chef_01")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_WELDING", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("prop_weld_torch") then
 --                       entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
 --               entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

local peds = 5
addict.slider(TaskCrashes, "Number Of Coffee Cups", {"nocoffeecups"}, "Sends Coffee crash.", 1, 45, 45, 1, function(amount)
    peds = amount
end)

local crash_ents = {}
local crash_toggle = false
addict.toggle(TaskCrashes, "Coffee Crash", {"coffeecrash"}, "It's risky to spectate using this but your call", function(val)
    crash_toggle = val
        if val then
            local number_of_peds = peds
            local ped_mdl = util.joaat("s_m_y_chef_01")
            local ply_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
            local ped_pos = players.get_position(pid)
            ped_pos.z += 3
            request_model(ped_mdl)
            for i = 1, number_of_peds do
                local ped = entities.create_ped(26, ped_mdl, ped_pos, 0)
                crash_ents[i] = ped
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
                ENTITY.SET_ENTITY_VISIBLE(ped, true)
            end
            repeat
                for k, ped in crash_ents do
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(ped, "WORLD_HUMAN_DRINKING", 0, false)
                end
                for k, v in entities.get_all_objects_as_pointers() do
                    if entities.get_model_hash(v) == util.joaat("p_amb_coffeecup_01") then
 --                       entities.delete_by_pointer(v)
                    end
                end
                util.yield_once()
                util.yield_once()
            until not (crash_toggle and players.exists(pid))
            crash_toggle = false
            for k, obj in crash_ents do
 --               entities.delete_by_handle(obj)
            end
            crash_ents = {}
        else
            for k, obj in crash_ents do
--                entities.delete_by_handle(obj)
            end
            crash_ents = {}
        end
end)

----------------------------------------------------------------------------------------------------------------------------------------
 
local Five_G_Crashes = addict.list(Crashing, "5G Crashes", {}, "")

addict.action(Five_G_Crashes, "5G Crashv1", {"fiveg"}, "", function()
    towtruck_area_attach(pid)
end, nil, nil, COMMANDPERM_AGGRESSIVE)

addict.action(Five_G_Crashes, "5G Crashv2", {"fivegv2"}, "", function()
    local player = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id)
    local allvehicles = entities.get_all_vehicles_as_handles()
    for i = 1, 3 do
        for i = 1, #allvehicles do
            TASK.TASK_VEHICLE_TEMP_ACTION(player, allvehicles[i], 15, 1000)
            util.yield()
            TASK.TASK_VEHICLE_TEMP_ACTION(player, allvehicles[i], 16, 1000)
            util.yield()
            TASK.TASK_VEHICLE_TEMP_ACTION(player, allvehicles[i], 17, 1000)
            util.yield()
            TASK.TASK_VEHICLE_TEMP_ACTION(player, allvehicles[i], 18, 1000)
            util.yield()
        end
    end
end, nil, nil, COMMANDPERM_AGGRESSIVE)


addict.action(Five_G_Crashes, "5g Crashv3", {"fivegv3"}, "Breaks traffic lights and lamp posts around the player then spawns towtrucks and attaches them to lamp post.", function()
    break_all_nearby_posts()
end)

----------------------------------------------------------------------------------------------------------------------------------------

    local spawnDistance = 250
	local vehicleType = { 'volatol', 'bombushka', 'jet', 'hydra', 'luxor2', 'seabreeze', 'tula', 'avenger2' }
	local selected = 1
    local antichashCam <const> = addict.ref_by_path("Game>Camera>Anti-Crash Camera", 38)
    local spawnedPlanes = {}
	
	addict.divider(Crashing, "Nuker V3")
    addict.slider(Crashing, "Nuke Distance", {}, "", 0, 500, spawnDistance, 25, function(distance)
    	spawnDistance = distance
    end)
	addict.list_select(Crashing, 'Nuke Mode', {}, "", vehicleType, 1, function (opt)
		selected = opt
		-- print('Opt: '..opt..' | vehicleType: '..vehicleType[selected])
	end)

    addict.action(Crashing, "Nuke player", {"nukeplayer"}, "", function ()
    	local playerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pId)
    	local modelHash <const> = util.joaat(vehicleType[selected])
    	local startTime = util.current_time_millis()
    	local lastExplosion
    	local lastSpawn
    	addict.trigger_command(antichashCam, "on")
    	STREAMING.REQUEST_MODEL(modelHash)
    	while not STREAMING.HAS_MODEL_LOADED(modelHash) do
    		util.yield_once()
    	end
		util.toast("Crash | Nuker started. Enabled antichash cam to prevent crash.")
    	while util.current_time_millis() - startTime < 20000 do
			local pos = GetCoordsInFrontOfEntity(playerPed, spawnDistance)
    		pos.z = pos.z + 30.0
    		if not lastSpawn or util.current_time_millis() - lastSpawn > 10 then
    			local plane = entities.create_vehicle(modelHash, pos, 0.0)
    			NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(NETWORK.VEH_TO_NET(plane), true)
    			ENTITY.SET_ENTITY_AS_MISSION_ENTITY(plane, false, true)
    			NETWORK.SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER(NETWORK.VEH_TO_NET(plane), players.user(), true)
    			table.insert(spawnedPlanes, plane)
    			lastSpawn = util.current_time_millis()
    		end
			if not lastExplosion or util.current_time_millis() - lastExplosion > 1000 then
				FIRE.ADD_EXPLOSION(pos.x, pos.y, pos.z, 0, 1.0, true, false, 0.0, false)
				lastExplosion = util.current_time_millis()
			end
			if not NETWORK.NETWORK_IS_PLAYER_CONNECTED(pId) then break end
    		util.yield_once()
    	    end
            ClearEntities(spawnedPlanes)
            spawnedPlanes = {}
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED	(modelHash)
            addict.trigger_command(antichashCam, "off")
            util.toast("Crash | Nuker finished.")
            end)
            PlayerOptions = function (pId)
        end

------------------------------------------------------------------------------------------------------------------------------------
--[[
────────────────────────────────────────────────────────────────────────────
─██████──████████─██████████─██████████████─██████──████████─██████████████─
─██░░██──██░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░██──██░░░░██─██░░░░░░░░░░██─
─██░░██──██░░████─████░░████─██░░██████████─██░░██──██░░████─██░░██████████─
─██░░██──██░░██─────██░░██───██░░██─────────██░░██──██░░██───██░░██─────────
─██░░██████░░██─────██░░██───██░░██─────────██░░██████░░██───██░░██████████─
─██░░░░░░░░░░██─────██░░██───██░░██─────────██░░░░░░░░░░██───██░░░░░░░░░░██─
─██░░██████░░██─────██░░██───██░░██─────────██░░██████░░██───██████████░░██─
─██░░██──██░░██─────██░░██───██░░██─────────██░░██──██░░██───────────██░░██─
─██░░██──██░░████─████░░████─██░░██████████─██░░██──██░░████─██████████░░██─
─██░░██──██░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░██──██░░░░██─██░░░░░░░░░░██─
─██████──████████─██████████─██████████████─██████──████████─██████████████─
────────────────────────────────────────────────────────────────────────────
]]

    addict.divider(Kicks, "Kicks")
 
        addict.action(Kicks, "Blast Kick", {"blast"}, "Blocks the player join reaction then uses kick.", function()
            addict.trigger_commands("historyblock " .. players.get_name(pid))
            addict.trigger_commands("kick" .. players.get_name(pid))
    	end, nil, nil, COMMANDPERM_AGGRESSIVE)

--------------------------------------------------------------------------------------------------------------------------------------
--[[
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─████████████████───██████████─██████████████─██████──────────██████─████████████───██████─────────████████──████████─
─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░██─██░░░░░░░░░░██─██░░██████████──██░░██─██░░░░░░░░████─██░░██─────────██░░░░██──██░░░░██─
─██░░██████████─██░░████████░░██───████░░████─██░░██████████─██░░░░░░░░░░██──██░░██─██░░████░░░░██─██░░██─────────████░░██──██░░████─
─██░░██─────────██░░██────██░░██─────██░░██───██░░██─────────██░░██████░░██──██░░██─██░░██──██░░██─██░░██───────────██░░░░██░░░░██───
─██░░██████████─██░░████████░░██─────██░░██───██░░██████████─██░░██──██░░██──██░░██─██░░██──██░░██─██░░██───────────████░░░░░░████───
─██░░░░░░░░░░██─██░░░░░░░░░░░░██─────██░░██───██░░░░░░░░░░██─██░░██──██░░██──██░░██─██░░██──██░░██─██░░██─────────────████░░████─────
─██░░██████████─██░░██████░░████─────██░░██───██░░██████████─██░░██──██░░██──██░░██─██░░██──██░░██─██░░██───────────────██░░██───────
─██░░██─────────██░░██──██░░██───────██░░██───██░░██─────────██░░██──██░░██████░░██─██░░██──██░░██─██░░██───────────────██░░██───────
─██░░██─────────██░░██──██░░██████─████░░████─██░░██████████─██░░██──██░░░░░░░░░░██─██░░████░░░░██─██░░██████████───────██░░██───────
─██░░██─────────██░░██──██░░░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░██──██████████░░██─██░░░░░░░░████─██░░░░░░░░░░██───────██░░██───────
─██████─────────██████──██████████─██████████─██████████████─██████──────────██████─████████████───██████████████───────██████───────
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]

addict.divider(Friendly, "Friendly")

addict.action(Friendly, "Max Player", {"max"}, "Turns on Godmode, auto heal, ceopay, vehiclegodmode, vehicle boost, never wanted, gives all weapons, ammo/infinite and parachute all at once.", function ()
    addict.trigger_commands("arm".. players.get_name(pid) .. "all")
    addict.trigger_commands("bail".. players.get_name(pid))
    addict.trigger_commands("boost".. players.get_name(pid))
    addict.trigger_commands("givenolockon".. players.get_name(pid))
    addict.trigger_commands("ceopay".. players.get_name(pid))
    addict.trigger_commands("autoammo".. players.get_name(pid))
    addict.trigger_commands("autoheal".. players.get_name(pid))
    addict.trigger_commands("givevehgod".. players.get_name(pid))
    addict.trigger_commands("paragive".. players.get_name(pid))
    addict.trigger_commands("removestickys".. players.get_name(pid))
end, nil, nil, COMMANDPERM_FRIENDLY)

--[[
---1054658645
---1054658601
---1054659037
---1054659196
addict.toggle_loop(Friendly, "Drop Cash Loopv1", {"cashloop"}, "Less errors, 3600ms cash drops.", function()
    local coords = players.get_position(pid)
    coords.z = coords.z + 1.5
    local cash = MISC.GET_HASH_KEY("PICKUP_VEHICLE_MONEY_VARIABLE")
    STREAMING.REQUEST_MODEL(cash)
    if STREAMING.HAS_MODEL_LOADED(cash) == false then  
        STREAMING.REQUEST_MODEL(cash)
    end
    OBJECT.CREATE_AMBIENT_PICKUP(1704231442, coords.x, coords.y, coords.z, 0, 2000, cash, false, true)
    util.toast("Cash Dropping To " .. players.get_name(pid))
    util.yield(3600)
end)

addict.toggle_loop(Friendly, "Drop Cash Loopv2", {"cashloop2"}, "Less errors, 3600ms cash drops.", function()
    local coords = players.get_position(pid)
    coords.z = coords.z + 1.5
    local cash = MISC.GET_HASH_KEY("PICKUP_VEHICLE_MONEY_VARIABLE")
    STREAMING.REQUEST_MODEL(cash)
    if STREAMING.HAS_MODEL_LOADED(cash) == false then  
        STREAMING.REQUEST_MODEL(cash)
    end
    OBJECT.CREATE_AMBIENT_PICKUP(1704231442, coords.x, coords.y, coords.z, 0, 2000, cash, false, true)
    util.toast("Cash Dropping To " .. players.get_name(pid))
    util.yield(3600)
end)

addict.toggle_loop(Friendly, "Drop Cash Loopv3", {"cashloop3"}, "Less errors, 3600ms cash drops.", function()
    local money_hash = util.joaat("prop_cash_pile_01")
    if request_model(money_hash) then
    local cash_pos = players.get_position(pid)
        cash_pos.z = cash_pos.z + 1.5
    OBJECT.CREATE_AMBIENT_PICKUP(-31919185, cash_pos.x, cash_pos.y, cash_pos.z, 0, 2000, money_hash, false, true)
    end
    util.toast("Cash Dropping To " .. players.get_name(pid))
    util.yield(3600)
end)

]]

addict.toggle_loop(Friendly, "Infinity Ammo", {"autoammo"}, "Endless ammo for players", function(toggle)
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local weaphash = WEAPON.GET_SELECTED_PED_WEAPON(ped)
    local ammo = WEAPON.GET_AMMO_IN_PED_WEAPON(ped, weaphash)
    if ammo < 9999 then
    WEAPON.ADD_AMMO_TO_PED(ped, weaphash, 9999)
    end
end)

addict.toggle_loop(Friendly, "Remove Stickys From Car", {"removestickys"}, "", function(toggle)
    local car = PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
    NETWORK.REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY(car)
end)

addict.action(Friendly, "Fix loading screen", {"fixme"}, "Try to fix player's infinite loading screen by giving him script host and teleporting to nearest apartment.", function()
    addict.trigger_commands("aptme" .. players.get_name(pid))
end, nil, nil, COMMANDPERM_FRIENDLY)

addict.action(Friendly, "Send Friend Request", {"sendfriend"}, "", function()
    addict.show_command_box("historynote " .. PLAYER.GET_PLAYER_NAME(pid) .. "Friends List")
    addict.show_command_box("befriend " .. PLAYER.GET_PLAYER_NAME(pid))
end, nil, nil, COMMANDPERM_FRIENDLY)

local usingHug = false

addict.toggle(Friendly, "Hug Player", {"hugplayer"}, "Perform a hug animation near a selected player.", function(on)
    usingHug = on
    if pid == players.user() then
        return
    end

    if usingHug then
        local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local targetCoords = ENTITY.GET_ENTITY_COORDS(targetPed, true)

        -- Load the hug animation
        local animDict = "mp_ped_interaction"
        local animName = "kisses_guy_a"

        STREAMING.REQUEST_ANIM_DICT(animDict)
        while not STREAMING.HAS_ANIM_DICT_LOADED(animDict) do
            util.yield()
        end

        -- Teleport near the target player (adjust offset if needed)
        local hugOffset = { x = 0.5, y = 0.0, z = 0.0 }
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(),
            targetCoords.x + hugOffset.x,
            targetCoords.y + hugOffset.y,
            targetCoords.z + hugOffset.z,
            false, false, false)

        -- Play the hug animation
        TASK.TASK_PLAY_ANIM(players.user_ped(), animDict, animName, 8.0, -8.0, -1, 1, 0, false, false, false)

        while usingHug and is_player_active(pid, false, true) and not util.is_session_transition_active() do
            util.yield()
        end

        -- Stop the animation if the toggle is turned off
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
    end
end)



---------------------------------------------------------------------------------------------------------------
players.on_join(PlayerOptions)
end)
players.dispatch_on_join()
util.keep_running()