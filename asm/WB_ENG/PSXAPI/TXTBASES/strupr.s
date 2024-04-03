.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strupr
/* 498A8 800590A8 00008390 */  lbu        $v1, 0x0($a0)
/* 498AC 800590AC 00000000 */  nop
/* 498B0 800590B0 0A006010 */  beqz       $v1, .L800590DC
/* 498B4 800590B4 9FFF6224 */   addiu     $v0, $v1, -0x61
.L800590B8:
/* 498B8 800590B8 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 498BC 800590BC 02004010 */  beqz       $v0, .L800590C8
/* 498C0 800590C0 E0FF6224 */   addiu     $v0, $v1, -0x20
/* 498C4 800590C4 000082A0 */  sb         $v0, 0x0($a0)
.L800590C8:
/* 498C8 800590C8 01008424 */  addiu      $a0, $a0, 0x1
/* 498CC 800590CC 00008390 */  lbu        $v1, 0x0($a0)
/* 498D0 800590D0 00000000 */  nop
/* 498D4 800590D4 F8FF6014 */  bnez       $v1, .L800590B8
/* 498D8 800590D8 9FFF6224 */   addiu     $v0, $v1, -0x61
.L800590DC:
/* 498DC 800590DC 0800E003 */  jr         $ra
/* 498E0 800590E0 00000000 */   nop
.size strupr, . - strupr
