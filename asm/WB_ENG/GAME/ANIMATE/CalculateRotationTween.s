.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalculateRotationTween
/* 295A0 80038DA0 00240400 */  sll        $a0, $a0, 16
/* 295A4 80038DA4 03240400 */  sra        $a0, $a0, 16
/* 295A8 80038DA8 002C0500 */  sll        $a1, $a1, 16
/* 295AC 80038DAC 032C0500 */  sra        $a1, $a1, 16
/* 295B0 80038DB0 23188500 */  subu       $v1, $a0, $a1
/* 295B4 80038DB4 03006104 */  bgez       $v1, .L80038DC4
/* 295B8 80038DB8 00086228 */   slti      $v0, $v1, 0x800
/* 295BC 80038DBC 2318A400 */  subu       $v1, $a1, $a0
/* 295C0 80038DC0 00086228 */  slti       $v0, $v1, 0x800
.L80038DC4:
/* 295C4 80038DC4 04004014 */  bnez       $v0, .L80038DD8
/* 295C8 80038DC8 2110A300 */   addu      $v0, $a1, $v1
/* 295CC 80038DCC 00100224 */  addiu      $v0, $zero, 0x1000
/* 295D0 80038DD0 23184300 */  subu       $v1, $v0, $v1
/* 295D4 80038DD4 2110A300 */  addu       $v0, $a1, $v1
.L80038DD8:
/* 295D8 80038DD8 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 295DC 80038DDC 05004414 */  bne        $v0, $a0, .L80038DF4
/* 295E0 80038DE0 18006600 */   mult      $v1, $a2
/* 295E4 80038DE4 12100000 */  mflo       $v0
/* 295E8 80038DE8 031A0200 */  sra        $v1, $v0, 8
/* 295EC 80038DEC 80E30008 */  j          .L80038E00
/* 295F0 80038DF0 21186500 */   addu      $v1, $v1, $a1
.L80038DF4:
/* 295F4 80038DF4 12100000 */  mflo       $v0
/* 295F8 80038DF8 031A0200 */  sra        $v1, $v0, 8
/* 295FC 80038DFC 2318A300 */  subu       $v1, $a1, $v1
.L80038E00:
/* 29600 80038E00 0800E003 */  jr         $ra
/* 29604 80038E04 FF0F6230 */   andi      $v0, $v1, 0xFFF
.size CalculateRotationTween, . - CalculateRotationTween
