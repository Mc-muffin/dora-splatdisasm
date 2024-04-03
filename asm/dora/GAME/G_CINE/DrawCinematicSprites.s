.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawCinematicSprites
/* 24000 80033800 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 24004 80033804 40000224 */  addiu      $v0, $zero, 0x40
/* 24008 80033808 01000324 */  addiu      $v1, $zero, 0x1
/* 2400C 8003380C 0A80043C */  lui        $a0, %hi(BubbleSprite)
/* 24010 80033810 48BD8424 */  addiu      $a0, $a0, %lo(BubbleSprite)
/* 24014 80033814 21280000 */  addu       $a1, $zero, $zero
/* 24018 80033818 A0000624 */  addiu      $a2, $zero, 0xA0
/* 2401C 8003381C 40010724 */  addiu      $a3, $zero, 0x140
/* 24020 80033820 1800BFAF */  sw         $ra, 0x18($sp)
/* 24024 80033824 1000A2AF */  sw         $v0, 0x10($sp)
/* 24028 80033828 4208010C */  jal        DrawCinematicSprite
/* 2402C 8003382C 1400A3AF */   sw        $v1, 0x14($sp)
/* 24030 80033830 1800BF8F */  lw         $ra, 0x18($sp)
/* 24034 80033834 00000000 */  nop
/* 24038 80033838 0800E003 */  jr         $ra
/* 2403C 8003383C 2000BD27 */   addiu     $sp, $sp, 0x20
.size DrawCinematicSprites, . - DrawCinematicSprites
