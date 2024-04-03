.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitShadows
/* 52CD0 800624D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 52CD4 800624D4 1000BFAF */  sw         $ra, 0x10($sp)
/* 52CD8 800624D8 638D000C */  jal        InitShadowMeshTable
/* 52CDC 800624DC 00000000 */   nop
/* 52CE0 800624E0 1000BF8F */  lw         $ra, 0x10($sp)
/* 52CE4 800624E4 00000000 */  nop
/* 52CE8 800624E8 0800E003 */  jr         $ra
/* 52CEC 800624EC 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitShadows, . - InitShadows
