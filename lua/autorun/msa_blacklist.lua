local bl_maps = {
    "gm_metro_minsk_1984",
    "gm_metro_u1",
    "gm_metro_u5",
    "gm_metro_u6",
    "gm_berlin_u55",
    "gm_metro_ndr_val_v2r1",
}

function checkMSAblacklist()
    if table.HasValue(bl_maps, game.GetMap()) then return true end
    timer.Simple(1, function()
        scripted_ents.Alias ("gmod_track_signal", "gmod_track_signal_msa")
        scripted_ents.Alias ("gmod_track_signs", "gmod_track_signs_msa")
    end)
end