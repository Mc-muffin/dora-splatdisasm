.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitJumpActor
/* 12D90 80022590 50FFBD27 */  addiu      $sp, $sp, -0xB0
/* 12D94 80022594 0A80023C */  lui        $v0, %hi(AnimationList)
/* 12D98 80022598 A000B4AF */  sw         $s4, 0xA0($sp)
/* 12D9C 8002259C 80515424 */  addiu      $s4, $v0, %lo(AnimationList)
/* 12DA0 800225A0 40190500 */  sll        $v1, $a1, 5
/* 12DA4 800225A4 23186500 */  subu       $v1, $v1, $a1
/* 12DA8 800225A8 9400B1AF */  sw         $s1, 0x94($sp)
/* 12DAC 800225AC 80880300 */  sll        $s1, $v1, 2
/* 12DB0 800225B0 A400B5AF */  sw         $s5, 0xA4($sp)
/* 12DB4 800225B4 21A83402 */  addu       $s5, $s1, $s4
/* 12DB8 800225B8 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 12DBC 800225BC 21988000 */  addu       $s3, $a0, $zero
/* 12DC0 800225C0 1000A427 */  addiu      $a0, $sp, 0x10
/* 12DC4 800225C4 0180053C */  lui        $a1, %hi(D_80010878)
/* 12DC8 800225C8 7808A524 */  addiu      $a1, $a1, %lo(D_80010878)
/* 12DCC 800225CC 9800B2AF */  sw         $s2, 0x98($sp)
/* 12DD0 800225D0 2190C000 */  addu       $s2, $a2, $zero
/* 12DD4 800225D4 21306002 */  addu       $a2, $s3, $zero
/* 12DD8 800225D8 A800BFAF */  sw         $ra, 0xA8($sp)
/* 12DDC 800225DC 9000B0AF */  sw         $s0, 0x90($sp)
/* 12DE0 800225E0 0000B08E */  lw         $s0, 0x0($s5)
/* 12DE4 800225E4 53C5010C */  jal        sprintf
/* 12DE8 800225E8 21384002 */   addu      $a3, $s2, $zero
/* 12DEC 800225EC BB5C010C */  jal        FileExist
/* 12DF0 800225F0 1000A427 */   addiu     $a0, $sp, 0x10
/* 12DF4 800225F4 06004018 */  blez       $v0, .L80022610
/* 12DF8 800225F8 00000000 */   nop
/* 12DFC 800225FC 52E2000C */  jal        LoadAnimations
/* 12E00 80022600 1000A427 */   addiu     $a0, $sp, 0x10
/* 12E04 80022604 21189102 */  addu       $v1, $s4, $s1
/* 12E08 80022608 280062AC */  sw         $v0, 0x28($v1)
/* 12E0C 8002260C 01001026 */  addiu      $s0, $s0, 0x1
.L80022610:
/* 12E10 80022610 1000A427 */  addiu      $a0, $sp, 0x10
/* 12E14 80022614 0180053C */  lui        $a1, %hi(D_80010888)
/* 12E18 80022618 8808A524 */  addiu      $a1, $a1, %lo(D_80010888)
/* 12E1C 8002261C 21306002 */  addu       $a2, $s3, $zero
/* 12E20 80022620 53C5010C */  jal        sprintf
/* 12E24 80022624 21384002 */   addu      $a3, $s2, $zero
/* 12E28 80022628 BB5C010C */  jal        FileExist
/* 12E2C 8002262C 1000A427 */   addiu     $a0, $sp, 0x10
/* 12E30 80022630 06004018 */  blez       $v0, .L8002264C
/* 12E34 80022634 00000000 */   nop
/* 12E38 80022638 52E2000C */  jal        LoadAnimations
/* 12E3C 8002263C 1000A427 */   addiu     $a0, $sp, 0x10
/* 12E40 80022640 21189102 */  addu       $v1, $s4, $s1
/* 12E44 80022644 3C0062AC */  sw         $v0, 0x3C($v1)
/* 12E48 80022648 01001026 */  addiu      $s0, $s0, 0x1
.L8002264C:
/* 12E4C 8002264C 1000A427 */  addiu      $a0, $sp, 0x10
/* 12E50 80022650 0180053C */  lui        $a1, %hi(D_80010898)
/* 12E54 80022654 9808A524 */  addiu      $a1, $a1, %lo(D_80010898)
/* 12E58 80022658 21306002 */  addu       $a2, $s3, $zero
/* 12E5C 8002265C 53C5010C */  jal        sprintf
/* 12E60 80022660 21384002 */   addu      $a3, $s2, $zero
/* 12E64 80022664 BB5C010C */  jal        FileExist
/* 12E68 80022668 1000A427 */   addiu     $a0, $sp, 0x10
/* 12E6C 8002266C 06004018 */  blez       $v0, .L80022688
/* 12E70 80022670 00000000 */   nop
/* 12E74 80022674 52E2000C */  jal        LoadAnimations
/* 12E78 80022678 1000A427 */   addiu     $a0, $sp, 0x10
/* 12E7C 8002267C 21189102 */  addu       $v1, $s4, $s1
/* 12E80 80022680 2C0062AC */  sw         $v0, 0x2C($v1)
/* 12E84 80022684 01001026 */  addiu      $s0, $s0, 0x1
.L80022688:
/* 12E88 80022688 1000A427 */  addiu      $a0, $sp, 0x10
/* 12E8C 8002268C 0180053C */  lui        $a1, %hi(D_800108A8)
/* 12E90 80022690 A808A524 */  addiu      $a1, $a1, %lo(D_800108A8)
/* 12E94 80022694 21306002 */  addu       $a2, $s3, $zero
/* 12E98 80022698 53C5010C */  jal        sprintf
/* 12E9C 8002269C 21384002 */   addu      $a3, $s2, $zero
/* 12EA0 800226A0 BB5C010C */  jal        FileExist
/* 12EA4 800226A4 1000A427 */   addiu     $a0, $sp, 0x10
/* 12EA8 800226A8 06004018 */  blez       $v0, .L800226C4
/* 12EAC 800226AC 00000000 */   nop
/* 12EB0 800226B0 52E2000C */  jal        LoadAnimations
/* 12EB4 800226B4 1000A427 */   addiu     $a0, $sp, 0x10
/* 12EB8 800226B8 21189102 */  addu       $v1, $s4, $s1
/* 12EBC 800226BC 400062AC */  sw         $v0, 0x40($v1)
/* 12EC0 800226C0 01001026 */  addiu      $s0, $s0, 0x1
.L800226C4:
/* 12EC4 800226C4 1000A427 */  addiu      $a0, $sp, 0x10
/* 12EC8 800226C8 0180053C */  lui        $a1, %hi(D_800108B8)
/* 12ECC 800226CC B808A524 */  addiu      $a1, $a1, %lo(D_800108B8)
/* 12ED0 800226D0 21306002 */  addu       $a2, $s3, $zero
/* 12ED4 800226D4 53C5010C */  jal        sprintf
/* 12ED8 800226D8 21384002 */   addu      $a3, $s2, $zero
/* 12EDC 800226DC BB5C010C */  jal        FileExist
/* 12EE0 800226E0 1000A427 */   addiu     $a0, $sp, 0x10
/* 12EE4 800226E4 06004018 */  blez       $v0, .L80022700
/* 12EE8 800226E8 00000000 */   nop
/* 12EEC 800226EC 52E2000C */  jal        LoadAnimations
/* 12EF0 800226F0 1000A427 */   addiu     $a0, $sp, 0x10
/* 12EF4 800226F4 21189102 */  addu       $v1, $s4, $s1
/* 12EF8 800226F8 440062AC */  sw         $v0, 0x44($v1)
/* 12EFC 800226FC 01001026 */  addiu      $s0, $s0, 0x1
.L80022700:
/* 12F00 80022700 1000A427 */  addiu      $a0, $sp, 0x10
/* 12F04 80022704 0180053C */  lui        $a1, %hi(D_800108C8)
/* 12F08 80022708 C808A524 */  addiu      $a1, $a1, %lo(D_800108C8)
/* 12F0C 8002270C 21306002 */  addu       $a2, $s3, $zero
/* 12F10 80022710 53C5010C */  jal        sprintf
/* 12F14 80022714 21384002 */   addu      $a3, $s2, $zero
/* 12F18 80022718 BB5C010C */  jal        FileExist
/* 12F1C 8002271C 1000A427 */   addiu     $a0, $sp, 0x10
/* 12F20 80022720 06004018 */  blez       $v0, .L8002273C
/* 12F24 80022724 00000000 */   nop
/* 12F28 80022728 52E2000C */  jal        LoadAnimations
/* 12F2C 8002272C 1000A427 */   addiu     $a0, $sp, 0x10
/* 12F30 80022730 21189102 */  addu       $v1, $s4, $s1
/* 12F34 80022734 480062AC */  sw         $v0, 0x48($v1)
/* 12F38 80022738 01001026 */  addiu      $s0, $s0, 0x1
.L8002273C:
/* 12F3C 8002273C 1000A427 */  addiu      $a0, $sp, 0x10
/* 12F40 80022740 0180053C */  lui        $a1, %hi(D_800108D8)
/* 12F44 80022744 D808A524 */  addiu      $a1, $a1, %lo(D_800108D8)
/* 12F48 80022748 21306002 */  addu       $a2, $s3, $zero
/* 12F4C 8002274C 53C5010C */  jal        sprintf
/* 12F50 80022750 21384002 */   addu      $a3, $s2, $zero
/* 12F54 80022754 BB5C010C */  jal        FileExist
/* 12F58 80022758 1000A427 */   addiu     $a0, $sp, 0x10
/* 12F5C 8002275C 06004018 */  blez       $v0, .L80022778
/* 12F60 80022760 00000000 */   nop
/* 12F64 80022764 52E2000C */  jal        LoadAnimations
/* 12F68 80022768 1000A427 */   addiu     $a0, $sp, 0x10
/* 12F6C 8002276C 21189102 */  addu       $v1, $s4, $s1
/* 12F70 80022770 4C0062AC */  sw         $v0, 0x4C($v1)
/* 12F74 80022774 01001026 */  addiu      $s0, $s0, 0x1
.L80022778:
/* 12F78 80022778 A800BF8F */  lw         $ra, 0xA8($sp)
/* 12F7C 8002277C 0000B0AE */  sw         $s0, 0x0($s5)
/* 12F80 80022780 A400B58F */  lw         $s5, 0xA4($sp)
/* 12F84 80022784 A000B48F */  lw         $s4, 0xA0($sp)
/* 12F88 80022788 9C00B38F */  lw         $s3, 0x9C($sp)
/* 12F8C 8002278C 9800B28F */  lw         $s2, 0x98($sp)
/* 12F90 80022790 9400B18F */  lw         $s1, 0x94($sp)
/* 12F94 80022794 9000B08F */  lw         $s0, 0x90($sp)
/* 12F98 80022798 0800E003 */  jr         $ra
/* 12F9C 8002279C B000BD27 */   addiu     $sp, $sp, 0xB0
.size InitJumpActor, . - InitJumpActor
