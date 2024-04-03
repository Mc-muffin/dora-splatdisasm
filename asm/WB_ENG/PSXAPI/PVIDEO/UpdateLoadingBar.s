.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateLoadingBar
/* 4B4C0 8005ACC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4B4C4 8005ACC4 0B80033C */  lui        $v1, %hi(theVPoly2)
/* 4B4C8 8005ACC8 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4B4CC 8005ACCC 20BB6324 */  addiu      $v1, $v1, %lo(theVPoly2)
/* 4B4D0 8005ACD0 1400BFAF */  sw         $ra, 0x14($sp)
/* 4B4D4 8005ACD4 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B4D8 8005ACD8 C0200200 */  sll        $a0, $v0, 3
/* 4B4DC 8005ACDC 21208200 */  addu       $a0, $a0, $v0
/* 4B4E0 8005ACE0 80200400 */  sll        $a0, $a0, 2
/* 4B4E4 8005ACE4 0B80023C */  lui        $v0, %hi(theVPoly)
/* 4B4E8 8005ACE8 78BA4224 */  addiu      $v0, $v0, %lo(theVPoly)
/* 4B4EC 8005ACEC 21288200 */  addu       $a1, $a0, $v0
/* 4B4F0 8005ACF0 21308300 */  addu       $a2, $a0, $v1
/* 4B4F4 8005ACF4 3811828F */  lw         $v0, %gp_rel(LOADING_W)($gp)
/* 4B4F8 8005ACF8 2C11838F */  lw         $v1, %gp_rel(rightEdge)($gp)
/* 4B4FC 8005ACFC 00110200 */  sll        $v0, $v0, 4
/* 4B500 8005AD00 2A106200 */  slt        $v0, $v1, $v0
/* 4B504 8005AD04 05004010 */  beqz       $v0, .L8005AD1C
/* 4B508 8005AD08 00000000 */   nop
/* 4B50C 8005AD0C 4811828F */  lw         $v0, %gp_rel(LoadBarSpeed)($gp)
/* 4B510 8005AD10 00000000 */  nop
/* 4B514 8005AD14 21106200 */  addu       $v0, $v1, $v0
/* 4B518 8005AD18 2C1182AF */  sw         $v0, %gp_rel(rightEdge)($gp)
.L8005AD1C:
/* 4B51C 8005AD1C 2C11848F */  lw         $a0, %gp_rel(rightEdge)($gp)
/* 4B520 8005AD20 30118397 */  lhu        $v1, %gp_rel(LOADING_START_X)($gp)
/* 4B524 8005AD24 21108000 */  addu       $v0, $a0, $zero
/* 4B528 8005AD28 1800A3A4 */  sh         $v1, 0x18($a1)
/* 4B52C 8005AD2C 02008104 */  bgez       $a0, .L8005AD38
/* 4B530 8005AD30 0800A3A4 */   sh        $v1, 0x8($a1)
/* 4B534 8005AD34 0F008224 */  addiu      $v0, $a0, 0xF
.L8005AD38:
/* 4B538 8005AD38 03110200 */  sra        $v0, $v0, 4
/* 4B53C 8005AD3C 21106200 */  addu       $v0, $v1, $v0
/* 4B540 8005AD40 2000A2A4 */  sh         $v0, 0x20($a1)
/* 4B544 8005AD44 1000A2A4 */  sh         $v0, 0x10($a1)
/* 4B548 8005AD48 2000C2A4 */  sh         $v0, 0x20($a2)
/* 4B54C 8005AD4C 1000C2A4 */  sh         $v0, 0x10($a2)
/* 4B550 8005AD50 0B80023C */  lui        $v0, %hi(g_nt3 + 0x10)
/* 4B554 8005AD54 48774424 */  addiu      $a0, $v0, %lo(g_nt3 + 0x10)
/* 4B558 8005AD58 4877438C */  lw         $v1, %lo(g_nt3 + 0x10)($v0)
/* 4B55C 8005AD5C 00000000 */  nop
/* 4B560 8005AD60 09006010 */  beqz       $v1, .L8005AD88
/* 4B564 8005AD64 21804000 */   addu      $s0, $v0, $zero
/* 4B568 8005AD68 02008388 */  lwl        $v1, 0x2($a0)
/* 4B56C 8005AD6C 4877028E */  lw         $v0, %lo(g_nt3 + 0x10)($s0)
/* 4B570 8005AD70 00000000 */  nop
/* 4B574 8005AD74 00120200 */  sll        $v0, $v0, 8
/* 4B578 8005AD78 0200A2A8 */  swl        $v0, 0x2($a1)
/* 4B57C 8005AD7C 0200A3A8 */  swl        $v1, 0x2($a1)
/* 4B580 8005AD80 646B0108 */  j          .L8005AD90
/* 4B584 8005AD84 487705AE */   sw        $a1, %lo(g_nt3 + 0x10)($s0)
.L8005AD88:
/* 4B588 8005AD88 040085AC */  sw         $a1, 0x4($a0)
/* 4B58C 8005AD8C 487705AE */  sw         $a1, %lo(g_nt3 + 0x10)($s0)
.L8005AD90:
/* 4B590 8005AD90 0900A010 */  beqz       $a1, .L8005ADB8
/* 4B594 8005AD94 48770226 */   addiu     $v0, $s0, %lo(g_nt3 + 0x10)
/* 4B598 8005AD98 02004388 */  lwl        $v1, 0x2($v0)
/* 4B59C 8005AD9C 4877028E */  lw         $v0, %lo(g_nt3 + 0x10)($s0)
/* 4B5A0 8005ADA0 00000000 */  nop
/* 4B5A4 8005ADA4 00120200 */  sll        $v0, $v0, 8
/* 4B5A8 8005ADA8 0200C2A8 */  swl        $v0, 0x2($a2)
/* 4B5AC 8005ADAC 0200C3A8 */  swl        $v1, 0x2($a2)
/* 4B5B0 8005ADB0 706B0108 */  j          .L8005ADC0
/* 4B5B4 8005ADB4 0B80043C */   lui       $a0, %hi(g_nt)
.L8005ADB8:
/* 4B5B8 8005ADB8 040046AC */  sw         $a2, 0x4($v0)
/* 4B5BC 8005ADBC 0B80043C */  lui        $a0, %hi(g_nt)
.L8005ADC0:
/* 4B5C0 8005ADC0 68BB8424 */  addiu      $a0, $a0, %lo(g_nt)
/* 4B5C4 8005ADC4 88130524 */  addiu      $a1, $zero, 0x1388
/* 4B5C8 8005ADC8 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* 4B5CC 8005ADCC E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B5D0 8005ADD0 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* 4B5D4 8005ADD4 487706AE */  sw         $a2, %lo(g_nt3 + 0x10)($s0)
/* 4B5D8 8005ADD8 48771026 */  addiu      $s0, $s0, %lo(g_nt3 + 0x10)
/* 4B5DC 8005ADDC C0190300 */  sll        $v1, $v1, 7
/* 4B5E0 8005ADE0 21186200 */  addu       $v1, $v1, $v0
/* 4B5E4 8005ADE4 E81683AF */  sw         $v1, %gp_rel(cdb)($gp)
/* 4B5E8 8005ADE8 C22A010C */  jal        UnlinkNTagR
/* 4B5EC 8005ADEC 70006624 */   addiu     $a2, $v1, 0x70
/* 4B5F0 8005ADF0 0B80043C */  lui        $a0, %hi(g_nt2)
/* 4B5F4 8005ADF4 A8578424 */  addiu      $a0, $a0, %lo(g_nt2)
/* 4B5F8 8005ADF8 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4B5FC 8005ADFC F810858F */  lw         $a1, %gp_rel(g_ot2_size)($gp)
/* 4B600 8005AE00 C22A010C */  jal        UnlinkNTagR
/* 4B604 8005AE04 7400C624 */   addiu     $a2, $a2, 0x74
/* 4B608 8005AE08 F0FF0426 */  addiu      $a0, $s0, -0x10
/* 4B60C 8005AE0C E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4B610 8005AE10 00040524 */  addiu      $a1, $zero, 0x400
/* 4B614 8005AE14 C22A010C */  jal        UnlinkNTagR
/* 4B618 8005AE18 7800C624 */   addiu     $a2, $a2, 0x78
/* 4B61C 8005AE1C 57DA010C */  jal        ResetGraph
/* 4B620 8005AE20 01000424 */   addiu     $a0, $zero, 0x1
.L8005AE24:
/* 4B624 8005AE24 36DB010C */  jal        DrawSync
/* 4B628 8005AE28 01000424 */   addiu     $a0, $zero, 0x1
/* 4B62C 8005AE2C FDFF4014 */  bnez       $v0, .L8005AE24
/* 4B630 8005AE30 0B80103C */   lui       $s0, %hi(gDoubleBuffer + 0x5C)
/* 4B634 8005AE34 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4B638 8005AE38 D4B91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer + 0x5C)
/* 4B63C 8005AE3C C0210400 */  sll        $a0, $a0, 7
/* 4B640 8005AE40 42DD010C */  jal        PutDispEnv
/* 4B644 8005AE44 21209000 */   addu      $a0, $a0, $s0
/* 4B648 8005AE48 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4B64C 8005AE4C A4FF1026 */  addiu      $s0, $s0, -0x5C
/* 4B650 8005AE50 C0210400 */  sll        $a0, $a0, 7
/* 4B654 8005AE54 CFDC010C */  jal        PutDrawEnv
/* 4B658 8005AE58 21209000 */   addu      $a0, $a0, $s0
/* 4B65C 8005AE5C E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B660 8005AE60 B3DC010C */  jal        DrawOTag
/* 4B664 8005AE64 74008424 */   addiu     $a0, $a0, 0x74
/* 4B668 8005AE68 E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B66C 8005AE6C B3DC010C */  jal        DrawOTag
/* 4B670 8005AE70 70008424 */   addiu     $a0, $a0, 0x70
/* 4B674 8005AE74 E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B678 8005AE78 B3DC010C */  jal        DrawOTag
/* 4B67C 8005AE7C 78008424 */   addiu     $a0, $a0, 0x78
/* 4B680 8005AE80 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4B684 8005AE84 1400BF8F */  lw         $ra, 0x14($sp)
/* 4B688 8005AE88 01004238 */  xori       $v0, $v0, 0x1
/* 4B68C 8005AE8C E41082AF */  sw         $v0, %gp_rel(ot_ndx)($gp)
/* 4B690 8005AE90 C0110200 */  sll        $v0, $v0, 7
/* 4B694 8005AE94 21105000 */  addu       $v0, $v0, $s0
/* 4B698 8005AE98 1000B08F */  lw         $s0, 0x10($sp)
/* 4B69C 8005AE9C E81682AF */  sw         $v0, %gp_rel(cdb)($gp)
/* 4B6A0 8005AEA0 0800E003 */  jr         $ra
/* 4B6A4 8005AEA4 1800BD27 */   addiu     $sp, $sp, 0x18
.size UpdateLoadingBar, . - UpdateLoadingBar
