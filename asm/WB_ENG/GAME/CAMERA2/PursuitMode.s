.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PursuitMode
/* 2B56C 8003AD6C 9014898F */  lw         $t1, %gp_rel(currentCamera)($gp)
/* 2B570 8003AD70 00000000 */  nop
/* 2B574 8003AD74 96002291 */  lbu        $v0, 0x96($t1)
/* 2B578 8003AD78 02002A95 */  lhu        $t2, 0x2($t1)
/* 2B57C 8003AD7C 1C004014 */  bnez       $v0, .L8003ADF0
/* 2B580 8003AD80 00000000 */   nop
/* 2B584 8003AD84 0800248D */  lw         $a0, 0x8($t1)
/* 2B588 8003AD88 1400228D */  lw         $v0, 0x14($t1)
/* 2B58C 8003AD8C 3800288D */  lw         $t0, 0x38($t1)
/* 2B590 8003AD90 0C00238D */  lw         $v1, 0xC($t1)
/* 2B594 8003AD94 3C00278D */  lw         $a3, 0x3C($t1)
/* 2B598 8003AD98 1C00258D */  lw         $a1, 0x1C($t1)
/* 2B59C 8003AD9C 4000268D */  lw         $a2, 0x40($t1)
/* 2B5A0 8003ADA0 21208200 */  addu       $a0, $a0, $v0
/* 2B5A4 8003ADA4 23208800 */  subu       $a0, $a0, $t0
/* 2B5A8 8003ADA8 07204401 */  srav       $a0, $a0, $t2
/* 2B5AC 8003ADAC 1800228D */  lw         $v0, 0x18($t1)
/* 2B5B0 8003ADB0 21400401 */  addu       $t0, $t0, $a0
/* 2B5B4 8003ADB4 680024AD */  sw         $a0, 0x68($t1)
/* 2B5B8 8003ADB8 380028AD */  sw         $t0, 0x38($t1)
/* 2B5BC 8003ADBC 21186200 */  addu       $v1, $v1, $v0
/* 2B5C0 8003ADC0 23186700 */  subu       $v1, $v1, $a3
/* 2B5C4 8003ADC4 07184301 */  srav       $v1, $v1, $t2
/* 2B5C8 8003ADC8 1000228D */  lw         $v0, 0x10($t1)
/* 2B5CC 8003ADCC 2138E300 */  addu       $a3, $a3, $v1
/* 2B5D0 8003ADD0 6C0023AD */  sw         $v1, 0x6C($t1)
/* 2B5D4 8003ADD4 3C0027AD */  sw         $a3, 0x3C($t1)
/* 2B5D8 8003ADD8 21104500 */  addu       $v0, $v0, $a1
/* 2B5DC 8003ADDC 23104600 */  subu       $v0, $v0, $a2
/* 2B5E0 8003ADE0 07104201 */  srav       $v0, $v0, $t2
/* 2B5E4 8003ADE4 2130C200 */  addu       $a2, $a2, $v0
/* 2B5E8 8003ADE8 700022AD */  sw         $v0, 0x70($t1)
/* 2B5EC 8003ADEC 400026AD */  sw         $a2, 0x40($t1)
.L8003ADF0:
/* 2B5F0 8003ADF0 9014888F */  lw         $t0, %gp_rel(currentCamera)($gp)
/* 2B5F4 8003ADF4 00000000 */  nop
/* 2B5F8 8003ADF8 95000291 */  lbu        $v0, 0x95($t0)
/* 2B5FC 8003ADFC 00000000 */  nop
/* 2B600 8003AE00 16004014 */  bnez       $v0, .L8003AE5C
/* 2B604 8003AE04 00000000 */   nop
/* 2B608 8003AE08 2000048D */  lw         $a0, 0x20($t0)
/* 2B60C 8003AE0C 2C00078D */  lw         $a3, 0x2C($t0)
/* 2B610 8003AE10 2400038D */  lw         $v1, 0x24($t0)
/* 2B614 8003AE14 3000068D */  lw         $a2, 0x30($t0)
/* 2B618 8003AE18 2800028D */  lw         $v0, 0x28($t0)
/* 2B61C 8003AE1C 3400058D */  lw         $a1, 0x34($t0)
/* 2B620 8003AE20 23208700 */  subu       $a0, $a0, $a3
/* 2B624 8003AE24 07204401 */  srav       $a0, $a0, $t2
/* 2B628 8003AE28 23186600 */  subu       $v1, $v1, $a2
/* 2B62C 8003AE2C 07184301 */  srav       $v1, $v1, $t2
/* 2B630 8003AE30 23104500 */  subu       $v0, $v0, $a1
/* 2B634 8003AE34 07104201 */  srav       $v0, $v0, $t2
/* 2B638 8003AE38 2138E400 */  addu       $a3, $a3, $a0
/* 2B63C 8003AE3C 2130C300 */  addu       $a2, $a2, $v1
/* 2B640 8003AE40 2128A200 */  addu       $a1, $a1, $v0
/* 2B644 8003AE44 5C0004AD */  sw         $a0, 0x5C($t0)
/* 2B648 8003AE48 600003AD */  sw         $v1, 0x60($t0)
/* 2B64C 8003AE4C 640002AD */  sw         $v0, 0x64($t0)
/* 2B650 8003AE50 2C0007AD */  sw         $a3, 0x2C($t0)
/* 2B654 8003AE54 300006AD */  sw         $a2, 0x30($t0)
/* 2B658 8003AE58 340005AD */  sw         $a1, 0x34($t0)
.L8003AE5C:
/* 2B65C 8003AE5C 0800E003 */  jr         $ra
/* 2B660 8003AE60 00000000 */   nop
.size PursuitMode, . - PursuitMode
