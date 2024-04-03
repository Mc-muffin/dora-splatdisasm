.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitETEndLevelPath
/* A994 8001A194 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A998 8001A198 0980053C */  lui        $a1, %hi(ETEndLevelpath)
/* A99C 8001A19C 385CA4AC */  sw         $a0, %lo(ETEndLevelpath)($a1)
/* A9A0 8001A1A0 0980043C */  lui        $a0, %hi(ETActor)
/* A9A4 8001A1A4 B05A8424 */  addiu      $a0, $a0, %lo(ETActor)
/* A9A8 8001A1A8 385CA524 */  addiu      $a1, $a1, %lo(ETEndLevelpath)
/* A9AC 8001A1AC B80B0624 */  addiu      $a2, $zero, 0xBB8
/* A9B0 8001A1B0 1000BFAF */  sw         $ra, 0x10($sp)
/* A9B4 8001A1B4 9C13010C */  jal        InitPath
/* A9B8 8001A1B8 FA000724 */   addiu     $a3, $zero, 0xFA
/* A9BC 8001A1BC 1000BF8F */  lw         $ra, 0x10($sp)
/* A9C0 8001A1C0 00000000 */  nop
/* A9C4 8001A1C4 0800E003 */  jr         $ra
/* A9C8 8001A1C8 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitETEndLevelPath, . - InitETEndLevelPath
