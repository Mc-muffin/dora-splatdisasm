.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetWorldPathBrain
/* 3550C 80044D0C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 35510 80044D10 1000B0AF */  sw         $s0, 0x10($sp)
/* 35514 80044D14 21808000 */  addu       $s0, $a0, $zero
/* 35518 80044D18 1400BFAF */  sw         $ra, 0x14($sp)
/* 3551C 80044D1C 2B3F010C */  jal        new_malloc
/* 35520 80044D20 28000424 */   addiu     $a0, $zero, 0x28
/* 35524 80044D24 21284000 */  addu       $a1, $v0, $zero
/* 35528 80044D28 40181000 */  sll        $v1, $s0, 1
/* 3552C 80044D2C 21187000 */  addu       $v1, $v1, $s0
/* 35530 80044D30 80180300 */  sll        $v1, $v1, 2
/* 35534 80044D34 EC14848F */  lw         $a0, %gp_rel(WorldPaths)($gp)
/* 35538 80044D38 1400BF8F */  lw         $ra, 0x14($sp)
/* 3553C 80044D3C 1000B08F */  lw         $s0, 0x10($sp)
/* 35540 80044D40 21208300 */  addu       $a0, $a0, $v1
/* 35544 80044D44 0000A4AC */  sw         $a0, 0x0($a1)
/* 35548 80044D48 0800E003 */  jr         $ra
/* 3554C 80044D4C 1800BD27 */   addiu     $sp, $sp, 0x18
.size GetWorldPathBrain, . - GetWorldPathBrain
