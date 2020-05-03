#include "ScriptMgr.h"
#include "Player.h"
#include "MapManager.h"
#include "Pet.h"

enum StoabroggaNpcs
{
    NPC_BARBED_SPIDER = 702100,
    NPC_ARCANE_WYRM   = 702102,
    NPC_MANA_WYRM     = 702103
};

class Stoabrogga_PlayerScript : public PlayerScript
{
public:
    Stoabrogga_PlayerScript() : PlayerScript("Stoabrogga_PlayerScript") { }

    void OnAfterGuardianInitStatsForLevel(Player* /*player*/, Guardian* guardian) override
    {
        switch (guardian->GetEntry())
        {
            case NPC_BARBED_SPIDER:
                // Scale up custom "Barbed Spider" pet used by the Beastmaster module
                if (Pet* pet = guardian->ToPet())
                    pet->SetObjectScale(1.3f * pet->GetFloatValue(OBJECT_FIELD_SCALE_X));
                break;
            case NPC_ARCANE_WYRM:
            case NPC_MANA_WYRM:
                // Scale down custom "Arcane Wyrm" and "Mana Wyrm" pets used by the Beastmaster module
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
