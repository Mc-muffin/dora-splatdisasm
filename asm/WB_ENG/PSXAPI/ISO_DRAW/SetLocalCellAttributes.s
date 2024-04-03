.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLocalCellAttributes
/* 55EE8 800656E8 0880033C */  lui        $v1, %hi(TestWorld)
/* 55EEC 800656EC 8C65698C */  lw         $t1, %lo(TestWorld)($v1)
/* 55EF0 800656F0 C3390700 */  sra        $a3, $a3, 7
/* 55EF4 800656F4 1800E900 */  mult       $a3, $t1
/* 55EF8 800656F8 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 55EFC 800656FC 12380000 */  mflo       $a3
/* 55F00 80065700 0400628C */  lw         $v0, 0x4($v1)
/* 55F04 80065704 00000000 */  nop
/* 55F08 80065708 1800E200 */  mult       $a3, $v0
/* 55F0C 8006570C 12380000 */  mflo       $a3
/* 55F10 80065710 C3310600 */  sra        $a2, $a2, 7
/* 55F14 80065714 00000000 */  nop
/* 55F18 80065718 1800C900 */  mult       $a2, $t1
/* 55F1C 8006571C 1400688C */  lw         $t0, 0x14($v1)
/* 55F20 80065720 C3290500 */  sra        $a1, $a1, 7
/* 55F24 80065724 21480001 */  addu       $t1, $t0, $zero
/* 55F28 80065728 12300000 */  mflo       $a2
/* 55F2C 8006572C 2138E600 */  addu       $a3, $a3, $a2
/* 55F30 80065730 2138E500 */  addu       $a3, $a3, $a1
/* 55F34 80065734 40380700 */  sll        $a3, $a3, 1
/* 55F38 80065738 21400701 */  addu       $t0, $t0, $a3
/* 55F3C 8006573C 00000295 */  lhu        $v0, 0x0($t0)
/* 55F40 80065740 21482701 */  addu       $t1, $t1, $a3
/* 55F44 80065744 FF034230 */  andi       $v0, $v0, 0x3FF
/* 55F48 80065748 25104400 */  or         $v0, $v0, $a0
/* 55F4C 8006574C 0800E003 */  jr         $ra
/* 55F50 80065750 000022A5 */   sh        $v0, 0x0($t1)
.size SetLocalCellAttributes, . - SetLocalCellAttributes
