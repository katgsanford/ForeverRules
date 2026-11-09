# Forever Rules

Shared WoW Forever rules and known bugs.

- Rules.lua is the only source. Forever Spellmath reads the global ForeverRules table in game. The Forever Coach app parses the same file.
- A scheduled review updates Rules.lua and CHANGELOG.md twice a week during the beta.
- Values Kat verified in game carry status "tested". The review never overwrites them. It lists conflicts in the changelog instead.
- A new addon folder needs a full game restart the first time. After that, edits to Rules.lua load on /reload.
