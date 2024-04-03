.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetDoraActorDepth
/* 6F0C 8001670C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 6F10 80016710 1000B0AF */  sw         $s0, 0x10($sp)
/* 6F14 80016714 21808000 */  addu       $s0, $a0, $zero
/* 6F18 80016718 6C000226 */  addiu      $v0, $s0, 0x6C
/* 6F1C 8001671C 2000BFAF */  sw         $ra, 0x20($sp)
/* 6F20 80016720 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 6F24 80016724 1800B2AF */  sw         $s2, 0x18($sp)
/* 6F28 80016728 1400B1AF */  sw         $s1, 0x14($sp)
/* 6F2C 8001672C 0400518C */  lw         $s1, 0x4($v0)
/* 6F30 80016730 0800528C */  lw         $s2, 0x8($v0)
/* 6F34 80016734 0C00538C */  lw         $s3, 0xC($v0)
/* 6F38 80016738 21202002 */  addu       $a0, $s1, $zero
/* 6F3C 8001673C 21284002 */  addu       $a1, $s2, $zero
/* 6F40 80016740 EFF9000C */  jal        Getindex
/* 6F44 80016744 21306002 */   addu      $a2, $s3, $zero
/* 6F48 80016748 2000038E */  lw         $v1, 0x20($s0)
/* 6F4C 8001674C 2400058E */  lw         $a1, 0x24($s0)
/* 6F50 80016750 23882302 */  subu       $s1, $s1, $v1
/* 6F54 80016754 2800038E */  lw         $v1, 0x28($s0)
/* 6F58 80016758 00000000 */  nop
/* 6F5C 8001675C 23986302 */  subu       $s3, $s3, $v1
/* 6F60 80016760 21184000 */  addu       $v1, $v0, $zero
/* 6F64 80016764 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6F68 80016768 28006210 */  beq        $v1, $v0, .L8001680C
/* 6F6C 8001676C 23904502 */   subu      $s2, $s2, $a1
/* 6F70 80016770 00246230 */  andi       $v0, $v1, 0x2400
/* 6F74 80016774 25004010 */  beqz       $v0, .L8001680C
/* 6F78 80016778 00046230 */   andi      $v0, $v1, 0x400
/* 6F7C 8001677C 0A004010 */  beqz       $v0, .L800167A8
/* 6F80 80016780 00206230 */   andi      $v0, $v1, 0x2000
/* 6F84 80016784 0980023C */  lui        $v0, %hi(BENOXTWEAK)
/* 6F88 80016788 9854428C */  lw         $v0, %lo(BENOXTWEAK)($v0)
/* 6F8C 8001678C 0980033C */  lui        $v1, %hi(BENOYTWEAK)
/* 6F90 80016790 9C54638C */  lw         $v1, %lo(BENOYTWEAK)($v1)
/* 6F94 80016794 21882202 */  addu       $s1, $s1, $v0
/* 6F98 80016798 0980023C */  lui        $v0, %hi(BENOZTWEAK)
/* 6F9C 8001679C A054428C */  lw         $v0, %lo(BENOZTWEAK)($v0)
/* 6FA0 800167A0 015A0008 */  j          .L80016804
/* 6FA4 800167A4 21186500 */   addu      $v1, $v1, $a1
.L800167A8:
/* 6FA8 800167A8 18004010 */  beqz       $v0, .L8001680C
/* 6FAC 800167AC FF036330 */   andi      $v1, $v1, 0x3FF
/* 6FB0 800167B0 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 6FB4 800167B4 0B006210 */  beq        $v1, $v0, .L800167E4
/* 6FB8 800167B8 80100300 */   sll       $v0, $v1, 2
/* 6FBC 800167BC 21104300 */  addu       $v0, $v0, $v1
/* 6FC0 800167C0 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 6FC4 800167C4 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 6FC8 800167C8 C0100200 */  sll        $v0, $v0, 3
/* 6FCC 800167CC 21186200 */  addu       $v1, $v1, $v0
/* 6FD0 800167D0 0800648C */  lw         $a0, 0x8($v1)
/* 6FD4 800167D4 0006023C */  lui        $v0, (0x6000000 >> 16)
/* 6FD8 800167D8 24208200 */  and        $a0, $a0, $v0
/* 6FDC 800167DC 0C008014 */  bnez       $a0, .L80016810
/* 6FE0 800167E0 21202002 */   addu      $a0, $s1, $zero
.L800167E4:
/* 6FE4 800167E4 0980023C */  lui        $v0, %hi(BENOXTWEAK2)
/* 6FE8 800167E8 A454428C */  lw         $v0, %lo(BENOXTWEAK2)($v0)
/* 6FEC 800167EC 0980033C */  lui        $v1, %hi(BENOYTWEAK2)
/* 6FF0 800167F0 A854638C */  lw         $v1, %lo(BENOYTWEAK2)($v1)
/* 6FF4 800167F4 21882202 */  addu       $s1, $s1, $v0
/* 6FF8 800167F8 21186500 */  addu       $v1, $v1, $a1
/* 6FFC 800167FC 0980023C */  lui        $v0, %hi(BENOZTWEAK2)
/* 7000 80016800 AC54428C */  lw         $v0, %lo(BENOZTWEAK2)($v0)
.L80016804:
/* 7004 80016804 21904302 */  addu       $s2, $s2, $v1
/* 7008 80016808 21986202 */  addu       $s3, $s3, $v0
.L8001680C:
/* 700C 8001680C 21202002 */  addu       $a0, $s1, $zero
.L80016810:
/* 7010 80016810 21284002 */  addu       $a1, $s2, $zero
/* 7014 80016814 7094010C */  jal        GetDepth
/* 7018 80016818 21306002 */   addu      $a2, $s3, $zero
/* 701C 8001681C 00140200 */  sll        $v0, $v0, 16
/* 7020 80016820 2000BF8F */  lw         $ra, 0x20($sp)
/* 7024 80016824 1C00B38F */  lw         $s3, 0x1C($sp)
/* 7028 80016828 1800B28F */  lw         $s2, 0x18($sp)
/* 702C 8001682C 1400B18F */  lw         $s1, 0x14($sp)
/* 7030 80016830 1000B08F */  lw         $s0, 0x10($sp)
/* 7034 80016834 03140200 */  sra        $v0, $v0, 16
/* 7038 80016838 0800E003 */  jr         $ra
/* 703C 8001683C 2800BD27 */   addiu     $sp, $sp, 0x28
.size GetDoraActorDepth, . - GetDoraActorDepth
