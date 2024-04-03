.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckETTeeterAnimation
/* 7BB8 800173B8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 7BBC 800173BC 3800BEAF */  sw         $fp, 0x38($sp)
/* 7BC0 800173C0 21F08000 */  addu       $fp, $a0, $zero
/* 7BC4 800173C4 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 7BC8 800173C8 3400B7AF */  sw         $s7, 0x34($sp)
/* 7BCC 800173CC 3000B6AF */  sw         $s6, 0x30($sp)
/* 7BD0 800173D0 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 7BD4 800173D4 2800B4AF */  sw         $s4, 0x28($sp)
/* 7BD8 800173D8 2400B3AF */  sw         $s3, 0x24($sp)
/* 7BDC 800173DC 2000B2AF */  sw         $s2, 0x20($sp)
/* 7BE0 800173E0 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 7BE4 800173E4 1800B0AF */  sw         $s0, 0x18($sp)
/* 7BE8 800173E8 0C00C28F */  lw         $v0, 0xC($fp)
/* 7BEC 800173EC 00000000 */  nop
/* 7BF0 800173F0 FBFF4224 */  addiu      $v0, $v0, -0x5
/* 7BF4 800173F4 0200422C */  sltiu      $v0, $v0, 0x2
/* 7BF8 800173F8 87004014 */  bnez       $v0, .L80017618
/* 7BFC 800173FC 6C00C327 */   addiu     $v1, $fp, 0x6C
/* 7C00 80017400 1C00628C */  lw         $v0, 0x1C($v1)
/* 7C04 80017404 00000000 */  nop
/* 7C08 80017408 83004014 */  bnez       $v0, .L80017618
/* 7C0C 8001740C 00000000 */   nop
/* 7C10 80017410 FC128727 */  addiu      $a3, $gp, %gp_rel(ettempy1)
/* 7C14 80017414 F000D08F */  lw         $s0, 0xF0($fp)
/* 7C18 80017418 7000D58F */  lw         $s5, 0x70($fp)
/* 7C1C 8001741C 7400D18F */  lw         $s1, 0x74($fp)
/* 7C20 80017420 7800D48F */  lw         $s4, 0x78($fp)
/* 7C24 80017424 C2171000 */  srl        $v0, $s0, 31
/* 7C28 80017428 21800202 */  addu       $s0, $s0, $v0
/* 7C2C 8001742C 43801000 */  sra        $s0, $s0, 1
/* 7C30 80017430 23B0B002 */  subu       $s6, $s5, $s0
/* 7C34 80017434 2120C002 */  addu       $a0, $s6, $zero
/* 7C38 80017438 80003126 */  addiu      $s1, $s1, 0x80
/* 7C3C 8001743C 21282002 */  addu       $a1, $s1, $zero
/* 7C40 80017440 23989002 */  subu       $s3, $s4, $s0
/* 7C44 80017444 A6FA000C */  jal        CheckCollisionCelHeightNoSlope
/* 7C48 80017448 21306002 */   addu      $a2, $s3, $zero
/* 7C4C 8001744C 2190B002 */  addu       $s2, $s5, $s0
/* 7C50 80017450 FFFF5226 */  addiu      $s2, $s2, -0x1
/* 7C54 80017454 21204002 */  addu       $a0, $s2, $zero
/* 7C58 80017458 21282002 */  addu       $a1, $s1, $zero
/* 7C5C 8001745C 21306002 */  addu       $a2, $s3, $zero
/* 7C60 80017460 00138727 */  addiu      $a3, $gp, %gp_rel(ettempy2)
/* 7C64 80017464 A6FA000C */  jal        CheckCollisionCelHeightNoSlope
/* 7C68 80017468 21B84000 */   addu      $s7, $v0, $zero
/* 7C6C 8001746C 2120C002 */  addu       $a0, $s6, $zero
/* 7C70 80017470 21282002 */  addu       $a1, $s1, $zero
/* 7C74 80017474 21809002 */  addu       $s0, $s4, $s0
/* 7C78 80017478 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 7C7C 8001747C 21300002 */  addu       $a2, $s0, $zero
/* 7C80 80017480 04138727 */  addiu      $a3, $gp, %gp_rel(ettempy3)
/* 7C84 80017484 A6FA000C */  jal        CheckCollisionCelHeightNoSlope
/* 7C88 80017488 21984000 */   addu      $s3, $v0, $zero
/* 7C8C 8001748C 21204002 */  addu       $a0, $s2, $zero
/* 7C90 80017490 21282002 */  addu       $a1, $s1, $zero
/* 7C94 80017494 21300002 */  addu       $a2, $s0, $zero
/* 7C98 80017498 08138727 */  addiu      $a3, $gp, %gp_rel(ettempy4)
/* 7C9C 8001749C A6FA000C */  jal        CheckCollisionCelHeightNoSlope
/* 7CA0 800174A0 21904000 */   addu      $s2, $v0, $zero
/* 7CA4 800174A4 2120A002 */  addu       $a0, $s5, $zero
/* 7CA8 800174A8 21282002 */  addu       $a1, $s1, $zero
/* 7CAC 800174AC 21308002 */  addu       $a2, $s4, $zero
/* 7CB0 800174B0 0C138727 */  addiu      $a3, $gp, %gp_rel(ettempy5)
/* 7CB4 800174B4 27F0000C */  jal        CheckCollisionCelHeight
/* 7CB8 800174B8 21A04000 */   addu      $s4, $v0, $zero
/* 7CBC 800174BC 10000424 */  addiu      $a0, $zero, 0x10
/* 7CC0 800174C0 50000524 */  addiu      $a1, $zero, 0x50
/* 7CC4 800174C4 21300000 */  addu       $a2, $zero, $zero
/* 7CC8 800174C8 0980103C */  lui        $s0, %hi(D_8009433C)
/* 7CCC 800174CC 3C431026 */  addiu      $s0, $s0, %lo(D_8009433C)
/* 7CD0 800174D0 21380002 */  addu       $a3, $s0, $zero
/* 7CD4 800174D4 21884000 */  addu       $s1, $v0, $zero
/* 7CD8 800174D8 3063010C */  jal        Print
/* 7CDC 800174DC 1000B7AF */   sw        $s7, 0x10($sp)
/* 7CE0 800174E0 10000424 */  addiu      $a0, $zero, 0x10
/* 7CE4 800174E4 60000524 */  addiu      $a1, $zero, 0x60
/* 7CE8 800174E8 21300000 */  addu       $a2, $zero, $zero
/* 7CEC 800174EC 21380002 */  addu       $a3, $s0, $zero
/* 7CF0 800174F0 3063010C */  jal        Print
/* 7CF4 800174F4 1000B3AF */   sw        $s3, 0x10($sp)
/* 7CF8 800174F8 10000424 */  addiu      $a0, $zero, 0x10
/* 7CFC 800174FC 70000524 */  addiu      $a1, $zero, 0x70
/* 7D00 80017500 21300000 */  addu       $a2, $zero, $zero
/* 7D04 80017504 21380002 */  addu       $a3, $s0, $zero
/* 7D08 80017508 3063010C */  jal        Print
/* 7D0C 8001750C 1000B2AF */   sw        $s2, 0x10($sp)
/* 7D10 80017510 10000424 */  addiu      $a0, $zero, 0x10
/* 7D14 80017514 80000524 */  addiu      $a1, $zero, 0x80
/* 7D18 80017518 21300000 */  addu       $a2, $zero, $zero
/* 7D1C 8001751C 21380002 */  addu       $a3, $s0, $zero
/* 7D20 80017520 3063010C */  jal        Print
/* 7D24 80017524 1000B4AF */   sw        $s4, 0x10($sp)
/* 7D28 80017528 10000424 */  addiu      $a0, $zero, 0x10
/* 7D2C 8001752C 90000524 */  addiu      $a1, $zero, 0x90
/* 7D30 80017530 21300000 */  addu       $a2, $zero, $zero
/* 7D34 80017534 21380002 */  addu       $a3, $s0, $zero
/* 7D38 80017538 3063010C */  jal        Print
/* 7D3C 8001753C 1000B1AF */   sw        $s1, 0x10($sp)
/* 7D40 80017540 FF030324 */  addiu      $v1, $zero, 0x3FF
/* 7D44 80017544 0800E316 */  bne        $s7, $v1, .L80017568
/* 7D48 80017548 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 7D4C 8001754C 07007716 */  bne        $s3, $s7, .L8001756C
/* 7D50 80017550 FF03E432 */   andi      $a0, $s7, 0x3FF
/* 7D54 80017554 05005316 */  bne        $s2, $s3, .L8001756C
/* 7D58 80017558 00000000 */   nop
/* 7D5C 8001755C 2E009212 */  beq        $s4, $s2, .L80017618
/* 7D60 80017560 01000224 */   addiu     $v0, $zero, 0x1
/* 7D64 80017564 FF030224 */  addiu      $v0, $zero, 0x3FF
.L80017568:
/* 7D68 80017568 FF03E432 */  andi       $a0, $s7, 0x3FF
.L8001756C:
/* 7D6C 8001756C 07008214 */  bne        $a0, $v0, .L8001758C
/* 7D70 80017570 FF036232 */   andi      $v0, $s3, 0x3FF
/* 7D74 80017574 05004414 */  bne        $v0, $a0, .L8001758C
/* 7D78 80017578 00000000 */   nop
/* 7D7C 8001757C 03004006 */  bltz       $s2, .L8001758C
/* 7D80 80017580 00000000 */   nop
/* 7D84 80017584 1C008106 */  bgez       $s4, .L800175F8
/* 7D88 80017588 00000000 */   nop
.L8001758C:
/* 7D8C 8001758C 1200E006 */  bltz       $s7, .L800175D8
/* 7D90 80017590 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 7D94 80017594 06006006 */  bltz       $s3, .L800175B0
/* 7D98 80017598 FF034332 */   andi      $v1, $s2, 0x3FF
/* 7D9C 8001759C FF030224 */  addiu      $v0, $zero, 0x3FF
/* 7DA0 800175A0 03006214 */  bne        $v1, $v0, .L800175B0
/* 7DA4 800175A4 FF038232 */   andi      $v0, $s4, 0x3FF
/* 7DA8 800175A8 13004310 */  beq        $v0, $v1, .L800175F8
/* 7DAC 800175AC 00000000 */   nop
.L800175B0:
/* 7DB0 800175B0 0800E006 */  bltz       $s7, .L800175D4
/* 7DB4 800175B4 FF036332 */   andi      $v1, $s3, 0x3FF
/* 7DB8 800175B8 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 7DBC 800175BC 06006214 */  bne        $v1, $v0, .L800175D8
/* 7DC0 800175C0 00000000 */   nop
/* 7DC4 800175C4 03004006 */  bltz       $s2, .L800175D4
/* 7DC8 800175C8 FF038232 */   andi      $v0, $s4, 0x3FF
/* 7DCC 800175CC 0A004310 */  beq        $v0, $v1, .L800175F8
/* 7DD0 800175D0 00000000 */   nop
.L800175D4:
/* 7DD4 800175D4 FF030224 */  addiu      $v0, $zero, 0x3FF
.L800175D8:
/* 7DD8 800175D8 0F008214 */  bne        $a0, $v0, .L80017618
/* 7DDC 800175DC 21100000 */   addu      $v0, $zero, $zero
/* 7DE0 800175E0 0C006006 */  bltz       $s3, .L80017614
/* 7DE4 800175E4 FF034232 */   andi      $v0, $s2, 0x3FF
/* 7DE8 800175E8 0B004414 */  bne        $v0, $a0, .L80017618
/* 7DEC 800175EC 21100000 */   addu      $v0, $zero, $zero
/* 7DF0 800175F0 09008006 */  bltz       $s4, .L80017618
/* 7DF4 800175F4 00000000 */   nop
.L800175F8:
/* 7DF8 800175F8 2120C003 */  addu       $a0, $fp, $zero
/* 7DFC 800175FC 0B000524 */  addiu      $a1, $zero, 0xB
/* 7E00 80017600 02000624 */  addiu      $a2, $zero, 0x2
/* 7E04 80017604 60DE000C */  jal        CheckAnimLoop
/* 7E08 80017608 2C018724 */   addiu     $a3, $a0, 0x12C
/* 7E0C 8001760C 865D0008 */  j          .L80017618
/* 7E10 80017610 01000224 */   addiu     $v0, $zero, 0x1
.L80017614:
/* 7E14 80017614 21100000 */  addu       $v0, $zero, $zero
.L80017618:
/* 7E18 80017618 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 7E1C 8001761C 3800BE8F */  lw         $fp, 0x38($sp)
/* 7E20 80017620 3400B78F */  lw         $s7, 0x34($sp)
/* 7E24 80017624 3000B68F */  lw         $s6, 0x30($sp)
/* 7E28 80017628 2C00B58F */  lw         $s5, 0x2C($sp)
/* 7E2C 8001762C 2800B48F */  lw         $s4, 0x28($sp)
/* 7E30 80017630 2400B38F */  lw         $s3, 0x24($sp)
/* 7E34 80017634 2000B28F */  lw         $s2, 0x20($sp)
/* 7E38 80017638 1C00B18F */  lw         $s1, 0x1C($sp)
/* 7E3C 8001763C 1800B08F */  lw         $s0, 0x18($sp)
/* 7E40 80017640 0800E003 */  jr         $ra
/* 7E44 80017644 4000BD27 */   addiu     $sp, $sp, 0x40
.size CheckETTeeterAnimation, . - CheckETTeeterAnimation
