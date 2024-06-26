.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActorUpdateDirVelocity
/* 51FA0 800617A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 51FA4 800617A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 51FA8 800617A8 21808000 */  addu       $s0, $a0, $zero
/* 51FAC 800617AC 6C000326 */  addiu      $v1, $s0, 0x6C
/* 51FB0 800617B0 1800BFAF */  sw         $ra, 0x18($sp)
/* 51FB4 800617B4 1400B1AF */  sw         $s1, 0x14($sp)
/* 51FB8 800617B8 5400028E */  lw         $v0, 0x54($s0)
/* 51FBC 800617BC 5800048E */  lw         $a0, 0x58($s0)
/* 51FC0 800617C0 00000000 */  nop
/* 51FC4 800617C4 03008004 */  bltz       $a0, .L800617D4
/* 51FC8 800617C8 FF0F5130 */   andi      $s1, $v0, 0xFFF
/* 51FCC 800617CC 02860108 */  j          .L80061808
/* 51FD0 800617D0 FF0F8630 */   andi      $a2, $a0, 0xFFF
.L800617D4:
/* 51FD4 800617D4 3000648C */  lw         $a0, 0x30($v1)
/* 51FD8 800617D8 00000000 */  nop
/* 51FDC 800617DC 05008014 */  bnez       $a0, .L800617F4
/* 51FE0 800617E0 00000000 */   nop
/* 51FE4 800617E4 3800628C */  lw         $v0, 0x38($v1)
/* 51FE8 800617E8 00000000 */  nop
/* 51FEC 800617EC 32004010 */  beqz       $v0, .L800618B8
/* 51FF0 800617F0 00000000 */   nop
.L800617F4:
/* 51FF4 800617F4 3800658C */  lw         $a1, 0x38($v1)
/* 51FF8 800617F8 63EF010C */  jal        ratan2
/* 51FFC 800617FC 00000000 */   nop
/* 52000 80061800 00084624 */  addiu      $a2, $v0, 0x800
/* 52004 80061804 FF0FC630 */  andi       $a2, $a2, 0xFFF
.L80061808:
/* 52008 80061808 23282602 */  subu       $a1, $s1, $a2
/* 5200C 8006180C 0300A104 */  bgez       $a1, .L8006181C
/* 52010 80061810 0008A228 */   slti      $v0, $a1, 0x800
/* 52014 80061814 2328D100 */  subu       $a1, $a2, $s1
/* 52018 80061818 0008A228 */  slti       $v0, $a1, 0x800
.L8006181C:
/* 5201C 8006181C 04004014 */  bnez       $v0, .L80061830
/* 52020 80061820 21102502 */   addu      $v0, $s1, $a1
/* 52024 80061824 00100224 */  addiu      $v0, $zero, 0x1000
/* 52028 80061828 23284500 */  subu       $a1, $v0, $a1
/* 5202C 8006182C 21102502 */  addu       $v0, $s1, $a1
.L80061830:
/* 52030 80061830 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 52034 80061834 0F004614 */  bne        $v0, $a2, .L80061874
/* 52038 80061838 0BB6023C */   lui       $v0, (0xB60B60B7 >> 16)
/* 5203C 8006183C 5C00038E */  lw         $v1, 0x5C($s0)
/* 52040 80061840 B7604234 */  ori        $v0, $v0, (0xB60B60B7 & 0xFFFF)
/* 52044 80061844 001B0300 */  sll        $v1, $v1, 12
/* 52048 80061848 18006200 */  mult       $v1, $v0
/* 5204C 8006184C 10100000 */  mfhi       $v0
/* 52050 80061850 21104300 */  addu       $v0, $v0, $v1
/* 52054 80061854 03120200 */  sra        $v0, $v0, 8
/* 52058 80061858 C31F0300 */  sra        $v1, $v1, 31
/* 5205C 8006185C 23104300 */  subu       $v0, $v0, $v1
/* 52060 80061860 2A204500 */  slt        $a0, $v0, $a1
/* 52064 80061864 11008010 */  beqz       $a0, .L800618AC
/* 52068 80061868 21102202 */   addu      $v0, $s1, $v0
/* 5206C 8006186C 2E860108 */  j          .L800618B8
/* 52070 80061870 540002AE */   sw        $v0, 0x54($s0)
.L80061874:
/* 52074 80061874 5C00038E */  lw         $v1, 0x5C($s0)
/* 52078 80061878 B7604234 */  ori        $v0, $v0, (0xB60B60B7 & 0xFFFF)
/* 5207C 8006187C 001B0300 */  sll        $v1, $v1, 12
/* 52080 80061880 18006200 */  mult       $v1, $v0
/* 52084 80061884 10100000 */  mfhi       $v0
/* 52088 80061888 21104300 */  addu       $v0, $v0, $v1
/* 5208C 8006188C 03120200 */  sra        $v0, $v0, 8
/* 52090 80061890 C31F0300 */  sra        $v1, $v1, 31
/* 52094 80061894 23104300 */  subu       $v0, $v0, $v1
/* 52098 80061898 2A204500 */  slt        $a0, $v0, $a1
/* 5209C 8006189C 03008010 */  beqz       $a0, .L800618AC
/* 520A0 800618A0 23102202 */   subu      $v0, $s1, $v0
/* 520A4 800618A4 2E860108 */  j          .L800618B8
/* 520A8 800618A8 540002AE */   sw        $v0, 0x54($s0)
.L800618AC:
/* 520AC 800618AC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 520B0 800618B0 540006AE */  sw         $a2, 0x54($s0)
/* 520B4 800618B4 580002AE */  sw         $v0, 0x58($s0)
.L800618B8:
/* 520B8 800618B8 1800BF8F */  lw         $ra, 0x18($sp)
/* 520BC 800618BC 1400B18F */  lw         $s1, 0x14($sp)
/* 520C0 800618C0 1000B08F */  lw         $s0, 0x10($sp)
/* 520C4 800618C4 0800E003 */  jr         $ra
/* 520C8 800618C8 2000BD27 */   addiu     $sp, $sp, 0x20
.size ActorUpdateDirVelocity, . - ActorUpdateDirVelocity
