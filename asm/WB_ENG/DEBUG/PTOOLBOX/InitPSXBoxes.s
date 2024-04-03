.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitPSXBoxes
/* 414E4 80050CE4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 414E8 80050CE8 04000524 */  addiu      $a1, $zero, 0x4
/* 414EC 80050CEC 00E1033C */  lui        $v1, (0xE1000200 >> 16)
/* 414F0 80050CF0 00026334 */  ori        $v1, $v1, (0xE1000200 & 0xFFFF)
/* 414F4 80050CF4 60000424 */  addiu      $a0, $zero, 0x60
/* 414F8 80050CF8 0A80023C */  lui        $v0, %hi(Boxes)
/* 414FC 80050CFC 38774224 */  addiu      $v0, $v0, %lo(Boxes)
/* 41500 80050D00 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 41504 80050D04 04001324 */  addiu      $s3, $zero, 0x4
/* 41508 80050D08 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 4150C 80050D0C 2800B6AF */  sw         $s6, 0x28($sp)
/* 41510 80050D10 2400B5AF */  sw         $s5, 0x24($sp)
/* 41514 80050D14 2000B4AF */  sw         $s4, 0x20($sp)
/* 41518 80050D18 1800B2AF */  sw         $s2, 0x18($sp)
/* 4151C 80050D1C 1400B1AF */  sw         $s1, 0x14($sp)
/* 41520 80050D20 1000B0AF */  sw         $s0, 0x10($sp)
.L80050D24:
/* 41524 80050D24 030045A0 */  sb         $a1, 0x3($v0)
/* 41528 80050D28 040043AC */  sw         $v1, 0x4($v0)
/* 4152C 80050D2C 0B0044A0 */  sb         $a0, 0xB($v0)
/* 41530 80050D30 170045A0 */  sb         $a1, 0x17($v0)
/* 41534 80050D34 180043AC */  sw         $v1, 0x18($v0)
/* 41538 80050D38 1F0044A0 */  sb         $a0, 0x1F($v0)
/* 4153C 80050D3C FFFF7326 */  addiu      $s3, $s3, -0x1
/* 41540 80050D40 F8FF6106 */  bgez       $s3, .L80050D24
/* 41544 80050D44 30004224 */   addiu     $v0, $v0, 0x30
/* 41548 80050D48 0A80023C */  lui        $v0, %hi(Borders)
/* 4154C 80050D4C 28785224 */  addiu      $s2, $v0, %lo(Borders)
/* 41550 80050D50 70015626 */  addiu      $s6, $s2, 0x170
/* 41554 80050D54 60015526 */  addiu      $s5, $s2, 0x160
/* 41558 80050D58 21A04002 */  addu       $s4, $s2, $zero
/* 4155C 80050D5C 21880000 */  addu       $s1, $zero, $zero
/* 41560 80050D60 04001324 */  addiu      $s3, $zero, 0x4
.L80050D64:
/* 41564 80050D64 1BE7010C */  jal        SetLineF2
/* 41568 80050D68 21208002 */   addu      $a0, $s4, $zero
/* 4156C 80050D6C 10004426 */  addiu      $a0, $s2, 0x10
/* 41570 80050D70 1BE7010C */  jal        SetLineF2
/* 41574 80050D74 21202402 */   addu      $a0, $s1, $a0
/* 41578 80050D78 20005026 */  addiu      $s0, $s2, 0x20
/* 4157C 80050D7C 21803002 */  addu       $s0, $s1, $s0
/* 41580 80050D80 1BE7010C */  jal        SetLineF2
/* 41584 80050D84 21200002 */   addu      $a0, $s0, $zero
/* 41588 80050D88 1BE7010C */  jal        SetLineF2
/* 4158C 80050D8C 10000426 */   addiu     $a0, $s0, 0x10
/* 41590 80050D90 40005026 */  addiu      $s0, $s2, 0x40
/* 41594 80050D94 21803002 */  addu       $s0, $s1, $s0
/* 41598 80050D98 1BE7010C */  jal        SetLineF2
/* 4159C 80050D9C 21200002 */   addu      $a0, $s0, $zero
/* 415A0 80050DA0 1BE7010C */  jal        SetLineF2
/* 415A4 80050DA4 10000426 */   addiu     $a0, $s0, 0x10
/* 415A8 80050DA8 60005026 */  addiu      $s0, $s2, 0x60
/* 415AC 80050DAC 21803002 */  addu       $s0, $s1, $s0
/* 415B0 80050DB0 1BE7010C */  jal        SetLineF2
/* 415B4 80050DB4 21200002 */   addu      $a0, $s0, $zero
/* 415B8 80050DB8 1BE7010C */  jal        SetLineF2
/* 415BC 80050DBC 10000426 */   addiu     $a0, $s0, 0x10
/* 415C0 80050DC0 80005026 */  addiu      $s0, $s2, 0x80
/* 415C4 80050DC4 21803002 */  addu       $s0, $s1, $s0
/* 415C8 80050DC8 1BE7010C */  jal        SetLineF2
/* 415CC 80050DCC 21200002 */   addu      $a0, $s0, $zero
/* 415D0 80050DD0 1BE7010C */  jal        SetLineF2
/* 415D4 80050DD4 10000426 */   addiu     $a0, $s0, 0x10
/* 415D8 80050DD8 A0005026 */  addiu      $s0, $s2, 0xA0
/* 415DC 80050DDC 21803002 */  addu       $s0, $s1, $s0
/* 415E0 80050DE0 1BE7010C */  jal        SetLineF2
/* 415E4 80050DE4 21200002 */   addu      $a0, $s0, $zero
/* 415E8 80050DE8 1BE7010C */  jal        SetLineF2
/* 415EC 80050DEC 10000426 */   addiu     $a0, $s0, 0x10
/* 415F0 80050DF0 C0005026 */  addiu      $s0, $s2, 0xC0
/* 415F4 80050DF4 21803002 */  addu       $s0, $s1, $s0
/* 415F8 80050DF8 1BE7010C */  jal        SetLineF2
/* 415FC 80050DFC 21200002 */   addu      $a0, $s0, $zero
/* 41600 80050E00 1BE7010C */  jal        SetLineF2
/* 41604 80050E04 10000426 */   addiu     $a0, $s0, 0x10
/* 41608 80050E08 E0005026 */  addiu      $s0, $s2, 0xE0
/* 4160C 80050E0C 21803002 */  addu       $s0, $s1, $s0
/* 41610 80050E10 1BE7010C */  jal        SetLineF2
/* 41614 80050E14 21200002 */   addu      $a0, $s0, $zero
/* 41618 80050E18 1BE7010C */  jal        SetLineF2
/* 4161C 80050E1C 10000426 */   addiu     $a0, $s0, 0x10
/* 41620 80050E20 00015026 */  addiu      $s0, $s2, 0x100
/* 41624 80050E24 21803002 */  addu       $s0, $s1, $s0
/* 41628 80050E28 1BE7010C */  jal        SetLineF2
/* 4162C 80050E2C 21200002 */   addu      $a0, $s0, $zero
/* 41630 80050E30 1BE7010C */  jal        SetLineF2
/* 41634 80050E34 10000426 */   addiu     $a0, $s0, 0x10
/* 41638 80050E38 20015026 */  addiu      $s0, $s2, 0x120
/* 4163C 80050E3C 21803002 */  addu       $s0, $s1, $s0
/* 41640 80050E40 1BE7010C */  jal        SetLineF2
/* 41644 80050E44 21200002 */   addu      $a0, $s0, $zero
/* 41648 80050E48 1BE7010C */  jal        SetLineF2
/* 4164C 80050E4C 10000426 */   addiu     $a0, $s0, 0x10
/* 41650 80050E50 40015026 */  addiu      $s0, $s2, 0x140
/* 41654 80050E54 21803002 */  addu       $s0, $s1, $s0
/* 41658 80050E58 1BE7010C */  jal        SetLineF2
/* 4165C 80050E5C 21200002 */   addu      $a0, $s0, $zero
/* 41660 80050E60 1BE7010C */  jal        SetLineF2
/* 41664 80050E64 10000426 */   addiu     $a0, $s0, 0x10
/* 41668 80050E68 1BE7010C */  jal        SetLineF2
/* 4166C 80050E6C 2120A002 */   addu      $a0, $s5, $zero
/* 41670 80050E70 1BE7010C */  jal        SetLineF2
/* 41674 80050E74 2120C002 */   addu      $a0, $s6, $zero
/* 41678 80050E78 8001D626 */  addiu      $s6, $s6, 0x180
/* 4167C 80050E7C 8001B526 */  addiu      $s5, $s5, 0x180
/* 41680 80050E80 80019426 */  addiu      $s4, $s4, 0x180
/* 41684 80050E84 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 41688 80050E88 B6FF6106 */  bgez       $s3, .L80050D64
/* 4168C 80050E8C 80013126 */   addiu     $s1, $s1, 0x180
/* 41690 80050E90 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 41694 80050E94 2800B68F */  lw         $s6, 0x28($sp)
/* 41698 80050E98 2400B58F */  lw         $s5, 0x24($sp)
/* 4169C 80050E9C 2000B48F */  lw         $s4, 0x20($sp)
/* 416A0 80050EA0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 416A4 80050EA4 1800B28F */  lw         $s2, 0x18($sp)
/* 416A8 80050EA8 1400B18F */  lw         $s1, 0x14($sp)
/* 416AC 80050EAC 1000B08F */  lw         $s0, 0x10($sp)
/* 416B0 80050EB0 A40F80AF */  sw         $zero, %gp_rel(BoxOffset)($gp)
/* 416B4 80050EB4 A80F80AF */  sw         $zero, %gp_rel(BorderOffset)($gp)
/* 416B8 80050EB8 0800E003 */  jr         $ra
/* 416BC 80050EBC 3000BD27 */   addiu     $sp, $sp, 0x30
.size InitPSXBoxes, . - InitPSXBoxes
