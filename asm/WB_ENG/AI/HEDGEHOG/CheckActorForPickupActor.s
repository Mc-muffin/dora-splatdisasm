.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckActorForPickupActor
/* 37A18 80047218 21288000 */  addu       $a1, $a0, $zero
/* 37A1C 8004721C 4400A28C */  lw         $v0, 0x44($a1)
/* 37A20 80047220 00000000 */  nop
/* 37A24 80047224 0C00448C */  lw         $a0, 0xC($v0)
/* 37A28 80047228 13000324 */  addiu      $v1, $zero, 0x13
/* 37A2C 8004722C 04008314 */  bne        $a0, $v1, .L80047240
/* 37A30 80047230 21100000 */   addu      $v0, $zero, $zero
/* 37A34 80047234 2801A38C */  lw         $v1, 0x128($a1)
/* 37A38 80047238 00000000 */  nop
/* 37A3C 8004723C 3000628C */  lw         $v0, 0x30($v1)
.L80047240:
/* 37A40 80047240 0800E003 */  jr         $ra
/* 37A44 80047244 00000000 */   nop
.size CheckActorForPickupActor, . - CheckActorForPickupActor
