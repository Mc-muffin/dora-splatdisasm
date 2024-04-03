.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericActorBrains
/* 3AA14 8004A214 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AA18 8004A218 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AA1C 8004A21C 1400BFAF */  sw         $ra, 0x14($sp)
/* 3AA20 8004A220 9228010C */  jal        CommonActorPreBrains
/* 3AA24 8004A224 21808000 */   addu      $s0, $a0, $zero
/* 3AA28 8004A228 03004010 */  beqz       $v0, .L8004A238
/* 3AA2C 8004A22C 21100000 */   addu      $v0, $zero, $zero
/* 3AA30 8004A230 2025010C */  jal        CommonActorPostBrains
/* 3AA34 8004A234 21200002 */   addu      $a0, $s0, $zero
.L8004A238:
/* 3AA38 8004A238 1400BF8F */  lw         $ra, 0x14($sp)
/* 3AA3C 8004A23C 1000B08F */  lw         $s0, 0x10($sp)
/* 3AA40 8004A240 0800E003 */  jr         $ra
/* 3AA44 8004A244 1800BD27 */   addiu     $sp, $sp, 0x18
.size GenericActorBrains, . - GenericActorBrains
