.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckPickupTrigger
/* 31150 80040950 0A80023C */  lui        $v0, %hi(PickupTrigger)
/* 31154 80040954 D0BB4224 */  addiu      $v0, $v0, %lo(PickupTrigger)
/* 31158 80040958 80200400 */  sll        $a0, $a0, 2
/* 3115C 8004095C 21208200 */  addu       $a0, $a0, $v0
/* 31160 80040960 0000838C */  lw         $v1, 0x0($a0)
/* 31164 80040964 00000000 */  nop
/* 31168 80040968 4400628C */  lw         $v0, 0x44($v1)
/* 3116C 8004096C 00000000 */  nop
/* 31170 80040970 1C00448C */  lw         $a0, 0x1C($v0)
/* 31174 80040974 1000023C */  lui        $v0, (0x100000 >> 16)
/* 31178 80040978 0800E003 */  jr         $ra
/* 3117C 8004097C 24108200 */   and       $v0, $a0, $v0
.size CheckPickupTrigger, . - CheckPickupTrigger
