.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckOverDigCell
/* 12234 80021A34 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 12238 80021A38 21380000 */  addu       $a3, $zero, $zero
/* 1223C 80021A3C C3210400 */  sra        $a0, $a0, 7
/* 12240 80021A40 4000A524 */  addiu      $a1, $a1, 0x40
/* 12244 80021A44 C3290500 */  sra        $a1, $a1, 7
/* 12248 80021A48 7013828F */  lw         $v0, %gp_rel(g_totaldig)($gp)
/* 1224C 80021A4C C3310600 */  sra        $a2, $a2, 7
/* 12250 80021A50 0400A5AF */  sw         $a1, 0x4($sp)
/* 12254 80021A54 2128A003 */  addu       $a1, $sp, $zero
/* 12258 80021A58 0000A4AF */  sw         $a0, 0x0($sp)
/* 1225C 80021A5C 17004018 */  blez       $v0, .L80021ABC
/* 12260 80021A60 0800A6AF */   sw        $a2, 0x8($sp)
/* 12264 80021A64 21304000 */  addu       $a2, $v0, $zero
/* 12268 80021A68 7413848F */  lw         $a0, %gp_rel(WorldDigPtr)($gp)
.L80021A6C:
/* 1226C 80021A6C 00000000 */  nop
/* 12270 80021A70 2400828C */  lw         $v0, 0x24($a0)
/* 12274 80021A74 00000000 */  nop
/* 12278 80021A78 01004230 */  andi       $v0, $v0, 0x1
/* 1227C 80021A7C 0B004010 */  beqz       $v0, .L80021AAC
/* 12280 80021A80 00000000 */   nop
/* 12284 80021A84 1000838C */  lw         $v1, 0x10($a0)
/* 12288 80021A88 0000A28C */  lw         $v0, 0x0($a1)
/* 1228C 80021A8C 00000000 */  nop
/* 12290 80021A90 06006214 */  bne        $v1, $v0, .L80021AAC
/* 12294 80021A94 00000000 */   nop
/* 12298 80021A98 1800838C */  lw         $v1, 0x18($a0)
/* 1229C 80021A9C 0800A28C */  lw         $v0, 0x8($a1)
/* 122A0 80021AA0 00000000 */  nop
/* 122A4 80021AA4 06006210 */  beq        $v1, $v0, .L80021AC0
/* 122A8 80021AA8 21108000 */   addu      $v0, $a0, $zero
.L80021AAC:
/* 122AC 80021AAC 0100E724 */  addiu      $a3, $a3, 0x1
/* 122B0 80021AB0 2A10E600 */  slt        $v0, $a3, $a2
/* 122B4 80021AB4 EDFF4014 */  bnez       $v0, .L80021A6C
/* 122B8 80021AB8 30008424 */   addiu     $a0, $a0, 0x30
.L80021ABC:
/* 122BC 80021ABC 21100000 */  addu       $v0, $zero, $zero
.L80021AC0:
/* 122C0 80021AC0 2B100200 */  sltu       $v0, $zero, $v0
/* 122C4 80021AC4 0800E003 */  jr         $ra
/* 122C8 80021AC8 1000BD27 */   addiu     $sp, $sp, 0x10
.size CheckOverDigCell, . - CheckOverDigCell
