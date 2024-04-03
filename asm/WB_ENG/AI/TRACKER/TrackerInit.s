.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TrackerInit
/* 37610 80046E10 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 37614 80046E14 1800B2AF */  sw         $s2, 0x18($sp)
/* 37618 80046E18 21908000 */  addu       $s2, $a0, $zero
/* 3761C 80046E1C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 37620 80046E20 1400B1AF */  sw         $s1, 0x14($sp)
/* 37624 80046E24 1000B0AF */  sw         $s0, 0x10($sp)
/* 37628 80046E28 4400518E */  lw         $s1, 0x44($s2)
/* 3762C 80046E2C DA25010C */  jal        GenericActorInit
/* 37630 80046E30 00000000 */   nop
/* 37634 80046E34 1C00238E */  lw         $v1, 0x1C($s1)
/* 37638 80046E38 2801508E */  lw         $s0, 0x128($s2)
/* 3763C 80046E3C 00106334 */  ori        $v1, $v1, 0x1000
/* 37640 80046E40 1C0023AE */  sw         $v1, 0x1C($s1)
/* 37644 80046E44 200000AE */  sw         $zero, 0x20($s0)
/* 37648 80046E48 240000AE */  sw         $zero, 0x24($s0)
/* 3764C 80046E4C 100000A6 */  sh         $zero, 0x10($s0)
/* 37650 80046E50 4400428E */  lw         $v0, 0x44($s2)
/* 37654 80046E54 00000000 */  nop
/* 37658 80046E58 1000448C */  lw         $a0, 0x10($v0)
/* 3765C 80046E5C 0B91000C */  jal        Halt_at_HitActor
/* 37660 80046E60 00000000 */   nop
/* 37664 80046E64 02004010 */  beqz       $v0, .L80046E70
/* 37668 80046E68 00000000 */   nop
/* 3766C 80046E6C 1E0000A6 */  sh         $zero, 0x1E($s0)
.L80046E70:
/* 37670 80046E70 1C00228E */  lw         $v0, 0x1C($s1)
/* 37674 80046E74 00000000 */  nop
/* 37678 80046E78 00014230 */  andi       $v0, $v0, 0x100
/* 3767C 80046E7C 08004010 */  beqz       $v0, .L80046EA0
/* 37680 80046E80 00000000 */   nop
/* 37684 80046E84 7087010C */  jal        FindLocationSphere
/* 37688 80046E88 21204002 */   addu      $a0, $s2, $zero
/* 3768C 80046E8C 21204002 */  addu       $a0, $s2, $zero
/* 37690 80046E90 6D12010C */  jal        AttachAudAttackActors
/* 37694 80046E94 21284000 */   addu      $a1, $v0, $zero
/* 37698 80046E98 A91B0108 */  j          .L80046EA4
/* 3769C 80046E9C 2C0002AE */   sw        $v0, 0x2C($s0)
.L80046EA0:
/* 376A0 80046EA0 2C0000AE */  sw         $zero, 0x2C($s0)
.L80046EA4:
/* 376A4 80046EA4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 376A8 80046EA8 1800B28F */  lw         $s2, 0x18($sp)
/* 376AC 80046EAC 1400B18F */  lw         $s1, 0x14($sp)
/* 376B0 80046EB0 1000B08F */  lw         $s0, 0x10($sp)
/* 376B4 80046EB4 0800E003 */  jr         $ra
/* 376B8 80046EB8 2000BD27 */   addiu     $sp, $sp, 0x20
.size TrackerInit, . - TrackerInit
