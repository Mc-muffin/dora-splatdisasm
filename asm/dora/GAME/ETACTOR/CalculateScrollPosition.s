.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalculateScrollPosition
/* 8478 80017C78 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 847C 80017C7C 0980023C */  lui        $v0, %hi(ETActor)
/* 8480 80017C80 B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* 8484 80017C84 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 8488 80017C88 6C005324 */  addiu      $s3, $v0, 0x6C
/* 848C 80017C8C 2000BFAF */  sw         $ra, 0x20($sp)
/* 8490 80017C90 1800B2AF */  sw         $s2, 0x18($sp)
/* 8494 80017C94 1400B1AF */  sw         $s1, 0x14($sp)
/* 8498 80017C98 1000B0AF */  sw         $s0, 0x10($sp)
/* 849C 80017C9C 5400518C */  lw         $s1, 0x54($v0)
/* 84A0 80017CA0 E000928F */  lw         $s2, %gp_rel(ScrollR)($gp)
/* 84A4 80017CA4 00083126 */  addiu      $s1, $s1, 0x800
/* 84A8 80017CA8 47EB010C */  jal        rsin
/* 84AC 80017CAC 21202002 */   addu      $a0, $s1, $zero
/* 84B0 80017CB0 21202002 */  addu       $a0, $s1, $zero
/* 84B4 80017CB4 7BEB010C */  jal        rcos
/* 84B8 80017CB8 21804000 */   addu      $s0, $v0, $zero
/* 84BC 80017CBC 18005002 */  mult       $s2, $s0
/* 84C0 80017CC0 12800000 */  mflo       $s0
/* 84C4 80017CC4 00000000 */  nop
/* 84C8 80017CC8 00000000 */  nop
/* 84CC 80017CCC 18004202 */  mult       $s2, $v0
/* 84D0 80017CD0 0800668E */  lw         $a2, 0x8($s3)
/* 84D4 80017CD4 0980033C */  lui        $v1, %hi(CurrentCameraEnum)
/* 84D8 80017CD8 B04C638C */  lw         $v1, %lo(CurrentCameraEnum)($v1)
/* 84DC 80017CDC 0400628E */  lw         $v0, 0x4($s3)
/* 84E0 80017CE0 03831000 */  sra        $s0, $s0, 12
/* 84E4 80017CE4 21485000 */  addu       $t1, $v0, $s0
/* 84E8 80017CE8 0C00628E */  lw         $v0, 0xC($s3)
/* 84EC 80017CEC 12900000 */  mflo       $s2
/* 84F0 80017CF0 03931200 */  sra        $s2, $s2, 12
/* 84F4 80017CF4 0D006014 */  bnez       $v1, .L80017D2C
/* 84F8 80017CF8 21505200 */   addu      $t2, $v0, $s2
/* 84FC 80017CFC 9800628E */  lw         $v0, 0x98($s3)
/* 8500 80017D00 00000000 */  nop
/* 8504 80017D04 03004010 */  beqz       $v0, .L80017D14
/* 8508 80017D08 00000000 */   nop
/* 850C 80017D0C 4B5F0008 */  j          .L80017D2C
/* 8510 80017D10 D000C624 */   addiu     $a2, $a2, 0xD0
.L80017D14:
/* 8514 80017D14 3400628E */  lw         $v0, 0x34($s3)
/* 8518 80017D18 00000000 */  nop
/* 851C 80017D1C 30F84228 */  slti       $v0, $v0, -0x7D0
/* 8520 80017D20 02004010 */  beqz       $v0, .L80017D2C
/* 8524 80017D24 00000000 */   nop
/* 8528 80017D28 E000C624 */  addiu      $a2, $a2, 0xE0
.L80017D2C:
/* 852C 80017D2C F000888F */  lw         $t0, %gp_rel(OldScrollCamXPos)($gp)
/* 8530 80017D30 F400828F */  lw         $v0, %gp_rel(OldScrollCamYPos)($gp)
/* 8534 80017D34 F800838F */  lw         $v1, %gp_rel(OldScrollCamZPos)($gp)
/* 8538 80017D38 23280901 */  subu       $a1, $t0, $t1
/* 853C 80017D3C 23204600 */  subu       $a0, $v0, $a2
/* 8540 80017D40 23386A00 */  subu       $a3, $v1, $t2
/* 8544 80017D44 FC00828F */  lw         $v0, %gp_rel(MIND)($gp)
/* 8548 80017D48 0200A104 */  bgez       $a1, .L80017D54
/* 854C 80017D4C 2118A000 */   addu      $v1, $a1, $zero
/* 8550 80017D50 23180300 */  negu       $v1, $v1
.L80017D54:
/* 8554 80017D54 2A104300 */  slt        $v0, $v0, $v1
/* 8558 80017D58 0C004010 */  beqz       $v0, .L80017D8C
/* 855C 80017D5C 00000000 */   nop
/* 8560 80017D60 0001828F */  lw         $v0, %gp_rel(MINDIV)($gp)
/* 8564 80017D64 00000000 */  nop
/* 8568 80017D68 1A00A200 */  div        $zero, $a1, $v0
/* 856C 80017D6C 12180000 */  mflo       $v1
/* 8570 80017D70 02004014 */  bnez       $v0, .L80017D7C
/* 8574 80017D74 00000000 */   nop
/* 8578 80017D78 CD010000 */  break      0, 7
.L80017D7C:
/* 857C 80017D7C 23180301 */  subu       $v1, $t0, $v1
/* 8580 80017D80 E40083AF */  sw         $v1, %gp_rel(ScrollCamXPos)($gp)
/* 8584 80017D84 645F0008 */  j          .L80017D90
/* 8588 80017D88 00000000 */   nop
.L80017D8C:
/* 858C 80017D8C E40089AF */  sw         $t1, %gp_rel(ScrollCamXPos)($gp)
.L80017D90:
/* 8590 80017D90 FC00828F */  lw         $v0, %gp_rel(MIND)($gp)
/* 8594 80017D94 02008104 */  bgez       $a0, .L80017DA0
/* 8598 80017D98 21188000 */   addu      $v1, $a0, $zero
/* 859C 80017D9C 23180300 */  negu       $v1, $v1
.L80017DA0:
/* 85A0 80017DA0 2A104300 */  slt        $v0, $v0, $v1
/* 85A4 80017DA4 0E004010 */  beqz       $v0, .L80017DE0
/* 85A8 80017DA8 00000000 */   nop
/* 85AC 80017DAC 0001828F */  lw         $v0, %gp_rel(MINDIV)($gp)
/* 85B0 80017DB0 00000000 */  nop
/* 85B4 80017DB4 1A008200 */  div        $zero, $a0, $v0
/* 85B8 80017DB8 12200000 */  mflo       $a0
/* 85BC 80017DBC 02004014 */  bnez       $v0, .L80017DC8
/* 85C0 80017DC0 00000000 */   nop
/* 85C4 80017DC4 CD010000 */  break      0, 7
.L80017DC8:
/* 85C8 80017DC8 F400838F */  lw         $v1, %gp_rel(OldScrollCamYPos)($gp)
/* 85CC 80017DCC 00000000 */  nop
/* 85D0 80017DD0 23186400 */  subu       $v1, $v1, $a0
/* 85D4 80017DD4 E80083AF */  sw         $v1, %gp_rel(ScrollCamYPos)($gp)
/* 85D8 80017DD8 795F0008 */  j          .L80017DE4
/* 85DC 80017DDC 00000000 */   nop
.L80017DE0:
/* 85E0 80017DE0 E80086AF */  sw         $a2, %gp_rel(ScrollCamYPos)($gp)
.L80017DE4:
/* 85E4 80017DE4 FC00828F */  lw         $v0, %gp_rel(MIND)($gp)
/* 85E8 80017DE8 0200E104 */  bgez       $a3, .L80017DF4
/* 85EC 80017DEC 2118E000 */   addu      $v1, $a3, $zero
/* 85F0 80017DF0 23180300 */  negu       $v1, $v1
.L80017DF4:
/* 85F4 80017DF4 2A104300 */  slt        $v0, $v0, $v1
/* 85F8 80017DF8 0E004010 */  beqz       $v0, .L80017E34
/* 85FC 80017DFC 00000000 */   nop
/* 8600 80017E00 0001828F */  lw         $v0, %gp_rel(MINDIV)($gp)
/* 8604 80017E04 00000000 */  nop
/* 8608 80017E08 1A00E200 */  div        $zero, $a3, $v0
/* 860C 80017E0C 12200000 */  mflo       $a0
/* 8610 80017E10 02004014 */  bnez       $v0, .L80017E1C
/* 8614 80017E14 00000000 */   nop
/* 8618 80017E18 CD010000 */  break      0, 7
.L80017E1C:
/* 861C 80017E1C F800838F */  lw         $v1, %gp_rel(OldScrollCamZPos)($gp)
/* 8620 80017E20 00000000 */  nop
/* 8624 80017E24 23186400 */  subu       $v1, $v1, $a0
/* 8628 80017E28 EC0083AF */  sw         $v1, %gp_rel(ScrollCamZPos)($gp)
/* 862C 80017E2C 8E5F0008 */  j          .L80017E38
/* 8630 80017E30 00000000 */   nop
.L80017E34:
/* 8634 80017E34 EC008AAF */  sw         $t2, %gp_rel(ScrollCamZPos)($gp)
.L80017E38:
/* 8638 80017E38 E4008427 */  addiu      $a0, $gp, %gp_rel(ScrollCamXPos)
/* 863C 80017E3C E8008527 */  addiu      $a1, $gp, %gp_rel(ScrollCamYPos)
/* 8640 80017E40 E400828F */  lw         $v0, %gp_rel(ScrollCamXPos)($gp)
/* 8644 80017E44 E800838F */  lw         $v1, %gp_rel(ScrollCamYPos)($gp)
/* 8648 80017E48 EC00878F */  lw         $a3, %gp_rel(ScrollCamZPos)($gp)
/* 864C 80017E4C EC008627 */  addiu      $a2, $gp, %gp_rel(ScrollCamZPos)
/* 8650 80017E50 F00082AF */  sw         $v0, %gp_rel(OldScrollCamXPos)($gp)
/* 8654 80017E54 F40083AF */  sw         $v1, %gp_rel(OldScrollCamYPos)($gp)
/* 8658 80017E58 F80087AF */  sw         $a3, %gp_rel(OldScrollCamZPos)($gp)
/* 865C 80017E5C 71ED000C */  jal        GetTrackTarget
/* 8660 80017E60 00000000 */   nop
/* 8664 80017E64 E400838F */  lw         $v1, %gp_rel(ScrollCamXPos)($gp)
/* 8668 80017E68 1001848F */  lw         $a0, %gp_rel(CamXOffset)($gp)
/* 866C 80017E6C E800878F */  lw         $a3, %gp_rel(ScrollCamYPos)($gp)
/* 8670 80017E70 1801858F */  lw         $a1, %gp_rel(CamYOffset)($gp)
/* 8674 80017E74 EC00828F */  lw         $v0, %gp_rel(ScrollCamZPos)($gp)
/* 8678 80017E78 1401868F */  lw         $a2, %gp_rel(CamZOffset)($gp)
/* 867C 80017E7C 21206400 */  addu       $a0, $v1, $a0
/* 8680 80017E80 2128E500 */  addu       $a1, $a3, $a1
/* 8684 80017E84 6895010C */  jal        SetScroll
/* 8688 80017E88 21304600 */   addu      $a2, $v0, $a2
/* 868C 80017E8C 2000BF8F */  lw         $ra, 0x20($sp)
/* 8690 80017E90 1C00B38F */  lw         $s3, 0x1C($sp)
/* 8694 80017E94 1800B28F */  lw         $s2, 0x18($sp)
/* 8698 80017E98 1400B18F */  lw         $s1, 0x14($sp)
/* 869C 80017E9C 1000B08F */  lw         $s0, 0x10($sp)
/* 86A0 80017EA0 0800E003 */  jr         $ra
/* 86A4 80017EA4 2800BD27 */   addiu     $sp, $sp, 0x28
.size CalculateScrollPosition, . - CalculateScrollPosition
