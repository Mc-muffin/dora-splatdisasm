.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckIfPooled
/* 27D8C 8003758C 0A80023C */  lui        $v0, %hi(ActorDynamicPool)
/* 27D90 80037590 88904224 */  addiu      $v0, $v0, %lo(ActorDynamicPool)
/* 27D94 80037594 40180400 */  sll        $v1, $a0, 1
/* 27D98 80037598 21186400 */  addu       $v1, $v1, $a0
/* 27D9C 8003759C C0180300 */  sll        $v1, $v1, 3
/* 27DA0 800375A0 23186400 */  subu       $v1, $v1, $a0
/* 27DA4 800375A4 80180300 */  sll        $v1, $v1, 2
/* 27DA8 800375A8 21186200 */  addu       $v1, $v1, $v0
/* 27DAC 800375AC 0000628C */  lw         $v0, 0x0($v1)
/* 27DB0 800375B0 00000000 */  nop
/* 27DB4 800375B4 01004238 */  xori       $v0, $v0, 0x1
/* 27DB8 800375B8 0800E003 */  jr         $ra
/* 27DBC 800375BC 0100422C */   sltiu     $v0, $v0, 0x1
.size CheckIfPooled, . - CheckIfPooled
