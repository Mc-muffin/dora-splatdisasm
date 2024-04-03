.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AudAttackBrains
/* 34DA8 800445A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 34DAC 800445AC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 34DB0 800445B0 21888000 */  addu       $s1, $a0, $zero
/* 34DB4 800445B4 2800BFAF */  sw         $ra, 0x28($sp)
/* 34DB8 800445B8 2400B3AF */  sw         $s3, 0x24($sp)
/* 34DBC 800445BC 2000B2AF */  sw         $s2, 0x20($sp)
/* 34DC0 800445C0 1800B0AF */  sw         $s0, 0x18($sp)
/* 34DC4 800445C4 1000228E */  lw         $v0, 0x10($s1)
/* 34DC8 800445C8 2801328E */  lw         $s2, 0x128($s1)
/* 34DCC 800445CC 00014230 */  andi       $v0, $v0, 0x100
/* 34DD0 800445D0 5B004010 */  beqz       $v0, .L80044740
/* 34DD4 800445D4 6C003026 */   addiu     $s0, $s1, 0x6C
/* 34DD8 800445D8 6000228E */  lw         $v0, 0x60($s1)
/* 34DDC 800445DC 21200002 */  addu       $a0, $s0, $zero
/* 34DE0 800445E0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 34DE4 800445E4 A7F7000C */  jal        UpdateMotionPhysics
/* 34DE8 800445E8 600022AE */   sw        $v0, 0x60($s1)
/* 34DEC 800445EC 21984000 */  addu       $s3, $v0, $zero
/* 34DF0 800445F0 AE6B000C */  jal        CheckActorCollisionWithETProjectile
/* 34DF4 800445F4 21202002 */   addu      $a0, $s1, $zero
/* 34DF8 800445F8 25986202 */  or         $s3, $s3, $v0
/* 34DFC 800445FC 21202002 */  addu       $a0, $s1, $zero
/* 34E00 80044600 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 34E04 80044604 21280002 */   addu      $a1, $s0, $zero
/* 34E08 80044608 6400228E */  lw         $v0, 0x64($s1)
/* 34E0C 8004460C 00000000 */  nop
/* 34E10 80044610 27004014 */  bnez       $v0, .L800446B0
/* 34E14 80044614 00000000 */   nop
/* 34E18 80044618 1400228E */  lw         $v0, 0x14($s1)
/* 34E1C 8004461C 080D838F */  lw         $v1, %gp_rel(AudAttackScaleInc)($gp)
/* 34E20 80044620 040D848F */  lw         $a0, %gp_rel(AudAttackMaxScale)($gp)
/* 34E24 80044624 21104300 */  addu       $v0, $v0, $v1
/* 34E28 80044628 140022AE */  sw         $v0, 0x14($s1)
/* 34E2C 8004462C 2A104400 */  slt        $v0, $v0, $a0
/* 34E30 80044630 02004014 */  bnez       $v0, .L8004463C
/* 34E34 80044634 00000000 */   nop
/* 34E38 80044638 140024AE */  sw         $a0, 0x14($s1)
.L8004463C:
/* 34E3C 8004463C 1800428E */  lw         $v0, 0x18($s2)
/* 34E40 80044640 00000000 */  nop
/* 34E44 80044644 03004228 */  slti       $v0, $v0, 0x3
/* 34E48 80044648 12004010 */  beqz       $v0, .L80044694
/* 34E4C 8004464C 00000000 */   nop
/* 34E50 80044650 1C00428E */  lw         $v0, 0x1C($s2)
/* 34E54 80044654 F80C838F */  lw         $v1, %gp_rel(AudAttackRepeatRate)($gp)
/* 34E58 80044658 01004224 */  addiu      $v0, $v0, 0x1
/* 34E5C 8004465C 2A186200 */  slt        $v1, $v1, $v0
/* 34E60 80044660 0C006010 */  beqz       $v1, .L80044694
/* 34E64 80044664 1C0042AE */   sw        $v0, 0x1C($s2)
/* 34E68 80044668 21202002 */  addu       $a0, $s1, $zero
/* 34E6C 8004466C 1400228E */  lw         $v0, 0x14($s1)
/* 34E70 80044670 F00C868F */  lw         $a2, %gp_rel(AUD_ATTACK_BRAIN_TIMER2)($gp)
/* 34E74 80044674 100D878F */  lw         $a3, %gp_rel(AUD_ATTACK_INITAL_SPEED2)($gp)
/* 34E78 80044678 21284002 */  addu       $a1, $s2, $zero
/* 34E7C 8004467C D711010C */  jal        SendAudAttack
/* 34E80 80044680 1000A2AF */   sw        $v0, 0x10($sp)
/* 34E84 80044684 1800438E */  lw         $v1, 0x18($s2)
/* 34E88 80044688 1C0040AE */  sw         $zero, 0x1C($s2)
/* 34E8C 8004468C 01006324 */  addiu      $v1, $v1, 0x1
/* 34E90 80044690 180043AE */  sw         $v1, 0x18($s2)
.L80044694:
/* 34E94 80044694 4C00228E */  lw         $v0, 0x4C($s1)
/* 34E98 80044698 1400238E */  lw         $v1, 0x14($s1)
/* 34E9C 8004469C 00000000 */  nop
/* 34EA0 800446A0 18004300 */  mult       $v0, $v1
/* 34EA4 800446A4 12100000 */  mflo       $v0
/* 34EA8 800446A8 03130200 */  sra        $v0, $v0, 12
/* 34EAC 800446AC 500022AE */  sw         $v0, 0x50($s1)
.L800446B0:
/* 34EB0 800446B0 05006016 */  bnez       $s3, .L800446C8
/* 34EB4 800446B4 00000000 */   nop
/* 34EB8 800446B8 6000228E */  lw         $v0, 0x60($s1)
/* 34EBC 800446BC 00000000 */  nop
/* 34EC0 800446C0 05004104 */  bgez       $v0, .L800446D8
/* 34EC4 800446C4 00000000 */   nop
.L800446C8:
/* 34EC8 800446C8 1000228E */  lw         $v0, 0x10($s1)
/* 34ECC 800446CC FFFE0324 */  addiu      $v1, $zero, -0x101
/* 34ED0 800446D0 24104300 */  and        $v0, $v0, $v1
/* 34ED4 800446D4 100022AE */  sw         $v0, 0x10($s1)
.L800446D8:
/* 34ED8 800446D8 C987010C */  jal        DisplayActorInformation
/* 34EDC 800446DC 21202002 */   addu      $a0, $s1, $zero
/* 34EE0 800446E0 2001248E */  lw         $a0, 0x120($s1)
/* 34EE4 800446E4 00000000 */  nop
/* 34EE8 800446E8 5800858C */  lw         $a1, 0x58($a0)
/* 34EEC 800446EC 1400228E */  lw         $v0, 0x14($s1)
/* 34EF0 800446F0 0000A384 */  lh         $v1, 0x0($a1)
/* 34EF4 800446F4 00000000 */  nop
/* 34EF8 800446F8 18006200 */  mult       $v1, $v0
/* 34EFC 800446FC 12180000 */  mflo       $v1
/* 34F00 80044700 031A0300 */  sra        $v1, $v1, 8
/* 34F04 80044704 0000A3A4 */  sh         $v1, 0x0($a1)
/* 34F08 80044708 1400228E */  lw         $v0, 0x14($s1)
/* 34F0C 8004470C 0200A524 */  addiu      $a1, $a1, 0x2
/* 34F10 80044710 80100200 */  sll        $v0, $v0, 2
/* 34F14 80044714 23100200 */  negu       $v0, $v0
/* 34F18 80044718 03120200 */  sra        $v0, $v0, 8
/* 34F1C 8004471C 0000A2A4 */  sh         $v0, 0x0($a1)
/* 34F20 80044720 0200A524 */  addiu      $a1, $a1, 0x2
/* 34F24 80044724 0000A284 */  lh         $v0, 0x0($a1)
/* 34F28 80044728 1400238E */  lw         $v1, 0x14($s1)
/* 34F2C 8004472C 00000000 */  nop
/* 34F30 80044730 18004300 */  mult       $v0, $v1
/* 34F34 80044734 12100000 */  mflo       $v0
/* 34F38 80044738 03120200 */  sra        $v0, $v0, 8
/* 34F3C 8004473C 0000A2A4 */  sh         $v0, 0x0($a1)
.L80044740:
/* 34F40 80044740 2800BF8F */  lw         $ra, 0x28($sp)
/* 34F44 80044744 2400B38F */  lw         $s3, 0x24($sp)
/* 34F48 80044748 2000B28F */  lw         $s2, 0x20($sp)
/* 34F4C 8004474C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 34F50 80044750 1800B08F */  lw         $s0, 0x18($sp)
/* 34F54 80044754 0800E003 */  jr         $ra
/* 34F58 80044758 3000BD27 */   addiu     $sp, $sp, 0x30
.size AudAttackBrains, . - AudAttackBrains
