.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetupActorCustomSizes
/* 1262C 80021E2C 21488000 */  addu       $t1, $a0, $zero
/* 12630 80021E30 F000228D */  lw         $v0, 0xF0($t1)
/* 12634 80021E34 2150A000 */  addu       $t2, $a1, $zero
/* 12638 80021E38 480022AD */  sw         $v0, 0x48($t1)
/* 1263C 80021E3C 2F000224 */  addiu      $v0, $zero, 0x2F
/* 12640 80021E40 0C004215 */  bne        $t2, $v0, .L80021E74
/* 12644 80021E44 13000224 */   addiu     $v0, $zero, 0x13
/* 12648 80021E48 32000224 */  addiu      $v0, $zero, 0x32
/* 1264C 80021E4C 40000324 */  addiu      $v1, $zero, 0x40
/* 12650 80021E50 480022AD */  sw         $v0, 0x48($t1)
/* 12654 80021E54 18000224 */  addiu      $v0, $zero, 0x18
/* 12658 80021E58 F00023AD */  sw         $v1, 0xF0($t1)
/* 1265C 80021E5C 200022AD */  sw         $v0, 0x20($t1)
/* 12660 80021E60 240022AD */  sw         $v0, 0x24($t1)
/* 12664 80021E64 280022AD */  sw         $v0, 0x28($t1)
/* 12668 80021E68 4C0023AD */  sw         $v1, 0x4C($t1)
/* 1266C 80021E6C 500023AD */  sw         $v1, 0x50($t1)
/* 12670 80021E70 13000224 */  addiu      $v0, $zero, 0x13
.L80021E74:
/* 12674 80021E74 0B004215 */  bne        $t2, $v0, .L80021EA4
/* 12678 80021E78 15000224 */   addiu     $v0, $zero, 0x15
/* 1267C 80021E7C E6000224 */  addiu      $v0, $zero, 0xE6
/* 12680 80021E80 5A000324 */  addiu      $v1, $zero, 0x5A
/* 12684 80021E84 480022AD */  sw         $v0, 0x48($t1)
/* 12688 80021E88 30000224 */  addiu      $v0, $zero, 0x30
/* 1268C 80021E8C 200023AD */  sw         $v1, 0x20($t1)
/* 12690 80021E90 240022AD */  sw         $v0, 0x24($t1)
/* 12694 80021E94 280023AD */  sw         $v1, 0x28($t1)
/* 12698 80021E98 4C0023AD */  sw         $v1, 0x4C($t1)
/* 1269C 80021E9C 500023AD */  sw         $v1, 0x50($t1)
/* 126A0 80021EA0 15000224 */  addiu      $v0, $zero, 0x15
.L80021EA4:
/* 126A4 80021EA4 04004215 */  bne        $t2, $v0, .L80021EB8
/* 126A8 80021EA8 16000224 */   addiu     $v0, $zero, 0x16
/* 126AC 80021EAC 5A000224 */  addiu      $v0, $zero, 0x5A
/* 126B0 80021EB0 480022AD */  sw         $v0, 0x48($t1)
/* 126B4 80021EB4 16000224 */  addiu      $v0, $zero, 0x16
.L80021EB8:
/* 126B8 80021EB8 04004215 */  bne        $t2, $v0, .L80021ECC
/* 126BC 80021EBC 17000224 */   addiu     $v0, $zero, 0x17
/* 126C0 80021EC0 C8000224 */  addiu      $v0, $zero, 0xC8
/* 126C4 80021EC4 480022AD */  sw         $v0, 0x48($t1)
/* 126C8 80021EC8 17000224 */  addiu      $v0, $zero, 0x17
.L80021ECC:
/* 126CC 80021ECC 04004215 */  bne        $t2, $v0, .L80021EE0
/* 126D0 80021ED0 18000224 */   addiu     $v0, $zero, 0x18
/* 126D4 80021ED4 8C000224 */  addiu      $v0, $zero, 0x8C
/* 126D8 80021ED8 480022AD */  sw         $v0, 0x48($t1)
/* 126DC 80021EDC 18000224 */  addiu      $v0, $zero, 0x18
.L80021EE0:
/* 126E0 80021EE0 04004215 */  bne        $t2, $v0, .L80021EF4
/* 126E4 80021EE4 19000224 */   addiu     $v0, $zero, 0x19
/* 126E8 80021EE8 A0000224 */  addiu      $v0, $zero, 0xA0
/* 126EC 80021EEC 480022AD */  sw         $v0, 0x48($t1)
/* 126F0 80021EF0 19000224 */  addiu      $v0, $zero, 0x19
.L80021EF4:
/* 126F4 80021EF4 04004215 */  bne        $t2, $v0, .L80021F08
/* 126F8 80021EF8 1A000224 */   addiu     $v0, $zero, 0x1A
/* 126FC 80021EFC A0000224 */  addiu      $v0, $zero, 0xA0
/* 12700 80021F00 480022AD */  sw         $v0, 0x48($t1)
/* 12704 80021F04 1A000224 */  addiu      $v0, $zero, 0x1A
.L80021F08:
/* 12708 80021F08 04004215 */  bne        $t2, $v0, .L80021F1C
/* 1270C 80021F0C 1B000224 */   addiu     $v0, $zero, 0x1B
/* 12710 80021F10 8C000224 */  addiu      $v0, $zero, 0x8C
/* 12714 80021F14 480022AD */  sw         $v0, 0x48($t1)
/* 12718 80021F18 1B000224 */  addiu      $v0, $zero, 0x1B
.L80021F1C:
/* 1271C 80021F1C 04004215 */  bne        $t2, $v0, .L80021F30
/* 12720 80021F20 1C000224 */   addiu     $v0, $zero, 0x1C
/* 12724 80021F24 A0000224 */  addiu      $v0, $zero, 0xA0
/* 12728 80021F28 480022AD */  sw         $v0, 0x48($t1)
/* 1272C 80021F2C 1C000224 */  addiu      $v0, $zero, 0x1C
.L80021F30:
/* 12730 80021F30 04004215 */  bne        $t2, $v0, .L80021F44
/* 12734 80021F34 E3FF4225 */   addiu     $v0, $t2, -0x1D
/* 12738 80021F38 32000224 */  addiu      $v0, $zero, 0x32
/* 1273C 80021F3C 480022AD */  sw         $v0, 0x48($t1)
/* 12740 80021F40 E3FF4225 */  addiu      $v0, $t2, -0x1D
.L80021F44:
/* 12744 80021F44 0300422C */  sltiu      $v0, $v0, 0x3
/* 12748 80021F48 02004010 */  beqz       $v0, .L80021F54
/* 1274C 80021F4C 6E000224 */   addiu     $v0, $zero, 0x6E
/* 12750 80021F50 480022AD */  sw         $v0, 0x48($t1)
.L80021F54:
/* 12754 80021F54 07000224 */  addiu      $v0, $zero, 0x7
/* 12758 80021F58 04004215 */  bne        $t2, $v0, .L80021F6C
/* 1275C 80021F5C DFFF4225 */   addiu     $v0, $t2, -0x21
/* 12760 80021F60 64000224 */  addiu      $v0, $zero, 0x64
/* 12764 80021F64 480022AD */  sw         $v0, 0x48($t1)
/* 12768 80021F68 DFFF4225 */  addiu      $v0, $t2, -0x21
.L80021F6C:
/* 1276C 80021F6C 0300422C */  sltiu      $v0, $v0, 0x3
/* 12770 80021F70 03004014 */  bnez       $v0, .L80021F80
/* 12774 80021F74 34000224 */   addiu     $v0, $zero, 0x34
/* 12778 80021F78 14004215 */  bne        $t2, $v0, .L80021FCC
/* 1277C 80021F7C 22000224 */   addiu     $v0, $zero, 0x22
.L80021F80:
/* 12780 80021F80 5805828F */  lw         $v0, %gp_rel(TESTABILITYPROXIMITY)($gp)
/* 12784 80021F84 5C05838F */  lw         $v1, %gp_rel(TESTBODYPROXIMITY)($gp)
/* 12788 80021F88 6005848F */  lw         $a0, %gp_rel(TESTDEPTHXOFF)($gp)
/* 1278C 80021F8C 6805858F */  lw         $a1, %gp_rel(TESTDEPTHYOFF)($gp)
/* 12790 80021F90 6405868F */  lw         $a2, %gp_rel(TESTDEPTHZOFF)($gp)
/* 12794 80021F94 5005878F */  lw         $a3, %gp_rel(TESTENVCOLLISIONWIDTH)($gp)
/* 12798 80021F98 5405888F */  lw         $t0, %gp_rel(TESTSHADOWSIZE)($gp)
/* 1279C 80021F9C 4C0022AD */  sw         $v0, 0x4C($t1)
/* 127A0 80021FA0 1000228D */  lw         $v0, 0x10($t1)
/* 127A4 80021FA4 500023AD */  sw         $v1, 0x50($t1)
/* 127A8 80021FA8 FFF70324 */  addiu      $v1, $zero, -0x801
/* 127AC 80021FAC 200024AD */  sw         $a0, 0x20($t1)
/* 127B0 80021FB0 240025AD */  sw         $a1, 0x24($t1)
/* 127B4 80021FB4 280026AD */  sw         $a2, 0x28($t1)
/* 127B8 80021FB8 F00027AD */  sw         $a3, 0xF0($t1)
/* 127BC 80021FBC 480028AD */  sw         $t0, 0x48($t1)
/* 127C0 80021FC0 24104300 */  and        $v0, $v0, $v1
/* 127C4 80021FC4 100022AD */  sw         $v0, 0x10($t1)
/* 127C8 80021FC8 22000224 */  addiu      $v0, $zero, 0x22
.L80021FCC:
/* 127CC 80021FCC 02004215 */  bne        $t2, $v0, .L80021FD8
/* 127D0 80021FD0 0A000224 */   addiu     $v0, $zero, 0xA
/* 127D4 80021FD4 240022AD */  sw         $v0, 0x24($t1)
.L80021FD8:
/* 127D8 80021FD8 0800E003 */  jr         $ra
/* 127DC 80021FDC 00000000 */   nop
.size SetupActorCustomSizes, . - SetupActorCustomSizes
