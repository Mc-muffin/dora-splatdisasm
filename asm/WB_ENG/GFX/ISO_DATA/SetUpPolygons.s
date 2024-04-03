.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetUpPolygons
/* 3D4F4 8004CCF4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3D4F8 8004CCF8 2000B2AF */  sw         $s2, 0x20($sp)
/* 3D4FC 8004CCFC 21908000 */  addu       $s2, $a0, $zero
/* 3D500 8004CD00 2400BFAF */  sw         $ra, 0x24($sp)
/* 3D504 8004CD04 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3D508 8004CD08 1800B0AF */  sw         $s0, 0x18($sp)
/* 3D50C 8004CD0C 3800428E */  lw         $v0, 0x38($s2)
/* 3D510 8004CD10 0800508E */  lw         $s0, 0x8($s2)
/* 3D514 8004CD14 C0180200 */  sll        $v1, $v0, 3
/* 3D518 8004CD18 23186200 */  subu       $v1, $v1, $v0
/* 3D51C 8004CD1C 80180300 */  sll        $v1, $v1, 2
/* 3D520 8004CD20 21880302 */  addu       $s1, $s0, $v1
/* 3D524 8004CD24 2B101102 */  sltu       $v0, $s0, $s1
/* 3D528 8004CD28 07004010 */  beqz       $v0, .L8004CD48
/* 3D52C 8004CD2C 00000000 */   nop
.L8004CD30:
/* 3D530 8004CD30 D3E6010C */  jal        SetPolyF3
/* 3D534 8004CD34 21200002 */   addu      $a0, $s0, $zero
/* 3D538 8004CD38 1C001026 */  addiu      $s0, $s0, 0x1C
/* 3D53C 8004CD3C 2B101102 */  sltu       $v0, $s0, $s1
/* 3D540 8004CD40 FBFF4014 */  bnez       $v0, .L8004CD30
/* 3D544 8004CD44 00000000 */   nop
.L8004CD48:
/* 3D548 8004CD48 3C00428E */  lw         $v0, 0x3C($s2)
/* 3D54C 8004CD4C 0C00508E */  lw         $s0, 0xC($s2)
/* 3D550 8004CD50 40110200 */  sll        $v0, $v0, 5
/* 3D554 8004CD54 21880202 */  addu       $s1, $s0, $v0
/* 3D558 8004CD58 2B181102 */  sltu       $v1, $s0, $s1
/* 3D55C 8004CD5C 07006010 */  beqz       $v1, .L8004CD7C
/* 3D560 8004CD60 00000000 */   nop
.L8004CD64:
/* 3D564 8004CD64 F3E6010C */  jal        SetPolyF4
/* 3D568 8004CD68 21200002 */   addu      $a0, $s0, $zero
/* 3D56C 8004CD6C 20001026 */  addiu      $s0, $s0, 0x20
/* 3D570 8004CD70 2B101102 */  sltu       $v0, $s0, $s1
/* 3D574 8004CD74 FBFF4014 */  bnez       $v0, .L8004CD64
/* 3D578 8004CD78 00000000 */   nop
.L8004CD7C:
/* 3D57C 8004CD7C 4800428E */  lw         $v0, 0x48($s2)
/* 3D580 8004CD80 1800508E */  lw         $s0, 0x18($s2)
/* 3D584 8004CD84 80180200 */  sll        $v1, $v0, 2
/* 3D588 8004CD88 21186200 */  addu       $v1, $v1, $v0
/* 3D58C 8004CD8C C0180300 */  sll        $v1, $v1, 3
/* 3D590 8004CD90 21880302 */  addu       $s1, $s0, $v1
/* 3D594 8004CD94 2B101102 */  sltu       $v0, $s0, $s1
/* 3D598 8004CD98 07004010 */  beqz       $v0, .L8004CDB8
/* 3D59C 8004CD9C 00000000 */   nop
.L8004CDA0:
/* 3D5A0 8004CDA0 DBE6010C */  jal        SetPolyFT3
/* 3D5A4 8004CDA4 21200002 */   addu      $a0, $s0, $zero
/* 3D5A8 8004CDA8 28001026 */  addiu      $s0, $s0, 0x28
/* 3D5AC 8004CDAC 2B101102 */  sltu       $v0, $s0, $s1
/* 3D5B0 8004CDB0 FBFF4014 */  bnez       $v0, .L8004CDA0
/* 3D5B4 8004CDB4 00000000 */   nop
.L8004CDB8:
/* 3D5B8 8004CDB8 4C00428E */  lw         $v0, 0x4C($s2)
/* 3D5BC 8004CDBC 1C00508E */  lw         $s0, 0x1C($s2)
/* 3D5C0 8004CDC0 40180200 */  sll        $v1, $v0, 1
/* 3D5C4 8004CDC4 21186200 */  addu       $v1, $v1, $v0
/* 3D5C8 8004CDC8 80180300 */  sll        $v1, $v1, 2
/* 3D5CC 8004CDCC 21186200 */  addu       $v1, $v1, $v0
/* 3D5D0 8004CDD0 80180300 */  sll        $v1, $v1, 2
/* 3D5D4 8004CDD4 21880302 */  addu       $s1, $s0, $v1
/* 3D5D8 8004CDD8 2B101102 */  sltu       $v0, $s0, $s1
/* 3D5DC 8004CDDC 07004010 */  beqz       $v0, .L8004CDFC
/* 3D5E0 8004CDE0 00000000 */   nop
.L8004CDE4:
/* 3D5E4 8004CDE4 FBE6010C */  jal        SetPolyFT4
/* 3D5E8 8004CDE8 21200002 */   addu      $a0, $s0, $zero
/* 3D5EC 8004CDEC 34001026 */  addiu      $s0, $s0, 0x34
/* 3D5F0 8004CDF0 2B101102 */  sltu       $v0, $s0, $s1
/* 3D5F4 8004CDF4 FBFF4014 */  bnez       $v0, .L8004CDE4
/* 3D5F8 8004CDF8 00000000 */   nop
.L8004CDFC:
/* 3D5FC 8004CDFC 4000428E */  lw         $v0, 0x40($s2)
/* 3D600 8004CE00 1000508E */  lw         $s0, 0x10($s2)
/* 3D604 8004CE04 C0180200 */  sll        $v1, $v0, 3
/* 3D608 8004CE08 21186200 */  addu       $v1, $v1, $v0
/* 3D60C 8004CE0C 80180300 */  sll        $v1, $v1, 2
/* 3D610 8004CE10 21880302 */  addu       $s1, $s0, $v1
/* 3D614 8004CE14 2B101102 */  sltu       $v0, $s0, $s1
/* 3D618 8004CE18 07004010 */  beqz       $v0, .L8004CE38
/* 3D61C 8004CE1C 00000000 */   nop
.L8004CE20:
/* 3D620 8004CE20 E3E6010C */  jal        SetPolyG3
/* 3D624 8004CE24 21200002 */   addu      $a0, $s0, $zero
/* 3D628 8004CE28 24001026 */  addiu      $s0, $s0, 0x24
/* 3D62C 8004CE2C 2B101102 */  sltu       $v0, $s0, $s1
/* 3D630 8004CE30 FBFF4014 */  bnez       $v0, .L8004CE20
/* 3D634 8004CE34 00000000 */   nop
.L8004CE38:
/* 3D638 8004CE38 4400428E */  lw         $v0, 0x44($s2)
/* 3D63C 8004CE3C 1400508E */  lw         $s0, 0x14($s2)
/* 3D640 8004CE40 40180200 */  sll        $v1, $v0, 1
/* 3D644 8004CE44 21186200 */  addu       $v1, $v1, $v0
/* 3D648 8004CE48 80180300 */  sll        $v1, $v1, 2
/* 3D64C 8004CE4C 23186200 */  subu       $v1, $v1, $v0
/* 3D650 8004CE50 80180300 */  sll        $v1, $v1, 2
/* 3D654 8004CE54 21880302 */  addu       $s1, $s0, $v1
/* 3D658 8004CE58 2B101102 */  sltu       $v0, $s0, $s1
/* 3D65C 8004CE5C 07004010 */  beqz       $v0, .L8004CE7C
/* 3D660 8004CE60 00000000 */   nop
.L8004CE64:
/* 3D664 8004CE64 03E7010C */  jal        SetPolyG4
/* 3D668 8004CE68 21200002 */   addu      $a0, $s0, $zero
/* 3D66C 8004CE6C 2C001026 */  addiu      $s0, $s0, 0x2C
/* 3D670 8004CE70 2B101102 */  sltu       $v0, $s0, $s1
/* 3D674 8004CE74 FBFF4014 */  bnez       $v0, .L8004CE64
/* 3D678 8004CE78 00000000 */   nop
.L8004CE7C:
/* 3D67C 8004CE7C 5000428E */  lw         $v0, 0x50($s2)
/* 3D680 8004CE80 2000508E */  lw         $s0, 0x20($s2)
/* 3D684 8004CE84 40180200 */  sll        $v1, $v0, 1
/* 3D688 8004CE88 21186200 */  addu       $v1, $v1, $v0
/* 3D68C 8004CE8C 00190300 */  sll        $v1, $v1, 4
/* 3D690 8004CE90 21880302 */  addu       $s1, $s0, $v1
/* 3D694 8004CE94 2B101102 */  sltu       $v0, $s0, $s1
/* 3D698 8004CE98 07004010 */  beqz       $v0, .L8004CEB8
/* 3D69C 8004CE9C 00000000 */   nop
.L8004CEA0:
/* 3D6A0 8004CEA0 EBE6010C */  jal        SetPolyGT3
/* 3D6A4 8004CEA4 21200002 */   addu      $a0, $s0, $zero
/* 3D6A8 8004CEA8 30001026 */  addiu      $s0, $s0, 0x30
/* 3D6AC 8004CEAC 2B101102 */  sltu       $v0, $s0, $s1
/* 3D6B0 8004CEB0 FBFF4014 */  bnez       $v0, .L8004CEA0
/* 3D6B4 8004CEB4 00000000 */   nop
.L8004CEB8:
/* 3D6B8 8004CEB8 5400428E */  lw         $v0, 0x54($s2)
/* 3D6BC 8004CEBC 2400508E */  lw         $s0, 0x24($s2)
/* 3D6C0 8004CEC0 80110200 */  sll        $v0, $v0, 6
/* 3D6C4 8004CEC4 21880202 */  addu       $s1, $s0, $v0
/* 3D6C8 8004CEC8 2B181102 */  sltu       $v1, $s0, $s1
/* 3D6CC 8004CECC 07006010 */  beqz       $v1, .L8004CEEC
/* 3D6D0 8004CED0 00000000 */   nop
.L8004CED4:
/* 3D6D4 8004CED4 0BE7010C */  jal        SetPolyGT4
/* 3D6D8 8004CED8 21200002 */   addu      $a0, $s0, $zero
/* 3D6DC 8004CEDC 40001026 */  addiu      $s0, $s0, 0x40
/* 3D6E0 8004CEE0 2B101102 */  sltu       $v0, $s0, $s1
/* 3D6E4 8004CEE4 FBFF4014 */  bnez       $v0, .L8004CED4
/* 3D6E8 8004CEE8 00000000 */   nop
.L8004CEEC:
/* 3D6EC 8004CEEC 2400BF8F */  lw         $ra, 0x24($sp)
/* 3D6F0 8004CEF0 2000B28F */  lw         $s2, 0x20($sp)
/* 3D6F4 8004CEF4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3D6F8 8004CEF8 1800B08F */  lw         $s0, 0x18($sp)
/* 3D6FC 8004CEFC 0800E003 */  jr         $ra
/* 3D700 8004CF00 2800BD27 */   addiu     $sp, $sp, 0x28
.size SetUpPolygons, . - SetUpPolygons
