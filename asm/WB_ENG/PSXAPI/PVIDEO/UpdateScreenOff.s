.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateScreenOff
/* 4BFD8 8005B7D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BFDC 8005B7DC 21200000 */  addu       $a0, $zero, $zero
/* 4BFE0 8005B7E0 1000BFAF */  sw         $ra, 0x10($sp)
/* 4BFE4 8005B7E4 DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4BFE8 8005B7E8 EBD6010C */  jal        VSync
/* 4BFEC 8005B7EC 00000000 */   nop
/* 4BFF0 8005B7F0 06000224 */  addiu      $v0, $zero, 0x6
/* 4BFF4 8005B7F4 0B80033C */  lui        $v1, %hi(gDoubleBuffer)
/* 4BFF8 8005B7F8 E81080AF */  sw         $zero, %gp_rel(UpdateScreenFlag)($gp)
/* 4BFFC 8005B7FC F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4C000 8005B800 E8108297 */  lhu        $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4C004 8005B804 78B96324 */  addiu      $v1, $v1, %lo(gDoubleBuffer)
/* 4C008 8005B808 EC1080AF */  sw         $zero, %gp_rel(UpdateScreenFlag2)($gp)
/* 4C00C 8005B80C 980062A0 */  sb         $v0, 0x98($v1)
/* 4C010 8005B810 180062A0 */  sb         $v0, 0x18($v1)
.L8005B814:
/* 4C014 8005B814 36DB010C */  jal        DrawSync
/* 4C018 8005B818 01000424 */   addiu     $a0, $zero, 0x1
/* 4C01C 8005B81C FDFF4014 */  bnez       $v0, .L8005B814
/* 4C020 8005B820 00000000 */   nop
/* 4C024 8005B824 5D67010C */  jal        InitOrderingTables
/* 4C028 8005B828 00000000 */   nop
/* 4C02C 8005B82C 1000BF8F */  lw         $ra, 0x10($sp)
/* 4C030 8005B830 00000000 */  nop
/* 4C034 8005B834 0800E003 */  jr         $ra
/* 4C038 8005B838 1800BD27 */   addiu     $sp, $sp, 0x18
.size UpdateScreenOff, . - UpdateScreenOff
