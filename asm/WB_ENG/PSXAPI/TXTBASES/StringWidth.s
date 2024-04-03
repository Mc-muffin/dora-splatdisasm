.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StringWidth
/* 49564 80058D64 21288000 */  addu       $a1, $a0, $zero
/* 49568 80058D68 0000A290 */  lbu        $v0, 0x0($a1)
/* 4956C 80058D6C 00000000 */  nop
/* 49570 80058D70 12004010 */  beqz       $v0, .L80058DBC
/* 49574 80058D74 21300000 */   addu      $a2, $zero, $zero
/* 49578 80058D78 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 4957C 80058D7C 8810848F */  lw         $a0, %gp_rel(gppTextFonts)($gp)
/* 49580 80058D80 80100200 */  sll        $v0, $v0, 2
/* 49584 80058D84 21104400 */  addu       $v0, $v0, $a0
/* 49588 80058D88 0000438C */  lw         $v1, 0x0($v0)
/* 4958C 80058D8C 00000000 */  nop
/* 49590 80058D90 20006724 */  addiu      $a3, $v1, 0x20
/* 49594 80058D94 1800648C */  lw         $a0, 0x18($v1)
/* 49598 80058D98 0000A290 */  lbu        $v0, 0x0($a1)
.L80058D9C:
/* 4959C 80058D9C 0100A524 */  addiu      $a1, $a1, 0x1
/* 495A0 80058DA0 80100200 */  sll        $v0, $v0, 2
/* 495A4 80058DA4 2110E200 */  addu       $v0, $a3, $v0
/* 495A8 80058DA8 00004390 */  lbu        $v1, 0x0($v0)
/* 495AC 80058DAC 0000A290 */  lbu        $v0, 0x0($a1)
/* 495B0 80058DB0 21186400 */  addu       $v1, $v1, $a0
/* 495B4 80058DB4 F9FF4014 */  bnez       $v0, .L80058D9C
/* 495B8 80058DB8 2130C300 */   addu      $a2, $a2, $v1
.L80058DBC:
/* 495BC 80058DBC 0800E003 */  jr         $ra
/* 495C0 80058DC0 2110C000 */   addu      $v0, $a2, $zero
.size StringWidth, . - StringWidth
