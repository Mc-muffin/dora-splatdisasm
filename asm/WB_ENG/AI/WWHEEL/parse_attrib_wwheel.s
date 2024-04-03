.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_wwheel
/* 37744 80046F44 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 37748 80046F48 2000BFAF */  sw         $ra, 0x20($sp)
/* 3774C 80046F4C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 37750 80046F50 1800B2AF */  sw         $s2, 0x18($sp)
/* 37754 80046F54 1400B1AF */  sw         $s1, 0x14($sp)
/* 37758 80046F58 BC42010C */  jal        pbag_init
/* 3775C 80046F5C 1000B0AF */   sw        $s0, 0x10($sp)
/* 37760 80046F60 1543010C */  jal        pbag_getptr
/* 37764 80046F64 21880000 */   addu      $s1, $zero, $zero
/* 37768 80046F68 21804000 */  addu       $s0, $v0, $zero
/* 3776C 80046F6C 0000048E */  lw         $a0, 0x0($s0)
/* 37770 80046F70 B142010C */  jal        pbag_getenum
/* 37774 80046F74 00000000 */   nop
/* 37778 80046F78 21184000 */  addu       $v1, $v0, $zero
/* 3777C 80046F7C FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 37780 80046F80 10006210 */  beq        $v1, $v0, .L80046FC4
/* 37784 80046F84 00811334 */   ori       $s3, $zero, 0x8100
/* 37788 80046F88 FFFF1234 */  ori        $s2, $zero, 0xFFFF
.L80046F8C:
/* 3778C 80046F8C 04007314 */  bne        $v1, $s3, .L80046FA0
/* 37790 80046F90 00000000 */   nop
/* 37794 80046F94 0800028E */  lw         $v0, 0x8($s0)
/* 37798 80046F98 00000000 */  nop
/* 3779C 80046F9C 0000518C */  lw         $s1, 0x0($v0)
.L80046FA0:
/* 377A0 80046FA0 E742010C */  jal        pbag_advanceONE
/* 377A4 80046FA4 00000000 */   nop
/* 377A8 80046FA8 21804000 */  addu       $s0, $v0, $zero
/* 377AC 80046FAC 0000048E */  lw         $a0, 0x0($s0)
/* 377B0 80046FB0 B142010C */  jal        pbag_getenum
/* 377B4 80046FB4 00000000 */   nop
/* 377B8 80046FB8 21184000 */  addu       $v1, $v0, $zero
/* 377BC 80046FBC F3FF7214 */  bne        $v1, $s2, .L80046F8C
/* 377C0 80046FC0 00000000 */   nop
.L80046FC4:
/* 377C4 80046FC4 21102002 */  addu       $v0, $s1, $zero
/* 377C8 80046FC8 2000BF8F */  lw         $ra, 0x20($sp)
/* 377CC 80046FCC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 377D0 80046FD0 1800B28F */  lw         $s2, 0x18($sp)
/* 377D4 80046FD4 1400B18F */  lw         $s1, 0x14($sp)
/* 377D8 80046FD8 1000B08F */  lw         $s0, 0x10($sp)
/* 377DC 80046FDC 0800E003 */  jr         $ra
/* 377E0 80046FE0 2800BD27 */   addiu     $sp, $sp, 0x28
.size parse_attrib_wwheel, . - parse_attrib_wwheel
