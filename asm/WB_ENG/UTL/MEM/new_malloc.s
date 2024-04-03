.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel new_malloc
/* 404AC 8004FCAC AC15858F */  lw         $a1, %gp_rel(s_endOfBSS)($gp)
/* 404B0 8004FCB0 B015828F */  lw         $v0, %gp_rel(s_endOfRAM)($gp)
/* 404B4 8004FCB4 00000000 */  nop
/* 404B8 8004FCB8 2B18A200 */  sltu       $v1, $a1, $v0
/* 404BC 8004FCBC 2150A000 */  addu       $t2, $a1, $zero
/* 404C0 8004FCC0 0B006010 */  beqz       $v1, .L8004FCF0
/* 404C4 8004FCC4 21484000 */   addu      $t1, $v0, $zero
/* 404C8 8004FCC8 21302001 */  addu       $a2, $t1, $zero
.L8004FCCC:
/* 404CC 8004FCCC 0000A28C */  lw         $v0, 0x0($a1)
/* 404D0 8004FCD0 00000000 */  nop
/* 404D4 8004FCD4 83100200 */  sra        $v0, $v0, 2
/* 404D8 8004FCD8 80100200 */  sll        $v0, $v0, 2
/* 404DC 8004FCDC 04004224 */  addiu      $v0, $v0, 0x4
/* 404E0 8004FCE0 2128A200 */  addu       $a1, $a1, $v0
/* 404E4 8004FCE4 2B18A600 */  sltu       $v1, $a1, $a2
/* 404E8 8004FCE8 F8FF6014 */  bnez       $v1, .L8004FCCC
/* 404EC 8004FCEC 00000000 */   nop
.L8004FCF0:
/* 404F0 8004FCF0 1200801C */  bgtz       $a0, .L8004FD3C
/* 404F4 8004FCF4 03008424 */   addiu     $a0, $a0, 0x3
/* 404F8 8004FCF8 0800E003 */  jr         $ra
/* 404FC 8004FCFC 21100000 */   addu      $v0, $zero, $zero
.L8004FD00:
/* 40500 8004FD00 0000C7AC */  sw         $a3, 0x0($a2)
/* 40504 8004FD04 0800E003 */  jr         $ra
/* 40508 8004FD08 0400C224 */   addiu     $v0, $a2, 0x4
.L8004FD0C:
/* 4050C 8004FD0C 2110C000 */  addu       $v0, $a2, $zero
/* 40510 8004FD10 0000C3AC */  sw         $v1, 0x0($a2)
/* 40514 8004FD14 83180300 */  sra        $v1, $v1, 2
/* 40518 8004FD18 80180300 */  sll        $v1, $v1, 2
/* 4051C 8004FD1C 04006324 */  addiu      $v1, $v1, 0x4
/* 40520 8004FD20 2130C300 */  addu       $a2, $a2, $v1
/* 40524 8004FD24 04004224 */  addiu      $v0, $v0, 0x4
/* 40528 8004FD28 FCFFE324 */  addiu      $v1, $a3, -0x4
/* 4052C 8004FD2C 23186400 */  subu       $v1, $v1, $a0
/* 40530 8004FD30 01006334 */  ori        $v1, $v1, 0x1
/* 40534 8004FD34 0800E003 */  jr         $ra
/* 40538 8004FD38 0000C3AC */   sw        $v1, 0x0($a2)
.L8004FD3C:
/* 4053C 8004FD3C 83200400 */  sra        $a0, $a0, 2
/* 40540 8004FD40 80200400 */  sll        $a0, $a0, 2
/* 40544 8004FD44 2B104901 */  sltu       $v0, $t2, $t1
/* 40548 8004FD48 15004010 */  beqz       $v0, .L8004FDA0
/* 4054C 8004FD4C 21304001 */   addu      $a2, $t2, $zero
/* 40550 8004FD50 21582001 */  addu       $t3, $t1, $zero
.L8004FD54:
/* 40554 8004FD54 0000C58C */  lw         $a1, 0x0($a2)
/* 40558 8004FD58 00000000 */  nop
/* 4055C 8004FD5C 0100A230 */  andi       $v0, $a1, 0x1
/* 40560 8004FD60 08004010 */  beqz       $v0, .L8004FD84
/* 40564 8004FD64 2118A000 */   addu      $v1, $a1, $zero
/* 40568 8004FD68 FEFF0824 */  addiu      $t0, $zero, -0x2
/* 4056C 8004FD6C 24386800 */  and        $a3, $v1, $t0
/* 40570 8004FD70 04008224 */  addiu      $v0, $a0, 0x4
/* 40574 8004FD74 E2FFE210 */  beq        $a3, $v0, .L8004FD00
/* 40578 8004FD78 2B104700 */   sltu      $v0, $v0, $a3
/* 4057C 8004FD7C E3FF4014 */  bnez       $v0, .L8004FD0C
/* 40580 8004FD80 24188800 */   and       $v1, $a0, $t0
.L8004FD84:
/* 40584 8004FD84 83100500 */  sra        $v0, $a1, 2
/* 40588 8004FD88 80100200 */  sll        $v0, $v0, 2
/* 4058C 8004FD8C 04004224 */  addiu      $v0, $v0, 0x4
/* 40590 8004FD90 2130C200 */  addu       $a2, $a2, $v0
/* 40594 8004FD94 2B18CB00 */  sltu       $v1, $a2, $t3
/* 40598 8004FD98 EEFF6014 */  bnez       $v1, .L8004FD54
/* 4059C 8004FD9C 2B104901 */   sltu      $v0, $t2, $t1
.L8004FDA0:
/* 405A0 8004FDA0 0B004010 */  beqz       $v0, .L8004FDD0
/* 405A4 8004FDA4 21204001 */   addu      $a0, $t2, $zero
/* 405A8 8004FDA8 21282001 */  addu       $a1, $t1, $zero
.L8004FDAC:
/* 405AC 8004FDAC 0000828C */  lw         $v0, 0x0($a0)
/* 405B0 8004FDB0 00000000 */  nop
/* 405B4 8004FDB4 83100200 */  sra        $v0, $v0, 2
/* 405B8 8004FDB8 80100200 */  sll        $v0, $v0, 2
/* 405BC 8004FDBC 04004224 */  addiu      $v0, $v0, 0x4
/* 405C0 8004FDC0 21208200 */  addu       $a0, $a0, $v0
/* 405C4 8004FDC4 2B188500 */  sltu       $v1, $a0, $a1
/* 405C8 8004FDC8 F8FF6014 */  bnez       $v1, .L8004FDAC
/* 405CC 8004FDCC 00000000 */   nop
.L8004FDD0:
/* 405D0 8004FDD0 21284001 */  addu       $a1, $t2, $zero
/* 405D4 8004FDD4 2B10A900 */  sltu       $v0, $a1, $t1
/* 405D8 8004FDD8 12004010 */  beqz       $v0, .L8004FE24
/* 405DC 8004FDDC 21300000 */   addu      $a2, $zero, $zero
/* 405E0 8004FDE0 21382001 */  addu       $a3, $t1, $zero
.L8004FDE4:
/* 405E4 8004FDE4 0000A28C */  lw         $v0, 0x0($a1)
/* 405E8 8004FDE8 00000000 */  nop
/* 405EC 8004FDEC 01004330 */  andi       $v1, $v0, 0x1
/* 405F0 8004FDF0 05006010 */  beqz       $v1, .L8004FE08
/* 405F4 8004FDF4 21204000 */   addu      $a0, $v0, $zero
/* 405F8 8004FDF8 2A10C400 */  slt        $v0, $a2, $a0
/* 405FC 8004FDFC 03004010 */  beqz       $v0, .L8004FE0C
/* 40600 8004FE00 83100400 */   sra       $v0, $a0, 2
/* 40604 8004FE04 21308000 */  addu       $a2, $a0, $zero
.L8004FE08:
/* 40608 8004FE08 83100400 */  sra        $v0, $a0, 2
.L8004FE0C:
/* 4060C 8004FE0C 80100200 */  sll        $v0, $v0, 2
/* 40610 8004FE10 04004224 */  addiu      $v0, $v0, 0x4
/* 40614 8004FE14 2128A200 */  addu       $a1, $a1, $v0
/* 40618 8004FE18 2B18A700 */  sltu       $v1, $a1, $a3
/* 4061C 8004FE1C F1FF6014 */  bnez       $v1, .L8004FDE4
/* 40620 8004FE20 00000000 */   nop
.L8004FE24:
/* 40624 8004FE24 0800E003 */  jr         $ra
/* 40628 8004FE28 21100000 */   addu      $v0, $zero, $zero
.size new_malloc, . - new_malloc
