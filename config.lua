---@type DoorlockConfig
---@diagnostic disable-next-line: missing-fields
Config = {}

---Trigger a notification on the client when the door state is successfully updated.
Config.Notify = true
Config.NotifyType = 'pulsar' --- 'ox' | 'sandbox' | 'pulsar'

---Create a persistent notification while in-range of a door, prompting to lock/unlock.
Config.DrawTextUI = true
Config.DrawTextUIType = 'pulsar' --- 'ox' | 'sandbox' | 'pulsar'

---Set the properties used by [DrawSprite](https://docs.fivem.net/natives/?_0xE7FFAE5EBF23D890).
Config.DrawSprite = {
    -- Unlocked
    [0] = { 'ob-textures', 'Key-E-Green',  0, 0, 0.018, 0.018, 0, 110, 210, 120, 190 },

    -- Locked
    [1] = { 'ob-textures', 'Key-E-Red', 0, 0, 0.018, 0.018, 0, 255, 90, 120, 190 },
}

---Allow the specified ace principal to use 'command.doorlock'.
Config.CommandPrincipal = 'group.admin'

---Allow players with the 'command.doorlock' principal to use any door.
Config.PlayerAceAuthorised = false

---The default skill check difficulty when lockpicking a door.
Config.LockDifficulty = { 'easy', 'easy', 'medium' }

---Allow lockpicks to be used to lock an unlocked door.
Config.CanPickUnlockedDoors = false

---An array of items that function as lockpicks.
Config.LockpickItems = {
    'lockpick',
    'adv_lockpick',
    'lockpick_pd',
}

---Play sounds using game audio (sound natives) instead of through NUI.
Config.NativeAudio = true
