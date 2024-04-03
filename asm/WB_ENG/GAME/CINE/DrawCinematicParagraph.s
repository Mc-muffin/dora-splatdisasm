.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawCinematicParagraph
/* 3208C 8004188C D414828F */  lw         $v0, %gp_rel(CurrentCinematic)($gp)
/* 32090 80041890 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 32094 80041894 3000B4AF */  sw         $s4, 0x30($sp)
/* 32098 80041898 0980143C */  lui        $s4, %hi(gLanguage)
/* 3209C 8004189C 7C56948E */  lw         $s4, %lo(gLanguage)($s4)
/* 320A0 800418A0 3800BFAF */  sw         $ra, 0x38($sp)
/* 320A4 800418A4 3400B5AF */  sw         $s5, 0x34($sp)
/* 320A8 800418A8 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 320AC 800418AC 2800B2AF */  sw         $s2, 0x28($sp)
/* 320B0 800418B0 2400B1AF */  sw         $s1, 0x24($sp)
/* 320B4 800418B4 2000B0AF */  sw         $s0, 0x20($sp)
/* 320B8 800418B8 1000438C */  lw         $v1, 0x10($v0)
/* 320BC 800418BC 440C908F */  lw         $s0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 320C0 800418C0 05006010 */  beqz       $v1, .L800418D8
/* 320C4 800418C4 00000000 */   nop
/* 320C8 800418C8 0000428C */  lw         $v0, 0x0($v0)
/* 320CC 800418CC 00000000 */  nop
/* 320D0 800418D0 04004014 */  bnez       $v0, .L800418E4
/* 320D4 800418D4 21107000 */   addu      $v0, $v1, $s0
.L800418D8:
/* 320D8 800418D8 400C80AF */  sw         $zero, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 320DC 800418DC 3C060108 */  j          .L800418F0
/* 320E0 800418E0 00000000 */   nop
.L800418E4:
/* 320E4 800418E4 00004390 */  lbu        $v1, 0x0($v0)
/* 320E8 800418E8 00000000 */  nop
/* 320EC 800418EC 400C83AF */  sw         $v1, %gp_rel(Cinematic_OverylayIndex)($gp)
.L800418F0:
/* 320F0 800418F0 0980033C */  lui        $v1, %hi(EndlevelType)
/* 320F4 800418F4 C455638C */  lw         $v1, %lo(EndlevelType)($v1)
/* 320F8 800418F8 02000224 */  addiu      $v0, $zero, 0x2
/* 320FC 800418FC 03006210 */  beq        $v1, $v0, .L8004190C
/* 32100 80041900 80881400 */   sll       $s1, $s4, 2
/* 32104 80041904 00CE000C */  jal        DrawCinematicSprites
/* 32108 80041908 00000000 */   nop
.L8004190C:
/* 3210C 8004190C 21980000 */  addu       $s3, $zero, $zero
/* 32110 80041910 D414928F */  lw         $s2, %gp_rel(CurrentCinematic)($gp)
/* 32114 80041914 0A80153C */  lui        $s5, %hi(CineDebugString)
/* 32118 80041918 0800438E */  lw         $v1, 0x8($s2)
/* 3211C 8004191C 80101000 */  sll        $v0, $s0, 2
/* 32120 80041920 21804300 */  addu       $s0, $v0, $v1
.L80041924:
/* 32124 80041924 0000438E */  lw         $v1, 0x0($s2)
/* 32128 80041928 01000224 */  addiu      $v0, $zero, 0x1
/* 3212C 8004192C 1A006210 */  beq        $v1, $v0, .L80041998
/* 32130 80041930 02006228 */   slti      $v0, $v1, 0x2
/* 32134 80041934 05004010 */  beqz       $v0, .L8004194C
/* 32138 80041938 02000224 */   addiu     $v0, $zero, 0x2
/* 3213C 8004193C 09006010 */  beqz       $v1, .L80041964
/* 32140 80041940 21208002 */   addu      $a0, $s4, $zero
/* 32144 80041944 68060108 */  j          .L800419A0
/* 32148 80041948 A0000524 */   addiu     $a1, $zero, 0xA0
.L8004194C:
/* 3214C 8004194C 19006210 */  beq        $v1, $v0, .L800419B4
/* 32150 80041950 03000224 */   addiu     $v0, $zero, 0x3
/* 32154 80041954 20006210 */  beq        $v1, $v0, .L800419D8
/* 32158 80041958 21208002 */   addu      $a0, $s4, $zero
/* 3215C 8004195C 68060108 */  j          .L800419A0
/* 32160 80041960 A0000524 */   addiu     $a1, $zero, 0xA0
.L80041964:
/* 32164 80041964 A0000424 */  addiu      $a0, $zero, 0xA0
/* 32168 80041968 B4000524 */  addiu      $a1, $zero, 0xB4
/* 3216C 8004196C 0000028E */  lw         $v0, 0x0($s0)
/* 32170 80041970 21300000 */  addu       $a2, $zero, $zero
/* 32174 80041974 21105100 */  addu       $v0, $v0, $s1
/* 32178 80041978 0000428C */  lw         $v0, 0x0($v0)
/* 3217C 8004197C 0C000724 */  addiu      $a3, $zero, 0xC
/* 32180 80041980 1400A0AF */  sw         $zero, 0x14($sp)
/* 32184 80041984 1800A0AF */  sw         $zero, 0x18($sp)
/* 32188 80041988 A505010C */  jal        PrintPara
/* 3218C 8004198C 1000A2AF */   sw        $v0, 0x10($sp)
/* 32190 80041990 7C060108 */  j          .L800419F0
/* 32194 80041994 FFFF7326 */   addiu     $s3, $s3, -0x1
.L80041998:
/* 32198 80041998 21208002 */  addu       $a0, $s4, $zero
/* 3219C 8004199C A0000524 */  addiu      $a1, $zero, 0xA0
.L800419A0:
/* 321A0 800419A0 B4000624 */  addiu      $a2, $zero, 0xB4
/* 321A4 800419A4 12CE000C */  jal        DisplayLevelGoalText
/* 321A8 800419A8 0C000724 */   addiu     $a3, $zero, 0xC
/* 321AC 800419AC 7C060108 */  j          .L800419F0
/* 321B0 800419B0 FFFF7326 */   addiu     $s3, $s3, -0x1
.L800419B4:
/* 321B4 800419B4 A0000424 */  addiu      $a0, $zero, 0xA0
/* 321B8 800419B8 0000028E */  lw         $v0, 0x0($s0)
/* 321BC 800419BC B4000524 */  addiu      $a1, $zero, 0xB4
/* 321C0 800419C0 21105100 */  addu       $v0, $v0, $s1
/* 321C4 800419C4 0000478C */  lw         $a3, 0x0($v0)
/* 321C8 800419C8 9362010C */  jal        PrintC
/* 321CC 800419CC 21300000 */   addu      $a2, $zero, $zero
/* 321D0 800419D0 7C060108 */  j          .L800419F0
/* 321D4 800419D4 FFFF7326 */   addiu     $s3, $s3, -0x1
.L800419D8:
/* 321D8 800419D8 A0000424 */  addiu      $a0, $zero, 0xA0
/* 321DC 800419DC B4000524 */  addiu      $a1, $zero, 0xB4
/* 321E0 800419E0 21300000 */  addu       $a2, $zero, $zero
/* 321E4 800419E4 9362010C */  jal        PrintC
/* 321E8 800419E8 B8BFA726 */   addiu     $a3, $s5, %lo(CineDebugString)
/* 321EC 800419EC FFFF7326 */  addiu      $s3, $s3, -0x1
.L800419F0:
/* 321F0 800419F0 CCFF6106 */  bgez       $s3, .L80041924
/* 321F4 800419F4 00000000 */   nop
/* 321F8 800419F8 3800BF8F */  lw         $ra, 0x38($sp)
/* 321FC 800419FC 3400B58F */  lw         $s5, 0x34($sp)
/* 32200 80041A00 3000B48F */  lw         $s4, 0x30($sp)
/* 32204 80041A04 2C00B38F */  lw         $s3, 0x2C($sp)
/* 32208 80041A08 2800B28F */  lw         $s2, 0x28($sp)
/* 3220C 80041A0C 2400B18F */  lw         $s1, 0x24($sp)
/* 32210 80041A10 2000B08F */  lw         $s0, 0x20($sp)
/* 32214 80041A14 0800E003 */  jr         $ra
/* 32218 80041A18 4000BD27 */   addiu     $sp, $sp, 0x40
.size DrawCinematicParagraph, . - DrawCinematicParagraph
