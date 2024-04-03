.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLevelWorld
/* 185EC 80027DEC 0880033C */  lui        $v1, %hi(WorldList)
/* 185F0 80027DF0 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 185F4 80027DF4 80100400 */  sll        $v0, $a0, 2
/* 185F8 80027DF8 21104400 */  addu       $v0, $v0, $a0
/* 185FC 80027DFC 80100200 */  sll        $v0, $v0, 2
/* 18600 80027E00 21104300 */  addu       $v0, $v0, $v1
/* 18604 80027E04 0000468C */  lw         $a2, 0x0($v0)
/* 18608 80027E08 880785AF */  sw         $a1, %gp_rel(gmenulevel)($gp)
/* 1860C 80027E0C 840784AF */  sw         $a0, %gp_rel(gmenuworld)($gp)
/* 18610 80027E10 0980013C */  lui        $at, %hi(gLevel)
/* 18614 80027E14 345625AC */  sw         $a1, %lo(gLevel)($at)
/* 18618 80027E18 0980013C */  lui        $at, %hi(gWorld)
/* 1861C 80027E1C 3C5626AC */  sw         $a2, %lo(gWorld)($at)
/* 18620 80027E20 0800E003 */  jr         $ra
/* 18624 80027E24 00000000 */   nop
.size SetLevelWorld, . - SetLevelWorld
