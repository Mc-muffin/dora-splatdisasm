.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckGridForSpace
/* 4D5F0 8005CDF0 2138A700 */  addu       $a3, $a1, $a3
/* 4D5F4 8005CDF4 2A10A700 */  slt        $v0, $a1, $a3
/* 4D5F8 8005CDF8 1D004010 */  beqz       $v0, .L8005CE70
/* 4D5FC 8005CDFC 2160E000 */   addu      $t4, $a3, $zero
/* 4D600 8005CE00 18178B8F */  lw         $t3, %gp_rel(XCnt)($gp)
/* 4D604 8005CE04 00000000 */  nop
/* 4D608 8005CE08 1800AB00 */  mult       $a1, $t3
/* 4D60C 8005CE0C 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4D610 8005CE10 38974224 */  addiu      $v0, $v0, %lo(VRAMGrid)
/* 4D614 8005CE14 12180000 */  mflo       $v1
/* 4D618 8005CE18 21186200 */  addu       $v1, $v1, $v0
.L8005CE1C:
/* 4D61C 8005CE1C 21388000 */  addu       $a3, $a0, $zero
/* 4D620 8005CE20 2140E600 */  addu       $t0, $a3, $a2
/* 4D624 8005CE24 2A10E800 */  slt        $v0, $a3, $t0
/* 4D628 8005CE28 0D004010 */  beqz       $v0, .L8005CE60
/* 4D62C 8005CE2C 00000000 */   nop
/* 4D630 8005CE30 01000A24 */  addiu      $t2, $zero, 0x1
/* 4D634 8005CE34 21480001 */  addu       $t1, $t0, $zero
/* 4D638 8005CE38 2140E300 */  addu       $t0, $a3, $v1
.L8005CE3C:
/* 4D63C 8005CE3C 00000291 */  lbu        $v0, 0x0($t0)
/* 4D640 8005CE40 00000000 */  nop
/* 4D644 8005CE44 03004A14 */  bne        $v0, $t2, .L8005CE54
/* 4D648 8005CE48 0100E724 */   addiu     $a3, $a3, 0x1
/* 4D64C 8005CE4C 0800E003 */  jr         $ra
/* 4D650 8005CE50 01000224 */   addiu     $v0, $zero, 0x1
.L8005CE54:
/* 4D654 8005CE54 2A10E900 */  slt        $v0, $a3, $t1
/* 4D658 8005CE58 F8FF4014 */  bnez       $v0, .L8005CE3C
/* 4D65C 8005CE5C 01000825 */   addiu     $t0, $t0, 0x1
.L8005CE60:
/* 4D660 8005CE60 0100A524 */  addiu      $a1, $a1, 0x1
/* 4D664 8005CE64 2A10AC00 */  slt        $v0, $a1, $t4
/* 4D668 8005CE68 ECFF4014 */  bnez       $v0, .L8005CE1C
/* 4D66C 8005CE6C 21186B00 */   addu      $v1, $v1, $t3
.L8005CE70:
/* 4D670 8005CE70 0800E003 */  jr         $ra
/* 4D674 8005CE74 21100000 */   addu      $v0, $zero, $zero
.size CheckGridForSpace, . - CheckGridForSpace
