-- Forever Rules: shared combat rules and known bugs for WoW Forever.
-- One source for Forever Spellmath (in game) and the Forever Coach app (reads this file).
--
-- Every value is { v = value, s = status, src = source key, checked = date }.
-- Status, strongest first:
--   tested    Kat checked it in game. Never overwritten by a web source.
--   confirmed Blizzard said so (blue post, patch notes, known issues list).
--   reported  Guides or players report it. Needs an in-game check.
--   classic   Classic Era value, used only until Forever data exists.
--   unknown   No data. Code must fall back and say so.
-- Changes go in CHANGELOG.md with the date and source.

ForeverRules = {
    version = 12,
    updated = "2026-10-30",
    build = "1.60.1.70685",   -- newest beta build any source cited on the update date

    sources = {
        ["wct-stats"]       = "https://www.warcrafttavern.com/forever/guides/stats/",
        ["iv-pvpcrit"]      = "https://www.icy-veins.com/wow-forever/news/players-found-a-hidden-pvp-rule-in-wow-forever-that-halves-crit-bonuses/",
        ["wh-pvpcrit-bug"]  = "https://www.wowhead.com/forever/news/blizzard-confirms-crit-nerf-in-pvp-is-a-bug-in-wow-forever-383163",
        ["bz-known-issues"] = "https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-8/2352687",
        ["iv-rage"]         = "https://www.icy-veins.com/wow-forever/news/wow-forever-just-reworked-warrior-rage-and-players-cant-stop-talking-about-it/",
        ["outpost-sp"]      = "https://wofwforever.com/en/guides/wow-forever-spell-power-scaling/",
        ["forever-ref"]     = "https://github.com/alcaras/forever-ref",
        ["talent-calcs"]    = "https://wowforevertalents.com/",
        ["legacy-talented"] = "https://conquestcapped.com/guides/wow-forever/wow-forever-legacy-points/",
        ["iv-hidden-items"] = "https://www.icy-veins.com/wow-forever/news/wow-forever-hid-over-12500-items-from-dataminers-heres-whats-still-secret/",
        ["bz-dd-priest-warrior"] = "https://news.blizzard.com/en-us/article/24301514/world-of-warcraft-forever-class-deep-dives-priest-and-warrior",
        ["bz-dd-hunter-druid"]   = "https://news.blizzard.com/en-us/article/24301515/world-of-warcraft-forever-class-deep-dives-hunter-and-druid",
        ["gh-build-70058"]       = "https://github.com/Pallando-wow/wow-development-data/pull/3",
        ["bz-devnotes-oct1"]     = "https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-1/2360696",
        ["fc-build-70124"]       = "https://foreverchanges.pro/level-30",
        ["bz-warrior-oct2"]      = "https://us.forums.blizzard.com/en/wow/t/warrior-updates-in-todays-beta-build/2369360",
        ["tf-builds"]            = "https://talentsforever.com/builds",
        ["wft-beta"]             = "https://wowforevertalents.com/beta/",
        ["bz-devnotes-sep24"]    = "https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-1/2360696/1",
        ["bz-revelation-bug"]    = "https://us.forums.blizzard.com/en/wow/t/forever-revelation-enchant-infinite-crits/2364904",
        ["gh-build-70235"]       = "https://github.com/ElliotWood/Forever/pull/696",
        ["bz-devnotes-oct8"]     = "https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-8/2360696/5",
        ["gh-build-70291"]       = "https://github.com/ElliotWood/Forever/pull/757",
        ["gh-build-70338"]       = "https://github.com/ElliotWood/Forever/pull/761",
        ["bz-devnotes-oct15"]    = "https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-15/2360696/6",
        ["gh-build-70425"]       = "https://github.com/ElliotWood/Forever/pull/814",
        ["gh-build-70450"]       = "https://github.com/Pallando-wow/wow-development-data/commit/d2f1566",
        ["gh-build-70532"]       = "https://github.com/Pallando-wow/wow-development-data/commit/ef1aaad",
        ["wcl-builds"]           = "https://wowforever.wclbox.com/en/buding",
        ["fc-patch-notes"]       = "https://foreverchanges.pro/patch-notes",
    },

    combat = {
        gcd = { v = 1.5, s = "classic", src = nil, checked = "2026-09-29" },

        -- Crit damage, PvE
        spellCritMult  = { v = 1.5, s = "reported", src = "iv-pvpcrit", checked = "2026-09-29" },
        meleeCritMult  = { v = 2.0, s = "reported", src = "iv-pvpcrit", checked = "2026-09-29" },
        rangedCritMult = { v = 2.0, s = "classic", src = nil, checked = "2026-09-29" },
        wandCritMult   = { v = 1.5, s = "unknown", src = nil, checked = "2026-09-29", note = "Untested on Forever" },

        -- Hit and crit are one stat each, shared by spells, melee and ranged
        hitMerged  = { v = true, s = "reported", src = "outpost-sp", checked = "2026-09-29" },
        critMerged = { v = true, s = "reported", src = "outpost-sp", checked = "2026-09-29" },
        gearShowsRatings = { v = true, s = "reported", src = "forever-ref", checked = "2026-09-29",
            note = "Tooltips show +20 Hit, +28 Critical Strike. Convert with GetCombatRatingBonus" },

        -- Spell chance to hit by target level minus yours
        spellHit = {
            [-2] = { v = 0.98, s = "classic" },
            [-1] = { v = 0.97, s = "classic" },
            [0]  = { v = 0.97, s = "reported", src = "wct-stats", checked = "2026-09-29", note = "3% miss vs same level" },
            [1]  = { v = 0.95, s = "classic" },
            [2]  = { v = 0.94, s = "classic" },
            [3]  = { v = 0.84, s = "reported", src = "wct-stats", checked = "2026-09-29", note = "16% miss vs raid boss" },
        },
        spellMaxHit = { v = 0.99, s = "unknown", src = "wct-stats", checked = "2026-09-29",
            note = "Unknown whether the Classic 1% floor stays" },

        -- Melee and ranged chance to hit by target level minus yours
        physicalHit = {
            [-2] = { v = 0.96, s = "classic" },
            [-1] = { v = 0.955, s = "classic" },
            [0]  = { v = 0.95, s = "reported", src = "wct-stats", checked = "2026-09-29", note = "5% miss vs same level" },
            [1]  = { v = 0.945, s = "classic" },
            [2]  = { v = 0.94, s = "classic" },
            [3]  = { v = 0.91, s = "reported", src = "wct-stats", checked = "2026-09-29", note = "9% miss vs raid boss" },
        },

        wandUsesSpellPower = { v = false, s = "confirmed", src = "outpost-sp", checked = "2026-09-29",
            note = "Removed in the Sept 24 beta build" },
        casterWeaponsHaveSpellPower = { v = true, s = "confirmed", src = "outpost-sp", checked = "2026-09-29" },
        hasteOnGear = { v = false, s = "reported", src = "wct-stats", checked = "2026-09-29", note = "None seen on beta gear yet" },
        rankCoefficientPlateauLevel = { v = 20, s = "reported", src = "wct-stats", checked = "2026-09-29",
            note = "Ranks learned before 20 have lower coefficients" },
        warriorRageScalesWithDamage = { v = false, s = "confirmed", src = "iv-rage", checked = "2026-09-29",
            note = "Designer marked it intended, not a bug" },
        warriorCritRageBonus = { v = 1.0, s = "confirmed", src = "bz-warrior-oct2", checked = "2026-10-03",
            note = "Crits generate 100% more Rage (was 75%, raised Oct 2). Druids got the same 100% in the Oct 8 build (bz-devnotes-oct8)" },
        heroicStrikeQueueRaisesOffhandHit = { v = false, s = "confirmed", src = "bz-devnotes-oct1", checked = "2026-10-02",
            note = "Classic dropped the dual-wield miss penalty while Heroic Strike was queued. Forever no longer does" },
    },

    talents = {
        pointsAtCap60   = { v = 51, s = "reported", src = "talent-calcs", checked = "2026-09-29" },
        firstPointLevel = { v = 10, s = "confirmed", src = "bz-dd-priest-warrior", checked = "2026-10-01",
            note = "Legacy perk Talented moves it earlier. Read C_Traits, never compute from level" },
        pointsPerRow    = { v = 5, s = "reported", src = "talent-calcs", checked = "2026-09-29" },
        goldTalentsAt   = { v = { 11, 16, 21, 31 }, s = "confirmed", src = "bz-dd-priest-warrior", checked = "2026-10-01" },
    },

    items = {
        hiddenStatsShare = { v = 0.40, s = "reported", src = "iv-hidden-items", checked = "2026-09-29",
            note = "About 12,500 items shipped without stats. Trust in-game tooltips over any database" },
    },

    -- Known bugs. fixedIn = first build with the fix, nil while open.
    -- fixAnnounced = Blizzard said the next build fixes it. Still open until a build number is known.
    -- affects tells the Coach which lanes to skip: pvp, crit, glancing, pushback, spellqueue, armor, rank,
    -- hit, spellpower, racial, avoidance, threat
    bugs = {
        { id = "pvp-crit-half", s = "confirmed", src = "bz-devnotes-oct8", checked = "2026-10-13", fixedIn = "1.60.1.70291",
          affects = { "pvp", "crit" },
          desc = "Crits against players deal half the bonus: melee 150%, spells about 125%" },
        { id = "caster-glancing", s = "confirmed", src = "bz-known-issues", checked = "2026-09-29", fixedIn = nil,
          affects = { "glancing" },
          desc = "Caster glancing blow chance and damage reduction wrong at all levels" },
        { id = "melee-glancing-higher", s = "confirmed", src = "bz-known-issues", checked = "2026-09-29", fixedIn = nil,
          affects = { "glancing" },
          desc = "Melee glancing damage reduction wrong vs higher-level targets" },
        { id = "sheet-glancing", s = "confirmed", src = "bz-known-issues", checked = "2026-09-29", fixedIn = nil,
          affects = { "glancing" },
          desc = "Character sheet glancing chances inaccurate" },
        { id = "arcane-missiles-pushback", s = "confirmed", src = "bz-known-issues", checked = "2026-09-29", fixedIn = nil,
          affects = { "pushback" }, spells = { "Arcane Missiles" },
          desc = "Taking damage while channeling fires a full damage bolt instead of a truncated one" },
        { id = "next-attack-queue", s = "confirmed", src = "bz-known-issues", checked = "2026-09-29", fixedIn = nil,
          affects = { "spellqueue" }, spells = { "Heroic Strike", "Cleave", "Raptor Strike" },
          desc = "Queueing an on-next-attack ability disables the spell queue window" },
        { id = "bear-armor-mult", s = "confirmed", src = "bz-known-issues", checked = "2026-09-29", fixedIn = nil,
          affects = { "armor" },
          desc = "Consumable and buff armor multiplied by Bear Form armor" },
        { id = "vengeance-periodic", s = "confirmed", src = "bz-devnotes-sep24", checked = "2026-10-04", fixedIn = "1.60.1.70009", fixAnnounced = true,
          affects = { "crit" }, spells = { "Vengeance" },
          desc = "Vengeance procs off periodic crits" },
        { id = "starshards-twilight", s = "confirmed", src = "bz-devnotes-sep24", checked = "2026-10-04", fixedIn = "1.60.1.70009", fixAnnounced = true,
          affects = { "rank" }, spells = { "Starshards" },
          desc = "Starshards doesn't benefit from Twilight Focus" },
        { id = "holy-strike-ranks", s = "confirmed", src = "bz-devnotes-sep24", checked = "2026-10-04", fixedIn = "1.60.1.70009", fixAnnounced = true,
          affects = { "rank" }, spells = { "Holy Strike" },
          desc = "Holy Strike rank values off" },
        { id = "warrior-dw-spec-both-hands", s = "confirmed", src = "bz-warrior-oct2", checked = "2026-10-03", fixedIn = "1.60.1.70170",
          affects = { "hit" }, spells = { "Dual Wield Specialization" },
          desc = "Grants 2/4/6/8/10% hit to main hand and off-hand. Should be off-hand only" },
        { id = "ret-aura-target-sp", s = "confirmed", src = "bz-devnotes-oct8", checked = "2026-10-13", fixedIn = "1.60.1.70291",
          affects = { "spellpower" }, spells = { "Retribution Aura" },
          desc = "Retribution Aura uses the target's spell power instead of the Paladin's" },
        { id = "eureka-partial", s = "confirmed", src = "bz-known-issues", checked = "2026-10-16", fixedIn = nil,
          affects = { "racial" }, spells = { "Eureka!" },
          desc = "Eureka does not affect every damaging or healing spell for some classes. Blizzard: fixed in a later build" },
        { id = "parry-block-behind", s = "confirmed", src = "bz-known-issues", checked = "2026-10-02", fixedIn = nil,
          affects = { "avoidance" },
          desc = "Enemies can parry and block attacks from behind when the player stands close" },
        { id = "debuffs-no-threat", s = "confirmed", src = "bz-known-issues", checked = "2026-10-16", fixedIn = nil,
          affects = { "threat" }, spells = { "Faerie Fire" },
          desc = "Several debuffs cause no threat. Demoralizing Shout and Demoralizing Roar fixed in 1.60.1.70291 (bz-devnotes-oct8). Faerie Fire threat in Bear and Dire Bear Form fixed in 1.60.1.70425 (bz-devnotes-oct15); other forms not named" },
        { id = "revelation-autoattack-crit", s = "reported", src = "bz-revelation-bug", checked = "2026-10-04", fixedIn = nil,
          affects = { "crit" }, spells = { "Enchant Weapon - Revelation" },
          desc = "When Revelation procs, every auto attack (melee, ranged, wand) crits until a spell is cast. Should make one spell or ability crit. Player bug report, no Blizzard reply" },
    },
}

-- Lookup helper: ForeverRules.Get("combat", "spellCritMult") returns value, status
function ForeverRules.Get(section, key)
    local s = ForeverRules[section]
    local e = s and s[key]
    if type(e) == "table" and e.v ~= nil then return e.v, e.s end
    return nil, "unknown"
end

-- Open bugs touching a lane, for example ForeverRules.BugsFor("crit")
function ForeverRules.BugsFor(lane)
    local out = {}
    for _, b in ipairs(ForeverRules.bugs) do
        if not b.fixedIn then
            for _, a in ipairs(b.affects) do
                if a == lane then out[#out + 1] = b break end
            end
        end
    end
    return out
end
