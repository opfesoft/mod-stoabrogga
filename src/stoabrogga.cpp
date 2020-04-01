/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
*/

#include "ScriptMgr.h"
#include "Player.h"
#include "MapManager.h"

class Stoabrogga_PlayerScript : public PlayerScript
{
public:
    Stoabrogga_PlayerScript() : PlayerScript("Stoabrogga_PlayerScript") { }

    void OnAfterGuardianInitStatsForLevel(Player* /*player*/, Guardian* guardian) override
    {
        if (guardian->GetEntry() == NPC_FERAL_SPIRIT)
        {
            // Spirit Wolves stay forever, but do less damage and have their Spirit Hunt healing aura removed
            uint8 guardianLevel = guardian->getLevel();
            guardian->SetBaseWeaponDamage(BASE_ATTACK, MINDAMAGE, float(guardianLevel * 2.0f - guardianLevel));
            guardian->SetBaseWeaponDamage(BASE_ATTACK, MAXDAMAGE, float(guardianLevel * 2.0f + guardianLevel));
            guardian->RemoveAurasDueToSpell(SPELL_FERAL_SPIRIT_SPIRIT_HUNT);
            guardian->SetTempSummonType(TEMPSUMMON_DEAD_DESPAWN);
            guardian->SetTimer(0);
        }
    }
};

void AddStoabroggaScripts()
{
    new Stoabrogga_PlayerScript();
}
