.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActorUpdateStartingDirVelocity
/* 526E4 80061EE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 526E8 80061EE8 1000B0AF */  sw         $s0, 0x10($sp)
/* 526EC 80061EEC 21808000 */  addu       $s0, $a0, $zero
/* 526F0 80061EF0 6C000226 */  addiu      $v0, $s0, 0x6C
/* 526F4 80061EF4 1400BFAF */  sw         $ra, 0x14($sp)
/* 526F8 80061EF8 3000448C */  lw         $a0, 0x30($v0)
/* 526FC 80061EFC 3800458C */  lw         $a1, 0x38($v0)
/* 52700 80061F00 63EF010C */  jal        ratan2
/* 52704 80061F04 00000000 */   nop
/* 52708 80061F08 00084224 */  addiu      $v0, $v0, 0x800
/* 5270C 80061F0C 1400BF8F */  lw         $ra, 0x14($sp)
/* 52710 80061F10 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 52714 80061F14 540002AE */  sw         $v0, 0x54($s0)
/* 52718 80061F18 1000B08F */  lw         $s0, 0x10($sp)
/* 5271C 80061F1C 0800E003 */  jr         $ra
/* 52720 80061F20 1800BD27 */   addiu     $sp, $sp, 0x18
.size ActorUpdateStartingDirVelocity, . - ActorUpdateStartingDirVelocity
