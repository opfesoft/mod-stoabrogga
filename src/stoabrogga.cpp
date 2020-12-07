#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SmartScriptMgr.h"
#include "MoveSplineInit.h"
#include "Player.h"
#include "MapManager.h"
#include "Pet.h"
#include "SpellScript.h"
#include "Battlefield.h"
#include "BattlefieldMgr.h"
#include "../../mod-morphsummon/src/MorphSummon.h"

enum StoabroggaNpcs
{
    NPC_BARBED_SPIDER             = 702100,
    NPC_ARCANE_WYRM               = 702102,
    NPC_MANA_WYRM                 = 702103,
    NPC_RAZZASHI_RAPTOR           = 702106,
    NPC_RAVEN_LORD                = 702107
};

enum StoabroggaDisplayIds
{
    DISPLAY_ID_WRATHGUARD_PINK    = 17542,
    DISPLAY_ID_WRATHGUARD_BLACK_1 = 19597,
    DISPLAY_ID_WRATHGUARD_BLACK_2 = 19915,
    DISPLAY_ID_WRATHGUARD_GREEN_1 = 20040,
    DISPLAY_ID_WRATHGUARD_GREEN_2 = 19914,
    DISPLAY_ID_WRATHGUARD_RED_1   = 20041,
    DISPLAY_ID_WRATHGUARD_RED_2   = 19599,
    DISPLAY_ID_BEHOLDER_BLUE      = 19579,
    DISPLAY_ID_BEHOLDER_RED       = 19877,
    DISPLAY_ID_BEHOLDER_BEIGE     = 19878,
    DISPLAY_ID_BEHOLDER_BLACK     = 20526,
    DISPLAY_ID_BEHOLDER_GRAY      = 20527,
    DISPLAY_ID_BEHOLDER_GREEN     = 20528
};

enum StoabroggaSpellIds
{
    SUMMON_FELGUARD               = 30146
};

class Stoabrogga_MorphSummonModuleScript : public MorphSummonModuleScript
{
public:
    Stoabrogga_MorphSummonModuleScript() : MorphSummonModuleScript("Stoabrogga_MorphSummonModuleScript") { }

    void OnAfterPolymorph(Player* /*player*/, Pet* pet, uint32 spell, bool polymorphPet, uint32 morphId) override
    {
        if (polymorphPet && spell == SUMMON_FELGUARD)
            switch (morphId)
            {
                case DISPLAY_ID_WRATHGUARD_PINK:
                case DISPLAY_ID_WRATHGUARD_BLACK_1:
                case DISPLAY_ID_WRATHGUARD_BLACK_2:
                case DISPLAY_ID_WRATHGUARD_GREEN_1:
                case DISPLAY_ID_WRATHGUARD_GREEN_2:
                case DISPLAY_ID_WRATHGUARD_RED_1:
                case DISPLAY_ID_WRATHGUARD_RED_2:
                    // Scale down wrathguard used by the MorphSummon module
                    pet->SetObjectScale(0.85f);
                    break;
                case DISPLAY_ID_BEHOLDER_BLUE:
                case DISPLAY_ID_BEHOLDER_RED:
                case DISPLAY_ID_BEHOLDER_BEIGE:
                case DISPLAY_ID_BEHOLDER_BLACK:
                case DISPLAY_ID_BEHOLDER_GRAY:
                case DISPLAY_ID_BEHOLDER_GREEN:
                    // Scale down beholder used by the MorphSummon module
                    pet->SetObjectScale(0.5f);
                    break;
                default:
                    pet->SetObjectScale(1.0f);
            }
    }
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
                    pet->SetObjectScale(0.7f * pet->GetFloatValue(OBJECT_FIELD_SCALE_X));
                break;
            case NPC_RAZZASHI_RAPTOR:
            case NPC_RAVEN_LORD:
                // Scale down custom "Razzashi Raptor" and "Raven Lord" pets used by the Beastmaster module
                if (Pet* pet = guardian->ToPet())
                    pet->SetObjectScale(0.7f * pet->GetFloatValue(OBJECT_FIELD_SCALE_X));
                break;
        }

        switch (guardian->GetDisplayId())
        {
            case DISPLAY_ID_WRATHGUARD_PINK:
            case DISPLAY_ID_WRATHGUARD_BLACK_1:
            case DISPLAY_ID_WRATHGUARD_BLACK_2:
            case DISPLAY_ID_WRATHGUARD_GREEN_1:
            case DISPLAY_ID_WRATHGUARD_GREEN_2:
            case DISPLAY_ID_WRATHGUARD_RED_1:
            case DISPLAY_ID_WRATHGUARD_RED_2:
                // Scale down wrathguard used by the MorphSummon module
                if (Pet* pet = guardian->ToPet())
                    pet->SetObjectScale(0.85f);
                break;
            case DISPLAY_ID_BEHOLDER_BLUE:
            case DISPLAY_ID_BEHOLDER_RED:
            case DISPLAY_ID_BEHOLDER_BEIGE:
            case DISPLAY_ID_BEHOLDER_BLACK:
            case DISPLAY_ID_BEHOLDER_GRAY:
            case DISPLAY_ID_BEHOLDER_GREEN:
                // Scale down beholder used by the MorphSummon module
                if (Pet* pet = guardian->ToPet())
                    pet->SetObjectScale(0.5f);
                break;
        }
    }
};

enum StoabroggaMounts
{
    // Magic Broom
    SPELL_MAGIC_BROOM_60                = 42680,
    SPELL_MAGIC_BROOM_100               = 42683,
    SPELL_MAGIC_BROOM_150               = 42667,
    SPELL_MAGIC_BROOM_280               = 42668,

    // Headless Horseman's Mount
    SPELL_HEADLESS_HORSEMAN_MOUNT_60    = 51621,
    SPELL_HEADLESS_HORSEMAN_MOUNT_100   = 48024,
    SPELL_HEADLESS_HORSEMAN_MOUNT_150   = 51617,
    SPELL_HEADLESS_HORSEMAN_MOUNT_280   = 48023,

    // Winged Steed of the Ebon Blade
    SPELL_WINGED_STEED_150              = 54726,
    SPELL_WINGED_STEED_280              = 54727,

    // Big Love Rocket
    SPELL_BIG_LOVE_ROCKET_0             = 71343,
    SPELL_BIG_LOVE_ROCKET_60            = 71344,
    SPELL_BIG_LOVE_ROCKET_100           = 71345,
    SPELL_BIG_LOVE_ROCKET_150           = 71346,
    SPELL_BIG_LOVE_ROCKET_310           = 71347,

    // Invincible
    SPELL_INVINCIBLE_60                 = 72281,
    SPELL_INVINCIBLE_100                = 72282,
    SPELL_INVINCIBLE_150                = 72283,
    SPELL_INVINCIBLE_310                = 72284,

    // Blazing Hippogryph
    SPELL_BLAZING_HIPPOGRYPH_150        = 74854,
    SPELL_BLAZING_HIPPOGRYPH_280        = 74855,

    // Celestial Steed
    SPELL_CELESTIAL_STEED_60            = 75619,
    SPELL_CELESTIAL_STEED_100           = 75620,
    SPELL_CELESTIAL_STEED_150           = 75617,
    SPELL_CELESTIAL_STEED_280           = 75618,
    SPELL_CELESTIAL_STEED_310           = 76153,

    // X-53 Touring Rocket
    SPELL_X53_TOURING_ROCKET_150        = 75957,
    SPELL_X53_TOURING_ROCKET_280        = 75972,
    SPELL_X53_TOURING_ROCKET_310        = 76154,

    // Big Blizzard Bear
    SPELL_BIG_BLIZZARD_BEAR_60          = 58997,
    SPELL_BIG_BLIZZARD_BEAR_100         = 58999,
    SPELL_BIG_BLIZZARD_BEAR_150         = 58999,
    SPELL_BIG_BLIZZARD_BEAR_280         = 58999,
    SPELL_BIG_BLIZZARD_BEAR_310         = 58999
};

class spell_stoabrogga_gen_mount : public SpellScriptLoader
{
    public:
        spell_stoabrogga_gen_mount(const char* name, uint32 mount0 = 0, uint32 mount60 = 0, uint32 mount100 = 0, uint32 mount150 = 0, uint32 mount280 = 0, uint32 mount310 = 0) : SpellScriptLoader(name),
            _mount0(mount0), _mount60(mount60), _mount100(mount100), _mount150(mount150), _mount280(mount280), _mount310(mount310) { }

        class spell_stoabrogga_gen_mount_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_stoabrogga_gen_mount_SpellScript);

        public:
            spell_stoabrogga_gen_mount_SpellScript(uint32 mount0, uint32 mount60, uint32 mount100, uint32 mount150, uint32 mount280, uint32 mount310) : SpellScript(),
                _mount0(mount0), _mount60(mount60), _mount100(mount100), _mount150(mount150), _mount280(mount280), _mount310(mount310) { }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (_mount0 && !sSpellMgr->GetSpellInfo(_mount0))
                    return false;
                if (_mount60 && !sSpellMgr->GetSpellInfo(_mount60))
                    return false;
                if (_mount100 && !sSpellMgr->GetSpellInfo(_mount100))
                    return false;
                if (_mount150 && !sSpellMgr->GetSpellInfo(_mount150))
                    return false;
                if (_mount280 && !sSpellMgr->GetSpellInfo(_mount280))
                    return false;
                if (_mount310 && !sSpellMgr->GetSpellInfo(_mount310))
                    return false;
                return true;
            }

            void HandleMount(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);

                if (Player* target = GetHitPlayer())
                {
                    uint32 petNumber = target->GetTemporaryUnsummonedPetNumber();
                    target->SetTemporaryUnsummonedPetNumber(0);

                    // Prevent stacking of mounts and client crashes upon dismounting
                    target->RemoveAurasByType(SPELL_AURA_MOUNTED, 0, GetHitAura());

                    bool canFly = true;
                    AreaTableEntry const* area = sAreaTableStore.LookupEntry(target->GetAreaId());
                    // Xinef: add battlefield check
                    Battlefield* Bf = sBattlefieldMgr->GetBattlefieldToZoneId(target->GetZoneId());
                    if (!area || (canFly && ((area->flags & AREA_FLAG_NO_FLY_ZONE) || (Bf && !Bf->CanFlyIn()))))
                        canFly = false;

                    uint32 mount = 0;

                    if (canFly)
                    {
                        if (_mount310)
                            mount = _mount310;
                        else
                            mount = _mount280;
                    }
                    else
                        mount = _mount100;

                    if (mount)
                    {
                        PreventHitAura();
                        target->CastSpell(target, mount, true);
                    }

                    if (petNumber)
                        target->SetTemporaryUnsummonedPetNumber(petNumber);
                }
            }

            void Register()
            {
                 OnEffectHitTarget += SpellEffectFn(spell_stoabrogga_gen_mount_SpellScript::HandleMount, EFFECT_2, SPELL_EFFECT_SCRIPT_EFFECT);
            }

        private:
            uint32 _mount0;
            uint32 _mount60;
            uint32 _mount100;
            uint32 _mount150;
            uint32 _mount280;
            uint32 _mount310;
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_stoabrogga_gen_mount_SpellScript(_mount0, _mount60, _mount100, _mount150, _mount280, _mount310);
        }

    private:
        uint32 _mount0;
        uint32 _mount60;
        uint32 _mount100;
        uint32 _mount150;
        uint32 _mount280;
        uint32 _mount310;
};

// Test cyclic spline movement on the ground
class npc_gronklaash : public CreatureScript
{
public:
    npc_gronklaash() : CreatureScript("npc_gronklaash") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_gronklaashAI(creature);
    }

    struct npc_gronklaashAI : public ScriptedAI
    {
        npc_gronklaashAI(Creature* creature) : ScriptedAI(creature)
        {
            pathPoints.clear();
            WPPath* path = sSmartWaypointMgr->GetPath(me->GetEntry());
            if (!path || path->empty())
                return;

            pathPoints.push_back(G3D::Vector3(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ()));

            uint32 wpCounter = 1;
            WPPath::const_iterator itr;
            while ((itr = path->find(wpCounter++)) != path->end())
            {
                WayPoint* wp = itr->second;
                pathPoints.push_back(G3D::Vector3(wp->x, wp->y, wp->z));
            }
        }

        void InitializeAI() override
        {
            JustReachedHome();
        }

        void JustRespawned() override
        {
            JustReachedHome();
        }

        void JustReachedHome() override
        {
            if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() != EFFECT_MOTION_TYPE)
            {
                me->SetHover(true);
                me->SetWalk(true);
                Movement::MoveSplineInit init(me);
                init.MovebyPath(pathPoints);
                init.SetCyclic();
                init.SetSmooth();
                init.Launch();
            }
        }

        void UpdateAI(uint32 /*diff*/) override
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }

        private:
            Movement::PointsArray pathPoints;
    };
};

// Test cyclic spline movement in the air
class npc_swift_red_wind_rider : public CreatureScript
{
public:
    npc_swift_red_wind_rider() : CreatureScript("npc_swift_red_wind_rider") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_swift_red_wind_riderAI(creature);
    }

    struct npc_swift_red_wind_riderAI : public ScriptedAI
    {
        npc_swift_red_wind_riderAI(Creature* creature) : ScriptedAI(creature)
        {
            pathPoints.clear();
            WPPath* path = sSmartWaypointMgr->GetPath(me->GetEntry());
            if (!path || path->empty())
                return;

            pathPoints.push_back(G3D::Vector3(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ()));

            uint32 wpCounter = 1;
            WPPath::const_iterator itr;
            while ((itr = path->find(wpCounter++)) != path->end())
            {
                WayPoint* wp = itr->second;
                pathPoints.push_back(G3D::Vector3(wp->x, wp->y, wp->z));
            }
        }

        void InitializeAI() override
        {
            JustReachedHome();
        }

        void JustRespawned() override
        {
            JustReachedHome();
        }

        void JustReachedHome() override
        {
            if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() != EFFECT_MOTION_TYPE)
            {
                Movement::MoveSplineInit init(me);
                init.MovebyPath(pathPoints);
                init.SetCyclic();
                init.Launch();
            }
        }

        void UpdateAI(uint32 /*diff*/) override
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }

        private:
            Movement::PointsArray pathPoints;
    };
};

void AddStoabroggaScripts()
{
    new Stoabrogga_MorphSummonModuleScript();
    new Stoabrogga_PlayerScript();
    new spell_stoabrogga_gen_mount("spell_stoabrogga_big_blizzard_bear", 0, SPELL_BIG_BLIZZARD_BEAR_60, SPELL_BIG_BLIZZARD_BEAR_100, SPELL_BIG_BLIZZARD_BEAR_150, SPELL_BIG_BLIZZARD_BEAR_280, SPELL_BIG_BLIZZARD_BEAR_310);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_magic_broom", 0, SPELL_MAGIC_BROOM_60, SPELL_MAGIC_BROOM_100, SPELL_MAGIC_BROOM_150, SPELL_MAGIC_BROOM_280);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_headless_horseman_mount", 0, SPELL_HEADLESS_HORSEMAN_MOUNT_60, SPELL_HEADLESS_HORSEMAN_MOUNT_100, SPELL_HEADLESS_HORSEMAN_MOUNT_150, SPELL_HEADLESS_HORSEMAN_MOUNT_280);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_winged_steed_of_the_ebon_blade", 0, 0, 0, SPELL_WINGED_STEED_150, SPELL_WINGED_STEED_280);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_big_love_rocket", SPELL_BIG_LOVE_ROCKET_0, SPELL_BIG_LOVE_ROCKET_60, SPELL_BIG_LOVE_ROCKET_100, SPELL_BIG_LOVE_ROCKET_150, SPELL_BIG_LOVE_ROCKET_310);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_invincible", 0, SPELL_INVINCIBLE_60, SPELL_INVINCIBLE_100, SPELL_INVINCIBLE_150, SPELL_INVINCIBLE_310);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_blazing_hippogryph", 0, 0, 0, SPELL_BLAZING_HIPPOGRYPH_150, SPELL_BLAZING_HIPPOGRYPH_280);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_celestial_steed", 0, SPELL_CELESTIAL_STEED_60, SPELL_CELESTIAL_STEED_100, SPELL_CELESTIAL_STEED_150, SPELL_CELESTIAL_STEED_280, SPELL_CELESTIAL_STEED_310);
    new spell_stoabrogga_gen_mount("spell_stoabrogga_x53_touring_rocket", 0, 0, 0, SPELL_X53_TOURING_ROCKET_150, SPELL_X53_TOURING_ROCKET_280, SPELL_X53_TOURING_ROCKET_310);
    new npc_gronklaash();
    new npc_swift_red_wind_rider();
}
