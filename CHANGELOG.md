# Forever Rules changelog

Newest first. Every change lists the date, what changed, old and new value, and the source.

## Version 12, 2026-10-30

Scheduled review. The beta closed October 23. Client builds kept coming before launch; two trackers agree on 1.60.1.70685 (October 28). Blizzard's only new combat post is the October 26 racial pass, which touches no key or listed bug.

### Changed
- Build: 1.60.1.70532 -> 1.60.1.70685. WCLBox (https://wowforever.wclbox.com/en/buding) lists "1.60.1.70685 (October 28, 2026)" as its current build, after 1.60.1.70658 the same day. ForeverChanges (https://foreverchanges.pro/patch-notes) lists the same two builds on October 28, plus 1.60.1.70634 on October 27. Blizzard posted no notes for any of them.

### Bugs
- None changed. Known Issues thread (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-8/2352687): last post is still Kaivax's October 8 post 7, first post last edited 2026-10-08. Development Notes (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-8/2360696): new posts 7 (October 26) and 8 (October 27) are a racial pass only; the first post's October 26 edit is the title. None of it names a listed bug.
- eureka-partial: stays open. The October 26 notes don't mention Eureka!, and the Known Issues line ("Eureka does not affect every Damaging Spell or Healing Spell for some classes.") is still up.
- revelation-autoattack-crit: thread still has only the September 28 report and no Blizzard reply, so it stays reported.

### Added sources
- wcl-builds: https://wowforever.wclbox.com/en/buding
- fc-patch-notes: https://foreverchanges.pro/patch-notes

### Conflicts with tested values
- None.

### No key in Rules.lua (not added), from the October 26 notes (https://us.forums.blizzard.com/en/wow/t/2360696/7)
- Crit: Human "Ruthless now increases critical chance by 1% (was 2%)." Dwarf "Earth Fury (2% increased critical strike damage and healing) removed." Tauren "Endurance no longer provides any modifiers beyond 5% increased Health (no hit chance or critical damage modifiers)." Orc "Savage removed (1% increased critical strike chance)." combat.spellCritMult and meleeCritMult are base values and are unaffected.
- Hit: Dwarf "Added: Artisan's Precision - Increases hit chance with spells and attacks by 1%." The hit tables are base values and are unaffected.
- Other: Human Spirit 10% (was 5%), Plainsrunning 2% a stack, Orc Command re-added (pet damage 5%), Blood Fury 2 min, Berserking 15 s, Touch of the Grave 15 s internal cooldown, Skyborne Wind-Blessed Haste 2% and Read Leyline and Skysight changes.

### Seen but not confirmed or not added
- ForeverChanges lists a newer build, 1.60.1.70707 (October 30, "current"), carrying the October 27 to 29 hotfixes. No second tracker shows it, so build stays at 70685. Build trackers also disagree on the October 26-27 build (talentsforever.com says 70630, ForeverChanges says 70634).
- Third-party trackers report Mage changes in 70685 and hotfixes on October 28 with no Blizzard post: Critical Mass 6% (was 10%), Incineration up to 10% crit, Precision hit for all schools, Arcane Focus removed, Ice Lance 8 s cooldown, Frost Blast removed; Aspect of the Hawk and Trueshot Aura about halved; one diminishing returns group for several roots; Revenge scales with 22.5% of attack power per rank. No key and not confirmed. Not added.
- Blizzard: "The WoW Forever Beta is now closed" (https://us.forums.blizzard.com/en/wow/t/2390465, October 23). Name-check and Oceanic realm posts since then have no combat data.
- talentsforever.com and wowforevertalents.com still show nothing past 70532 or 70630. theforeverera.com still shows 70532 as current. Pallando-wow/wow-development-data and ElliotWood/Forever could not be read from this session.

## Version 11, 2026-10-23

Scheduled review. One new client build (1.60.1.70532, October 22) with no listed gameplay changes. No new Blizzard notes or Known Issues post since the October 15 notes covered in version 9.

### Changed
- Build: 1.60.1.70450 -> 1.60.1.70532. Pallando-wow/wow-development-data commit ef1aaad ("Update WoW client versions", 2026-10-23) moves WoW Forever "70450 -> 70532", version 1.60.1, observedAt 2026-10-22T19:16:25Z. https://github.com/Pallando-wow/wow-development-data/commit/ef1aaad. foreverchanges.pro/patch-notes: "The beta moved to the build the live stress test used on October 21", "talents, spells and items did not change" against the October 16 build.

### Bugs
- None changed. Known Issues thread (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-8/2352687): last post is still Kaivax's October 8 post 7, first post last edited 2026-10-08. Development Notes (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-8/2360696): last post is still the October 15 build notes (post 6, created 2026-10-16), already handled in version 9.
- revelation-autoattack-crit: thread still has only the September 28 report and no Blizzard reply, so it stays reported.

### Added sources
- gh-build-70532: https://github.com/Pallando-wow/wow-development-data/commit/ef1aaad

### Conflicts with tested values
- None.

### Seen but not confirmed or not added
- foreverchanges.pro lists hotfixes Blizzard's notes don't mention: October 18, Holy Fire rank 1 "deals a little less damage"; October 20, Mage "loses Piercing Ice, Elemental Precision gives 2% hit a rank", Ice Barrier, Frost Ward and Frost Warding changed; October 21, Hunter's Mark rank 4 "gives twice the ranged attack power", Lava Burst rank 3 changed; October 22, 127 beta-only items (Molten Core loot copies, Tier 1 sets, elixirs incl. one that triples experience); October 23, Paladins learn Righteous Fury at 10 instead of 16. Third-party, no Blizzard post, and no key for talent or rank values. Not added.
- A patch-notes tracker (patchbot.io, search snippet) lists an October 22 Blizzard note that the Forever Beta "will return shortly" after a snag bringing it back online. No combat data.

## Version 10, 2026-10-20

Scheduled review. One new client build (1.60.1.70450, October 16) with no gameplay changes. No new Blizzard notes or Known Issues post since the October 15 notes covered in version 9.

### Changed
- Build: 1.60.1.70425 -> 1.60.1.70450. Pallando-wow/wow-development-data commit d2f1566 ("Update WoW client versions", 2026-10-17) moves WoW Forever "70425 -> 70450", observedAt 2026-10-16T22:31:27Z; catalog.json still shows 70450 on 2026-10-20 (commit 926f2d7 changed only Mists Classic). https://github.com/Pallando-wow/wow-development-data/commit/d2f1566. Build trackers (search snippets, pages not readable here) list "Build 1.60.1.70450 16 October 2026 No gameplay changes", with talents, abilities, items and quests the same as 70425.

### Bugs
- None changed. Known Issues thread (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-8/2352687): newest Blizzard post is still Kaivax's October 8 post 7 (textures, Ferocity pet crit display, profession icons). Development Notes (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-8/2360696): newest post is still the October 15 build notes (posted October 16), already handled in version 9.
- revelation-autoattack-crit: thread still has only the September 28 report and no Blizzard reply, so it stays reported.

### Added sources
- gh-build-70450: https://github.com/Pallando-wow/wow-development-data/commit/d2f1566

### Conflicts with tested values
- None.

### Seen but not confirmed or not added
- Fan news pages (search snippets) report an October 16 hotfix for druids unable to loot the Cat Form quest relics, and list Champion of the Light Intellect-to-spell-damage at 20/40/60% under 70450, which reverses the October 15 note (10/20/30%). No Blizzard post found for the second, and no key exists. Not added.
- A WoW Forever Stress Test ran October 19 and the beta ends October 21-22 (Warcraft Tavern, MassivelyOP). No combat data.
- Could not read talentsforever.com, wowforevertalents.com, theforeverera.com, zockify.com, bluetracker.gg or ElliotWood/Forever (DNS failures or 404 from this session). The build number comes from Pallando-wow's data repo; Blizzard posts were read directly from the forums.

## Version 9, 2026-10-16

Scheduled review. Blizzard's October 15 development notes (new build 1.60.1.70425) partly fix one listed bug (Faerie Fire threat) and redesign Eureka. No listed bug is fully fixed.

### Bugs
- debuffs-no-threat: stays open. checked 2026-10-13 -> 2026-10-16, desc adds the partial fix. Blizzard, October 15 notes, Druid: "Faerie Fire: Now generates threat while in Bear Form or Dire Bear Form (instead of just initiating combat at 0 threat)." Caster-form Faerie Fire is not named, and the Known Issues line ("Multiple debuffs like Faerie Fire and Demoralizing Shout don't cause threat.") is still up. Source key bz-devnotes-oct15. Why 70425: the notes were posted 2026-10-16 00:15 UTC ("Today, we're updating the WoW Forever Beta with a new build"), no build number given. ElliotWood/Forever's bot recorded 70374 on October 14 with "no changes in the sim's tables" (https://github.com/ElliotWood/Forever/pull/778) and 70425 on October 16 with "2780 changed rows in the sim's tables" (https://github.com/ElliotWood/Forever/pull/814). Same reasoning as versions 4 and 8.
- eureka-partial: stays open, checked 2026-10-02 -> 2026-10-16. October 15 notes, Gnome: "Eureka!: Now an 8 second buff with no charges. Same effect on damage and ability costs. Now also benefits Power Word: Shield." This doesn't say the missing spells are fixed, and the Known Issues line ("This is fixed in a later build.") is unchanged.
- Unchanged and still listed on the Known Issues post (first post last edited 2026-10-08, https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-8/2352687): caster-glancing, melee-glancing-higher, sheet-glancing ("work in progress"), bear-armor-mult, next-attack-queue, arcane-missiles-pushback, parry-block-behind. The October 15 notes don't mention any of them.
- revelation-autoattack-crit: stays reported. The bug thread still has only the September 28 report and no Blizzard reply.

### Changed
- Build: 1.60.1.70338 -> 1.60.1.70425. ElliotWood/Forever bot PRs "Forever client build 1.60.1.70374" (2026-10-14, #778) and "Forever client build 1.60.1.70425" (2026-10-16, #814).

### Added sources
- bz-devnotes-oct15: https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-15/2360696/6
- gh-build-70425: https://github.com/ElliotWood/Forever/pull/814

### Conflicts with tested values
- None.

### No key in Rules.lua (not added), from the October 15 notes
- Wands: "Wands now require you to stand still for 0.5 seconds before shooting, matching early versions of World of Warcraft."
- GCD: "Scrolls now incur a global cooldown when used." combat.gcd (1.5) is unaffected.
- Spell power coefficients: Judgement of Righteousness and Judgement of Fury corrected for instant casts; "Fixed an issue causing Seal of Righteousness to gain almost twice as much benefit from Spell Damage than intended"; Consecration per tick 0.095 -> 0.042; Fire Nova 0.214 -> 0.143. rankCoefficientPlateauLevel is unaffected.
- Pushback: "Slam is no longer subject to spell pushback." Not a bug, no lane change.
- Crit talents: Critical Mass up to 5 points (10%); Winter's Chill redesigned, no longer adds crit chance; Weaponmaster Endurance, Mace, Sword and Axe Specialization changed to crit damage or crit chance; Moonkin Aura spell crit only and Leader of the Pack melee and ranged crit only, both raid wide; Shadow Word: Death now gets Shadowform's crit damage; pets no longer only inherit the player's melee crit chance.
- Threat: Righteous Fury Holy threat 60% -> 90%; Frost Channeling now reduces threat; Silence Resolve applies to all spells; Sanctified Judgement mana restore no longer makes threat.
- Other fixes: Missile Barrage could reduce the cost of a second Arcane Missiles (not the pushback bug); multiple Faerie Fire debuffs on one target; Omen of Clarity from Faerie Fire in feral forms; Insect Swarm hit reduction stacking; Holy Fire rank 5 periodic above rank 6; Overpower against much lower level enemies.

### Seen but not confirmed or not added
- New known issues in the Development Notes first post are UI tracking items (Healthstone, Arcane Blast, pet and item enhancement cooldowns, bane and curse tracking). No combat math, not added.
- Could not read wowforevertalents.com (DNS failure here). No web search result names build 70425; the build number comes from ElliotWood/Forever's git history. Blizzard posts were read directly from the forums.

## Version 8, 2026-10-13

Scheduled review. Blizzard's October 8 beta build fixes two listed bugs (PvP crit, Retribution Aura) and part of a third (debuff threat). Two more client builds followed on October 10.

### Bugs
- pvp-crit-half: fixedIn nil -> "1.60.1.70291", src wh-pvpcrit-bug -> bz-devnotes-oct8. Blizzard, October 8 notes, Player versus Player: "Critical strikes in PvP no longer have reduced efficacy." https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-8/2360696/5
- ret-aura-target-sp: fixedIn nil -> "1.60.1.70291", src bz-known-issues -> bz-devnotes-oct8. Blizzard: "Fixed an issue with Retribution Aura that caused it to use the target being struck's spell power instead of the casting Paladin's spell power." Same post.
- Why 70291: Blizzard gives no build number, only "a new build". The notes were posted 2026-10-08 21:32 UTC. ElliotWood/Forever's build bot recorded 70245 on October 7 (before the notes) and 70291 at 2026-10-09 01:10 UTC, the first build after them (https://github.com/ElliotWood/Forever/pull/757). wowforevertalents.com (search snippet, page blocked here) also dates 70291 to October 8. Same reasoning as version 4.
- debuffs-no-threat: stays open. spells { "Faerie Fire", "Demoralizing Shout" } -> { "Faerie Fire" }, desc notes the partial fix. Blizzard, October 8 notes: Warrior "Demoralizing Shout: Fixed an issue where it generated no threat. Now puts some threat on all affected targets." and the same for Druid Demoralizing Roar. Faerie Fire is not named, and the Known Issues line ("Multiple debuffs like Faerie Fire and Demoralizing Shout don't cause threat.", post 6) is still up.
- Unchanged and still listed on the Known Issues post (first post edited 2026-10-08, https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-8/2352687): caster-glancing, melee-glancing-higher, sheet-glancing ("work in progress"), bear-armor-mult, next-attack-queue, arcane-missiles-pushback, parry-block-behind, eureka-partial ("This is fixed in a later build", not in the October 8 notes).
- revelation-autoattack-crit: stays reported. The October 8 notes only say "The Revelation Enchant's buff will no longer be removed when the caster Shapeshifts into Ghost Wolf or Druid Forms", which is a different issue. The bug thread still has only the September 28 report.

### Changed
- Build: 1.60.1.70235 -> 1.60.1.70338. ElliotWood/Forever bot PRs: "Forever client build 1.60.1.70291" (2026-10-09, #757), "1.60.1.70334" (2026-10-10, #760), "1.60.1.70338" (2026-10-10, #761, https://github.com/ElliotWood/Forever/pull/761), and daily "[DB] Update to 1.60.1.70338 with hotfixes" through 2026-10-13 (#771). wowforevertalents.com (search snippet) says 70338 was published October 10 with talents and spells the same as 70291.
- combat.warriorCritRageBonus: value unchanged (1.0). Note updated: Druids now get the same 100%. Blizzard, October 8, Druid: "Additional Rage generated from landing Critical Strikes increased to 100% increased Rage (Was 75%)."
- sources["bz-known-issues"]: URL moved to the October 8 slug of the same topic (2352687).

### Added sources
- bz-devnotes-oct8: https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-8/2360696/5
- gh-build-70291: https://github.com/ElliotWood/Forever/pull/757
- gh-build-70338: https://github.com/ElliotWood/Forever/pull/761

### Conflicts with tested values
- None.

### No key in Rules.lua (not added), from the October 8 notes
- GCD: "Players will once again be able to swap multiple weapons within the same GCD." combat.gcd (1.5) is unaffected.
- Rage from damage taken: now based on an expected creature's health rather than the player's, counts crits and crushing blows, ignores absorbs, and is balanced around 20-40% armor by level (was 50%). combat.warriorRageScalesWithDamage is about a different design point and stays as is.
- Rank base points changed so each new rank is an upgrade: Wrath and Frostbolt, Fireball, Lightning Bolt (ranks 1-5), Arcane Missiles (1-3), Smite (1-4), Shadow Bolt (1-4), Lesser Heal 1-3 and Heal 1-2. rankCoefficientPlateauLevel is unaffected.
- Thorns and Retribution Aura: base damage back to Vanilla, spell power ratio 13.3% -> 6%.
- Impact no longer procs off Flamestrike's periodic damage; Bear and Dire Bear Form threat bonus 30% -> 50%; Penance damage and healing reduced (was treated as a 3 s channel), rank 1 mana +50%; Deep Wounds no longer scales with off-hand attack power; Disengage threat reduction doubled; Improved Wing Clip and Improved Concussive Shot proc chances fixed; Expose Prey 5 -> 10 s; Elemental Focus no longer consumed by Fire Nova; Natural Instinct (was Predatory Instincts) adds 12/25% of Intellect as spell healing; Armor Kits no longer give double ranged attack power.
- New known issue: Ferocity pet crit not shown on the character sheet ("a visual bug only"). Display only, not added.

### Seen but not confirmed or not added
- Players report server hotfixes and restarts on October 9-10 with no Blizzard notes found. No blue post on combat math after October 8 (forum search for Kaivax posts since October 7: the October 8 notes, Known Issues, maintenance and a podcast post only).
- Player threads on Ice Lance crit damage against frozen targets (https://us.forums.blizzard.com/en/wow/t/2378355, https://us.forums.blizzard.com/en/wow/t/2378765): balance feedback, no bug confirmed, nothing added.
- Could not read wowforevertalents.com, talentsforever.com, foreverchanges.pro or warcraft.wiki.gg (blocked by this session's network policy). Build numbers come from ElliotWood/Forever's git history and search snippets; Blizzard posts were read directly from the forums.

## Version 7, 2026-10-06

Scheduled review, with the Blizzard forums re-read on 2026-10-07. One new client build with no data changes. No new Blizzard notes or Known Issues edition.

### Changed
- Build: 1.60.1.70205 -> 1.60.1.70235. ElliotWood/Forever's bot PR "Forever client build 1.60.1.70235" (merged 2026-10-06) moves the client "from build 1.60.1.70205 to 1.60.1.70235" with "no changes in the sim's tables": https://github.com/ElliotWood/Forever/pull/696 (data regenerated with hotfixes as of 2026-10-06 in https://github.com/ElliotWood/Forever/pull/706). wowforevertalents.com (search snippet, page not readable from here) says 70235 was detected on the CDN on October 6 and "every table is byte for byte the same as build 1.60.1.70170's". ForeverChanges (search snippet) dates it October 5: realms restarted "to apply some fixes", client "only updates crash reporting and the game loader, with talents, spells and items not changing".
- New source key: gh-build-70235.

### Bugs
- None changed. No source says any listed bug was fixed or opened since 2026-10-04.
- Known Issues post (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-1/2352687), read 2026-10-07: newest post is still Kaivax's October 1 post 6. Glancing is still "work in progress"; the Bear Form armor, on-next-attack spell queue and Arcane Missiles lines are unchanged; Eureka is still "fixed in a later build" with no build named.
- Development Notes (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-1/2360696): posts dated September 24 and October 1 only, nothing newer.
- pvp-crit-half: bug thread (https://us.forums.blizzard.com/en/wow/t/bugcrit-damage-is-reduced-by-half-against-players/2362977) has no post after September 29 and no fix.
- revelation-autoattack-crit: thread still has only the September 28 report, no Blizzard reply, so it stays reported.

### Added sources
- gh-build-70235: https://github.com/ElliotWood/Forever/pull/696

### Conflicts with tested values
- None.

### Seen but not confirmed or not added
- Blizzard hotfix posts on October 3-4 (a dialog bug for Australian testers, a Gnomeregan fix) have no combat data.
- Kaivax, "Brief Beta Realm Maintenance - October 6" (https://us.forums.blizzard.com/en/wow/t/brief-beta-realm-maintenance-october-6/2374348): realm restarts "to pick up some priority fixes" (missing quest chest items, disconnects on elevators and transports, a guild join or leave error). No build number and no combat changes.
- ForeverChanges' "October 5" patch notes page title repeats the October 1 class changes (Bloodthirst 45% AP, Combustion 3 charges, bears 75% crit Rage); nothing new.
- ElliotWood/Forever sim PRs on October 5-6 (Searing Totem attack interval 2.43 s, Flametongue Totem stacking) are sim research, not Blizzard sources, and have no key here.
- Could not read wowforevertalents.com, talentsforever.com, foreverchanges.pro, theforeverera.com, Warcraft Tavern, arctium.io or bluetracker.gg (blocked by this session's network policy); Icy Veins returned 403 and Wowhead's news and blue tracker pages loaded without content. Those findings come from web search snippets and GitHub. The Blizzard forums were blocked on the first pass and read directly on 2026-10-07.

## Version 6, 2026-10-04

Follow-up to version 5 after Kat pointed to the first post of Blizzard's Development Notes thread (Kaivax, written September 24, last edited October 1). Earlier reviews only read the October 1 post (post 4) and missed the fixes in post 1. Archived September 24 copy: https://arctium.io/blue-posts/939

### Bugs
- vengeance-periodic: fixedIn nil -> "1.60.1.70009", src bz-known-issues -> bz-devnotes-sep24. Blizzard: "Vengeance now activates off of non-periodic critical strikes. Vengeance's maximum stacks lowered to 3 (was 5)."
- starshards-twilight: fixedIn nil -> "1.60.1.70009", src bz-known-issues -> bz-devnotes-sep24. Blizzard: "Starshards now correctly gains resistance to spell pushback from the Twilight Focus talent."
- holy-strike-ranks: fixedIn nil -> "1.60.1.70009", src bz-known-issues -> bz-devnotes-sep24. Blizzard: "Holy Strike's % of weapon damage per rank changed to 25%/29%/32%/36%/39%/43%/46%/50%" (was 25/25/30/30/35/35/40/40%).
- Why 70009: the Known Issues post lists these three under its September 18 entries as "fixed in the next Beta build". The September 24 notes then list the fixes, and build trackers date 70009 to September 24 with talent and spell changes (https://talentsforever.com/builds). Blizzard never took the lines off the Known Issues post, so versions 1-5 wrongly kept the bugs open.
- Source: https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-1/2360696/1 (new key bz-devnotes-sep24)
- Effect: BugsFor("crit") no longer returns vengeance-periodic, and BugsFor("rank") is now empty.

### Changed
- ForeverRules.toc: Version 5 -> 6.

### Conflicts with tested values
- None.

### Talent and class math in the September 24 notes, no key in Rules.lua (not added)
- Can now crit: Rejuvenation, Tranquility, Wild Growth, Renew, Riptide, Lacerating Strikes, Contingency Plan.
- Paladin: Holy Strike cooldown 12 -> 10s; Improved Holy Strike removed (now baseline); Holy Power gives Holy Strike 15% crit chance; Two-Handed Weapon Specialization 3/6/9% -> 2/4/6%; Sacred Arbiter Holy Strike damage 10% -> 20%; Righteous Fury holy threat 90% -> 60%; Twist of Light -20% Seal mana cost.
- Warrior: Bloodthrill chance 2/4/6/8/10% -> 4/8/12/16/20%, main hand only; Slam cooldown 15 -> 18s; Improved Slam -1.5/3s Slam cooldown; Bastion and Focused Rage swap rows; Sunder Armor threat raised.
- Mage: Ignite no longer double dips on % damage increases; Wake of Fire 20 -> 30s; Hot Streak 15 -> 20s.
- Druid: Wrath base damage about +50%; Thorns scales with spell power.
- Shaman: Rage of the Far Seer no longer increases spell casting speed (haste); Lightning Bolt ranks 3-4 damage raised; Lava Burst ranks 1-2 about 10% above comparable Lightning Bolt; Elemental Fury and Elemental Alacrity swap rows; totem stacking limits.
- Hunter: Lone Wolf no longer gives -4% damage with a pet out; Furious Howl AP -40%.
- Wizard Oil back to Classic spell power (8/16/24). Wand spell-damage removal also listed here; combat.wandUsesSpellPower already says false.

## Version 5, 2026-10-04

Scheduled review of everything published since 2026-10-03. Quiet day: one new client build with no combat data changes, no new Blizzard notes or Known Issues edition.

### Changed
- Build: 1.60.1.70170 -> 1.60.1.70205. Three sources list 70205 as the newest beta build: https://wowforevertalents.com/beta/ ("read 3 October", all 90 data tables byte for byte the same as 70170), https://talentsforever.com/builds (dates it October 2, "519 client files changed", no talent or spell data changes) and https://github.com/ElliotWood/Forever/pull/664 (data update to 70205 with hotfixes as of 2026-10-04). ForeverChanges calls it a minor October 3 update (talent tooltip display, whispers to accented names): https://foreverchanges.pro/patch-notes. The trackers disagree on the day (October 2 or 3), not the number.
- New source keys: wft-beta, bz-revelation-bug.
- ForeverRules.toc: Version 4 -> 5, X-Updated 2026-10-03 -> 2026-10-04.

### Bugs
- New revelation-autoattack-crit (crit), status reported: when Enchant Weapon - Revelation procs, all auto attacks (melee, ranged, wand) crit until the player casts a spell, instead of one spell or ability critting. Player bug report from 2026-09-28 that earlier reviews missed; no Blizzard reply and not on the Known Issues list. Source: https://us.forums.blizzard.com/en/wow/t/forever-revelation-enchant-infinite-crits/2364904
- vengeance-periodic, starshards-twilight, holy-strike-ranks: unchanged (fixAnnounced, fixedIn nil). The Known Issues post is still the October 1 edition with "This is fixed in the next Beta build", and 70205 has no spell data changes, so no build is confirmed to carry the fix. https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-1/2352687
- pvp-crit-half: unchanged. No new Blizzard reply in the bug thread (https://us.forums.blizzard.com/en/wow/t/bugcrit-damage-is-reduced-by-half-against-players/2362977).
- All other bugs unchanged.

### Conflicts with tested values
- None. No value in Rules.lua has status tested yet.

### Seen but not confirmed or not added
- Bear and Dire Bear Form crit Rage: ForeverChanges' summary of the October 1 build says "100% more Rage from a warrior's critical strikes (75% for bears)". Fan site, not Blizzard, and no bear key exists, so nothing added. Still worth an in-game check.
- Build 70205 removed 11 items (3 fruit pulp trade goods, 5 fruits, 3 rings), no stat data given: https://ahledger.com/wow-forever/changes/WOW-70205patch1.60.1_ForeverBeta
- The Development Notes post is still the October 1 update; no blue posts on October 2-4 about combat math (only translated Hunter/Druid deep dives).
- No new source on spell or melee crit multipliers, hit tables, the 1% spell hit floor, haste, rating conversions, spell coefficients, wand crit, talent point totals or hidden item stats.
- Could not read wago.tools/builds (robots.txt blocks automated fetching) or the Wowhead and Icy Veins Forever news indexes (load dynamically). Icy Veins' changelog for October 2-3 shows only guide updates.

## Version 4, 2026-10-03

Scheduled review of everything published since 2026-10-02. Main input: Blizzard's "Warrior Updates in Today's Beta Build" post (Kaivax, October 2) and the build trackers.

### Changed
- Build: 1.60.1.70124 -> 1.60.1.70170. Two trackers now list 70170 (October 1) as the level 30 build and date 70124 to September 29 with "No data changes", so the 70124 used in version 3 was the build before the level 30 update, not the level 30 build itself. Sources: https://talentsforever.com/builds, https://wowforevertalents.com/beta/, https://foreverchanges.pro/level-30
- combat.warriorCritRageBonus: 0.75 -> 1.0 (confirmed, unchanged status). Blizzard: "Additional Rage generated from landing Critical Strikes increased to 100% increased Rage (was 75%)." Source: https://us.forums.blizzard.com/en/wow/t/warrior-updates-in-todays-beta-build/2369360 (also added to the Development Notes: https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-1/2360696). Note: the October 1 notes gave Bear and Dire Bear Form the same 75%; the October 2 post lists the raise under Warrior only, so the bear value is unclear (see below).
- New source keys: bz-warrior-oct2, tf-builds.
- ForeverRules.toc: Version 3 -> 4, X-Updated 2026-10-02 -> 2026-10-03.

### Bugs
- warrior-dw-spec-both-hands: fixedIn nil -> "1.60.1.70170", src bz-known-issues -> bz-warrior-oct2. Blizzard: "Fixed a bug that was causing Dual Wield Specialization to grant its increase to Hit Chance to both weapons", and says the changes "made it into today's new Beta build". Blizzard gives no build number; 70170 is the build both trackers list as current, so that's the reading used. Source: https://us.forums.blizzard.com/en/wow/t/warrior-updates-in-todays-beta-build/2369360
- vengeance-periodic, starshards-twilight, holy-strike-ranks: unchanged (fixAnnounced, fixedIn nil). The Known Issues post is still the October 1 edition and still says "This is fixed in the next Beta build"; tracker diffs for 70170 show no change to these spells.
- pvp-crit-half: unchanged. No new Blizzard statement found.
- All other bugs unchanged. No new Known Issues edition after October 1 (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-1/2352687).

### Conflicts with tested values
- None. No value in Rules.lua has status tested yet.

### Seen but not confirmed or not added
- Bear and Dire Bear Form crit Rage: 75% per the October 1 notes; the October 2 raise to 100% names only Warriors. warriorCritRageBonus is a Warrior key, so no bear key added. Worth an in-game check.
- Dual Wield Specialization reworked: Blizzard's notes now say it "no longer grants hit to your off-hand attacks" and lost its off-hand Rage bonus. Off-hand hit moves to the new Fury talent Furious Precision (+4/7/10% off-hand hit). No talent key in Rules.lua, not added.
- Other Warrior math with no key: Bloodthirst AP ratio 35% -> 45%; Booming Voice 10-50% shout area, 5-25% shout Rage cost reduction; Unbridled Wrath no longer doubles Rage for two-handers; Raging Blows -3 Rage on Cleave and Whirlwind; Gore Drinker 0.5/1% max health per melee hit; Lingering Rage +2-10s Rage decay delay; Berserker Rage at 30 (was 32). Source: the Warrior post above.
- Icy Veins (October 2): Scarlet Monastery loot reworked with procs and new stats (attack power, spell power, a Necrotic Wand), no numbers or ratings given. https://www.icy-veins.com/wow-forever/news/wow-forever-is-turning-scarlet-monastery-junk-loot-into-real-gear/
- Blizzard posted a login outage on October 2 (Beta Service Issue), no build or fixes in it.
- No new source on spell or melee crit multipliers, hit tables, the 1% spell hit floor, haste, rating conversions, spell coefficients, wand crit, talent point totals or hidden item stats.
- Could not read wago.tools/builds (blocked to automated fetching) or Wowhead's Forever news index (page loaded without headlines), so the build number comes from the trackers above.

## Version 3, 2026-10-02

Scheduled review of everything published since 2026-10-01. Main input: the October 1 beta update (level cap 30) and the October 1 edition of the Known Issues post.

### Changed
- Build: 1.60.1.70058 -> 1.60.1.70124 (the level 30 build, live since the October 1 maintenance). Blizzard's notes give no build number; two trackers cite 70124: https://foreverchanges.pro/level-30 and https://wowforevertalents.com/beta/
- New combat.warriorCritRageBonus: 0.75 confirmed. Blizzard: "Players now generate 75% increased Rage when landing a critical strike with a basic attack" (Bear and Dire Bear Form get the same). Source: https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-october-1/2360696
- New combat.heroicStrikeQueueRaisesOffhandHit: false confirmed. Blizzard: queueing Heroic Strike no longer increases off-hand hit chance (the Classic trick that dropped the dual-wield miss penalty). Same source.
- sources["bz-known-issues"]: URL updated to the October 1 edition of the same post (topic 2352687): https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-october-1/2352687
- New source keys: bz-devnotes-oct1, fc-build-70124.
- Bug lane list in the comment extended with hit, spellpower, racial, avoidance, threat.
- ForeverRules.toc: Version 2 -> 3, X-Updated 2026-10-01 -> 2026-10-02.

### Bugs
- New warrior-dw-spec-both-hands (hit): Dual Wield Specialization grants 2/4/6/8/10% hit to both hands, should be off-hand only. Source: Known Issues, October 1.
- New ret-aura-target-sp (spellpower): Retribution Aura uses the target's spell power instead of the Paladin's. Source: Known Issues, October 1.
- New eureka-partial (racial): Eureka does not affect every damaging or healing spell for some classes. Blizzard says "fixed in a later build" (not the next one), so fixAnnounced is not set. Source: Known Issues, October 1.
- New parry-block-behind (avoidance): enemies can parry and block from behind at close range. Source: Known Issues, October 1.
- New debuffs-no-threat (threat): Faerie Fire, Demoralizing Shout and other debuffs cause no threat. Source: Known Issues, October 1.
- vengeance-periodic, starshards-twilight, holy-strike-ranks: unchanged (fixAnnounced, fixedIn nil). The October 1 Known Issues post still says "This is fixed in the next Beta build" for all three, even after build 70124 shipped, so no build is confirmed to carry the fix.
- pvp-crit-half: unchanged. No new Blizzard statement or build since Zirene's 2026-09-29 post; the October 1 notes don't mention it.
- Glancing, Arcane Missiles, on-next-attack, Bear Form armor bugs: still listed, unchanged.

### Conflicts with tested values
- None. No value in Rules.lua has status tested yet.

### Seen but not confirmed or not added
- rankCoefficientPlateauLevel (20, reported): Blizzard now confirms the low-rank penalty exists ("spells cast using spell ranks vastly below your current level receive less benefit", also lower proc chances, e.g. rank 1 Frostbolt at 60 has 0% Frostbite chance) but gives no level, so the value stays reported.
- Spell crit changes with no matching key: Devouring Plague and Hellfire can now crit; Inner Focus no longer adds crit to periodic effects; Eureka no longer procs from periodics (channels don't count as periodic); Swipe now gains 3% of attack power. Source: October 1 dev notes.
- Talent tuning in the October 1 notes (Redoubt 4-20% block, Holy Shield 30% block, Champion of the Light 20/40/60% Int, Deflection 1-5% parry, Combustion 3 charges, Fury Dual Wield Specialization off-hand rage bonus removed) has no key in Rules.lua.
- Known issue "multiple pet display issues with Mana, Health scaling, Hit chance and Expertise" is display only; not added.
- wowforevertalents.com reports no client table changes between 70009 and 70124, which disagrees with Blizzard's October 1 notes; probably the site hadn't re-read the data. Blizzard's notes used as the source.
- No new source on haste, rating conversions, spell coefficients, wand crit, the 1% spell hit floor, talent point totals or hidden item stats.
- Could not read wago.tools/builds (blocked to automated fetching); Wowhead's Forever news index didn't load either, the patch-notes article (https://www.wowhead.com/forever/news/level-30-now-available-forever-beta-patch-notes-383217) did.

## Version 2, 2026-10-01

Scheduled review of everything published since 2026-09-29.

### Changed
- Build: 1.60.1.70009 -> 1.60.1.70058 (live on beta since 2026-09-29; Blizzard posted no patch notes for it). Sources: https://github.com/Pallando-wow/wow-development-data/pull/3 and the player thread https://us.forums.blizzard.com/en/wow/t/70058-patch-notes/2366103
- talents.firstPointLevel: 10 reported -> 10 confirmed. Blizzard: "Talents become available starting at level 10". Source: https://news.blizzard.com/en-us/article/24301514/world-of-warcraft-forever-class-deep-dives-priest-and-warrior
- talents.goldTalentsAt: {11, 16, 21, 31} reported -> confirmed. Blizzard: "one-point milestone talents at 11, 21, and 31 points, now joined by a new 16-point milestone". Sources: https://news.blizzard.com/en-us/article/24301514/world-of-warcraft-forever-class-deep-dives-priest-and-warrior and https://news.blizzard.com/en-us/article/24301515/world-of-warcraft-forever-class-deep-dives-hunter-and-druid
- New source keys: bz-dd-priest-warrior, bz-dd-hunter-druid, gh-build-70058.
- ForeverRules.toc: Version 1 -> 2, X-Updated 2026-09-29 -> 2026-10-01.

### Bugs
- No bug entries changed. Blizzard's Known Issues post is still the September 24 edition with no new items (https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-known-issues-september-24/2352687).
- vengeance-periodic, starshards-twilight, holy-strike-ranks: still fixAnnounced, fixedIn left nil. All three were added on September 24 as "fixed in the next Beta build", but build 70058 shipped without notes, so nothing confirms the fix is in it.
- pvp-crit-half: unchanged. Zirene (Senior Game Designer) said on 2026-09-29 the PvP crit reduction "won't be staying", but gave no build, so fixAnnounced stays unset (https://www.icy-veins.com/wow-forever/news/players-found-a-hidden-pvp-rule-in-wow-forever-that-halves-crit-bonuses/).

### Conflicts with tested values
- None. No value in Rules.lua has status tested yet.

### Seen but not confirmed or not added
- Beta maintenance on October 1 (morning PDT) brings a new build with "changes and fixes" and the level cap raised to 30. Notes are not out yet, so the build number is unknown. Next review should check it for the three fixAnnounced bugs and the glancing work. https://us.forums.blizzard.com/en/wow/t/beta-update-maintenance-october-1/2367661
- Class deep dives, damage math with no matching key in Rules.lua (not added): Shadowform raises the crit damage bonus of Shadow spells by 100%; Holy Precision gives up to 18% Holy spell hit; Shadow Focus now adds Shadow spell hit instead of reducing resists; Inspiration triggers from all non-periodic crit heals; Warrior crits grant 75% more Rage and rage ignores armor; Rend, Thunder Clap, Rake and Swipe gain AP scaling; Wrath is cheaper with much lower damage; Scorpid Sting now reduces target hit by 2%; Careful Aim gives 20-100% of Intellect as AP; Lone Wolf +20% damage without a pet. Sources: the two Blizzard deep dive links above.
- talents.pointsAtCap60 (51) and pointsPerRow (5): no Blizzard statement found; still reported.
- No new source on haste, rating conversions, spell coefficients, wand crit, the 1% spell hit floor, or hidden item stats.
- Could not read wago.tools/builds (blocked to automated fetching), so the build number comes from the sources above.

## Version 1, 2026-09-29

First version. Built from research on 2026-09-29.

- Combat: spell and melee crit multipliers, merged hit and crit, ratings on gear, Forever spell and physical hit at same level and vs raid boss, wand spell power removed, caster weapon spell power, no haste on gear, rank coefficient plateau at 20, Warrior rage change.
- Talents: 51 points at 60, first point at 10, 5 points per row, gold talents at 11, 16, 21, 31.
- Items: about 40% of items shipped without stats.
- Bugs: PvP crit half bonus (confirmed bug), caster and melee glancing, sheet glancing, Arcane Missiles pushback, on-next-attack spell queue, Bear Form armor, Vengeance periodic crits, Starshards, Holy Strike ranks.
