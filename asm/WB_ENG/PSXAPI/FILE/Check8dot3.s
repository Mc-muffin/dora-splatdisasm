.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Check8dot3
/* 477A8 80056FA8 40FFBD27 */  addiu      $sp, $sp, -0xC0
/* 477AC 80056FAC 21288000 */  addu       $a1, $a0, $zero
/* 477B0 80056FB0 B800BFAF */  sw         $ra, 0xB8($sp)
/* 477B4 80056FB4 8FC2010C */  jal        strcpy
/* 477B8 80056FB8 1000A427 */   addiu     $a0, $sp, 0x10
/* 477BC 80056FBC 1000A427 */  addiu      $a0, $sp, 0x10
/* 477C0 80056FC0 875B010C */  jal        GetNameSegment
/* 477C4 80056FC4 21288000 */   addu      $a1, $a0, $zero
/* 477C8 80056FC8 1000A393 */  lbu        $v1, 0x10($sp)
/* 477CC 80056FCC 2E000224 */  addiu      $v0, $zero, 0x2E
/* 477D0 80056FD0 06006210 */  beq        $v1, $v0, .L80056FEC
/* 477D4 80056FD4 1100A427 */   addiu     $a0, $sp, 0x11
/* 477D8 80056FD8 2E000324 */  addiu      $v1, $zero, 0x2E
.L80056FDC:
/* 477DC 80056FDC 00008290 */  lbu        $v0, 0x0($a0)
/* 477E0 80056FE0 00000000 */  nop
/* 477E4 80056FE4 FDFF4314 */  bne        $v0, $v1, .L80056FDC
/* 477E8 80056FE8 01008424 */   addiu     $a0, $a0, 0x1
.L80056FEC:
/* 477EC 80056FEC 00008290 */  lbu        $v0, 0x0($a0)
/* 477F0 80056FF0 00000000 */  nop
/* 477F4 80056FF4 FDFF4014 */  bnez       $v0, .L80056FEC
/* 477F8 80056FF8 01008424 */   addiu     $a0, $a0, 0x1
/* 477FC 80056FFC B800BF8F */  lw         $ra, 0xB8($sp)
/* 47800 80057000 00000000 */  nop
/* 47804 80057004 0800E003 */  jr         $ra
/* 47808 80057008 C000BD27 */   addiu     $sp, $sp, 0xC0
.size Check8dot3, . - Check8dot3
