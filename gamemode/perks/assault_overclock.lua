PERK.PrintName = "Overclock"
PERK.Description = "Adrenaline duration increased by 50%.\nAdds 2 maximum Adrenaline stacks."

PERK.Parameters = {}

PERK.Hooks = {}

PERK.Hooks.Horde_OnSetPerk = function(ply, perk, params)
    if perk == "assault_overclock" and ply:GetClass().name == HORDE.Class_Assault then
        ply:Horde_SetMaxAdrenalineStack(ply:Horde_GetMaxAdrenalineStack() + 2)
        ply:Horde_SetAdrenalineStackDuration(ply:Horde_GetAdrenalineStackDuration() * 1.5)
    end
end

PERK.Hooks.Horde_OnUnsetPerk = function(ply, perk, params)
    if perk == "assault_overclock" and ply:GetClass().name == HORDE.Class_Assault then
        ply:Horde_SetMaxAdrenalineStack(ply:Horde_GetMaxAdrenalineStack() - 2)
        ply:Horde_SetAdrenalineStackDuration(ply:Horde_GetAdrenalineStackDuration() / 1.5)
    end
end