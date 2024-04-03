.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateScreenOn
/* 4C03C 8005B83C F010828F */  lw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4C040 8005B840 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4C044 8005B844 09004014 */  bnez       $v0, .L8005B86C
/* 4C048 8005B848 1000BFAF */   sw        $ra, 0x10($sp)
/* 4C04C 8005B84C 01000224 */  addiu      $v0, $zero, 0x1
/* 4C050 8005B850 0B80033C */  lui        $v1, %hi(gDoubleBuffer)
/* 4C054 8005B854 E81082AF */  sw         $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4C058 8005B858 E8108297 */  lhu        $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4C05C 8005B85C 78B96324 */  addiu      $v1, $v1, %lo(gDoubleBuffer)
/* 4C060 8005B860 980062A0 */  sb         $v0, 0x98($v1)
/* 4C064 8005B864 1F6E0108 */  j          .L8005B87C
/* 4C068 8005B868 180062A0 */   sb        $v0, 0x18($v1)
.L8005B86C:
/* 4C06C 8005B86C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4C070 8005B870 F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4C074 8005B874 EBD6010C */  jal        VSync
/* 4C078 8005B878 21200000 */   addu      $a0, $zero, $zero
.L8005B87C:
/* 4C07C 8005B87C 1000BF8F */  lw         $ra, 0x10($sp)
/* 4C080 8005B880 00000000 */  nop
/* 4C084 8005B884 0800E003 */  jr         $ra
/* 4C088 8005B888 1800BD27 */   addiu     $sp, $sp, 0x18
.size UpdateScreenOn, . - UpdateScreenOn
