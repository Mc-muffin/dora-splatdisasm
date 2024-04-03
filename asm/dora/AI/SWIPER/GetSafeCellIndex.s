.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSafeCellIndex
/* 27150 80036950 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 27154 80036954 21108000 */  addu       $v0, $a0, $zero
/* 27158 80036958 1000BFAF */  sw         $ra, 0x10($sp)
/* 2715C 8003695C 0000448C */  lw         $a0, 0x0($v0)
/* 27160 80036960 0400458C */  lw         $a1, 0x4($v0)
/* 27164 80036964 0800468C */  lw         $a2, 0x8($v0)
/* 27168 80036968 C3210400 */  sra        $a0, $a0, 7
/* 2716C 8003696C C3290500 */  sra        $a1, $a1, 7
/* 27170 80036970 1694010C */  jal        GetCelIndex
/* 27174 80036974 C3310600 */   sra       $a2, $a2, 7
/* 27178 80036978 21204000 */  addu       $a0, $v0, $zero
/* 2717C 8003697C FF038330 */  andi       $v1, $a0, 0x3FF
/* 27180 80036980 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 27184 80036984 03006214 */  bne        $v1, $v0, .L80036994
/* 27188 80036988 00088230 */   andi      $v0, $a0, 0x800
/* 2718C 8003698C 76DA0008 */  j          .L800369D8
/* 27190 80036990 01000224 */   addiu     $v0, $zero, 0x1
.L80036994:
/* 27194 80036994 10004014 */  bnez       $v0, .L800369D8
/* 27198 80036998 21100000 */   addu      $v0, $zero, $zero
/* 2719C 8003699C 80100300 */  sll        $v0, $v1, 2
/* 271A0 800369A0 21104300 */  addu       $v0, $v0, $v1
/* 271A4 800369A4 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 271A8 800369A8 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 271AC 800369AC C0100200 */  sll        $v0, $v0, 3
/* 271B0 800369B0 21186200 */  addu       $v1, $v1, $v0
/* 271B4 800369B4 0800638C */  lw         $v1, 0x8($v1)
/* 271B8 800369B8 0004023C */  lui        $v0, (0x4000000 >> 16)
/* 271BC 800369BC 24106200 */  and        $v0, $v1, $v0
/* 271C0 800369C0 05004014 */  bnez       $v0, .L800369D8
/* 271C4 800369C4 21100000 */   addu      $v0, $zero, $zero
/* 271C8 800369C8 00016230 */  andi       $v0, $v1, 0x100
/* 271CC 800369CC 02004010 */  beqz       $v0, .L800369D8
/* 271D0 800369D0 00000000 */   nop
/* 271D4 800369D4 01000224 */  addiu      $v0, $zero, 0x1
.L800369D8:
/* 271D8 800369D8 1000BF8F */  lw         $ra, 0x10($sp)
/* 271DC 800369DC 00000000 */  nop
/* 271E0 800369E0 0800E003 */  jr         $ra
/* 271E4 800369E4 1800BD27 */   addiu     $sp, $sp, 0x18
.size GetSafeCellIndex, . - GetSafeCellIndex
