.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_tracker
/* 37490 80046C90 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 37494 80046C94 1000B0AF */  sw         $s0, 0x10($sp)
/* 37498 80046C98 21808000 */  addu       $s0, $a0, $zero
/* 3749C 80046C9C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 374A0 80046CA0 1800B2AF */  sw         $s2, 0x18($sp)
/* 374A4 80046CA4 4E26010C */  jal        parse_attrib_generic
/* 374A8 80046CA8 1400B1AF */   sw        $s1, 0x14($sp)
/* 374AC 80046CAC 30000424 */  addiu      $a0, $zero, 0x30
/* 374B0 80046CB0 2B3F010C */  jal        new_malloc
/* 374B4 80046CB4 21904000 */   addu      $s2, $v0, $zero
/* 374B8 80046CB8 21200002 */  addu       $a0, $s0, $zero
/* 374BC 80046CBC 21884000 */  addu       $s1, $v0, $zero
/* 374C0 80046CC0 BC42010C */  jal        pbag_init
/* 374C4 80046CC4 380051AE */   sw        $s1, 0x38($s2)
/* 374C8 80046CC8 1543010C */  jal        pbag_getptr
/* 374CC 80046CCC 00000000 */   nop
/* 374D0 80046CD0 21804000 */  addu       $s0, $v0, $zero
/* 374D4 80046CD4 0000048E */  lw         $a0, 0x0($s0)
/* 374D8 80046CD8 B142010C */  jal        pbag_getenum
/* 374DC 80046CDC 00000000 */   nop
/* 374E0 80046CE0 21204000 */  addu       $a0, $v0, $zero
/* 374E4 80046CE4 96000224 */  addiu      $v0, $zero, 0x96
/* 374E8 80046CE8 80000324 */  addiu      $v1, $zero, 0x80
/* 374EC 80046CEC 080022AE */  sw         $v0, 0x8($s1)
/* 374F0 80046CF0 01000224 */  addiu      $v0, $zero, 0x1
/* 374F4 80046CF4 040023AE */  sw         $v1, 0x4($s1)
/* 374F8 80046CF8 FFFF0334 */  ori        $v1, $zero, 0xFFFF
/* 374FC 80046CFC 140020A6 */  sh         $zero, 0x14($s1)
/* 37500 80046D00 120020A6 */  sh         $zero, 0x12($s1)
/* 37504 80046D04 3B008310 */  beq        $a0, $v1, .L80046DF4
/* 37508 80046D08 1E0022A6 */   sh        $v0, 0x1E($s1)
/* 3750C 80046D0C FF800234 */  ori        $v0, $zero, 0x80FF
.L80046D10:
/* 37510 80046D10 2B104400 */  sltu       $v0, $v0, $a0
/* 37514 80046D14 2D004010 */  beqz       $v0, .L80046DCC
/* 37518 80046D18 FFFF023C */   lui       $v0, (0xFFFF7F00 >> 16)
/* 3751C 80046D1C 007F4234 */  ori        $v0, $v0, (0xFFFF7F00 & 0xFFFF)
/* 37520 80046D20 21208200 */  addu       $a0, $a0, $v0
/* 37524 80046D24 0600832C */  sltiu      $v1, $a0, 0x6
/* 37528 80046D28 28006010 */  beqz       $v1, .L80046DCC
/* 3752C 80046D2C 0180023C */   lui       $v0, %hi(jtbl_80012DD8)
/* 37530 80046D30 D82D4224 */  addiu      $v0, $v0, %lo(jtbl_80012DD8)
/* 37534 80046D34 80180400 */  sll        $v1, $a0, 2
/* 37538 80046D38 21186200 */  addu       $v1, $v1, $v0
/* 3753C 80046D3C 0000648C */  lw         $a0, 0x0($v1)
/* 37540 80046D40 00000000 */  nop
/* 37544 80046D44 08008000 */  jr         $a0
/* 37548 80046D48 00000000 */   nop
jlabel .L80046D4C
/* 3754C 80046D4C 0800028E */  lw         $v0, 0x8($s0)
/* 37550 80046D50 00000000 */  nop
/* 37554 80046D54 0000448C */  lw         $a0, 0x0($v0)
/* 37558 80046D58 5413010C */  jal        GetWorldPathData
/* 3755C 80046D5C 00000000 */   nop
/* 37560 80046D60 731B0108 */  j          .L80046DCC
/* 37564 80046D64 280022AE */   sw        $v0, 0x28($s1)
jlabel .L80046D68
/* 37568 80046D68 0800028E */  lw         $v0, 0x8($s0)
/* 3756C 80046D6C 00000000 */  nop
/* 37570 80046D70 0000438C */  lw         $v1, 0x0($v0)
/* 37574 80046D74 731B0108 */  j          .L80046DCC
/* 37578 80046D78 000023AE */   sw        $v1, 0x0($s1)
jlabel .L80046D7C
/* 3757C 80046D7C 0800028E */  lw         $v0, 0x8($s0)
/* 37580 80046D80 00000000 */  nop
/* 37584 80046D84 00004394 */  lhu        $v1, 0x0($v0)
/* 37588 80046D88 731B0108 */  j          .L80046DCC
/* 3758C 80046D8C 140023A6 */   sh        $v1, 0x14($s1)
jlabel .L80046D90
/* 37590 80046D90 0800028E */  lw         $v0, 0x8($s0)
/* 37594 80046D94 00000000 */  nop
/* 37598 80046D98 0000438C */  lw         $v1, 0x0($v0)
/* 3759C 80046D9C 731B0108 */  j          .L80046DCC
/* 375A0 80046DA0 080023AE */   sw        $v1, 0x8($s1)
jlabel .L80046DA4
/* 375A4 80046DA4 0800028E */  lw         $v0, 0x8($s0)
/* 375A8 80046DA8 00000000 */  nop
/* 375AC 80046DAC 0000438C */  lw         $v1, 0x0($v0)
/* 375B0 80046DB0 731B0108 */  j          .L80046DCC
/* 375B4 80046DB4 040023AE */   sw        $v1, 0x4($s1)
jlabel .L80046DB8
/* 375B8 80046DB8 0800028E */  lw         $v0, 0x8($s0)
/* 375BC 80046DBC 00000000 */  nop
/* 375C0 80046DC0 00004394 */  lhu        $v1, 0x0($v0)
/* 375C4 80046DC4 00000000 */  nop
/* 375C8 80046DC8 120023A6 */  sh         $v1, 0x12($s1)
.L80046DCC:
/* 375CC 80046DCC E742010C */  jal        pbag_advanceONE
/* 375D0 80046DD0 00000000 */   nop
/* 375D4 80046DD4 21804000 */  addu       $s0, $v0, $zero
/* 375D8 80046DD8 0000048E */  lw         $a0, 0x0($s0)
/* 375DC 80046DDC B142010C */  jal        pbag_getenum
/* 375E0 80046DE0 00000000 */   nop
/* 375E4 80046DE4 21204000 */  addu       $a0, $v0, $zero
/* 375E8 80046DE8 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 375EC 80046DEC C8FF8214 */  bne        $a0, $v0, .L80046D10
/* 375F0 80046DF0 FF800234 */   ori       $v0, $zero, 0x80FF
.L80046DF4:
/* 375F4 80046DF4 21104002 */  addu       $v0, $s2, $zero
/* 375F8 80046DF8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 375FC 80046DFC 1800B28F */  lw         $s2, 0x18($sp)
/* 37600 80046E00 1400B18F */  lw         $s1, 0x14($sp)
/* 37604 80046E04 1000B08F */  lw         $s0, 0x10($sp)
/* 37608 80046E08 0800E003 */  jr         $ra
/* 3760C 80046E0C 2000BD27 */   addiu     $sp, $sp, 0x20
.size parse_attrib_tracker, . - parse_attrib_tracker
