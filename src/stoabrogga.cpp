#include "ScriptMgr.h"
#include "Player.h"
#include "MapManager.h"
#include "Pet.h"

enum StoabroggaNpcs
{
    NPC_BARBED_SPIDER = 702100,
    NPC_ARCANE_WYRM   = 702102
};

class Stoabrogga_PlayerScript : public PlayerScript
{
public:
    Stoabrogga_PlayerScript() : PlayerScript("Stoabrogga_PlayerScript") { }

    void OnAfterGuardianInitStatsForLevel(Player* /*player*/, Guardian* guardian) override
    {
        switch (guardian->GetEntry())
        {
            case NPC_FERAL_SPIRIT:
            {
                // Spirit Wolves stay forever, but do less damage and have their Spirit Hunt healing aura removed
                uint8 guardianLevel = guardian->getLevel();
                guardian->SetBaseWeaponDamage(BASE_ATTACK, MINDAMAGE, float(guardianLevel * 2.0f - guardianLevel));
                guardian->SetBaseWeaponDamage(BASE_ATTACK, MAXDAMAGE, float(guardianLevel * 2.0f + guardianLevel));
                guardian->RemoveAurasDueToSpell(SPELL_FERAL_SPIRIT_SPIRIT_HUNT);
                guardian->SetTempSummonType(TEMPSUMMON_DEAD_DESPAWN);
                guardian->SetTimer(0);
                break;
            }
            case NPC_BARBED_SPIDER:
                // Scale up custom "Barbed Spider" pet used by the Beastmaster module
                if (Pet* pet = guardian->ToPet())
                    pet->SetObjectScale(1.3f * pet->GetFloatValue(OBJECT_FIELD_SCALE_X));
                break;
            case NPC_ARCANE_WYRM:
                // Scale down custom "Arcane Wyrm" pet used by the Beastmaster module
                if (Pet* pet = guardian->ToPet())
                    pet->SetObjectScale(0.3f * pet->GetFloatValue(OBJECT_FIELD_SCALE_X));
                break;
        }
    }
};

void AddStoabroggaScripts()
{
    new Stoabrogga_PlayerScript();
}
