.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SpawnCheckCollision
/* 2F62C 8003EE2C 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 2F630 8003EE30 B8C05824 */  addiu      $t8, $v0, %lo(SpawnServiceList)
/* 2F634 8003EE34 21780000 */  addu       $t7, $zero, $zero
/* 2F638 8003EE38 21588000 */  addu       $t3, $a0, $zero
/* 2F63C 8003EE3C F0FF0324 */  addiu      $v1, $zero, -0x10
/* 2F640 8003EE40 1000628D */  lw         $v0, 0x10($t3)
/* 2F644 8003EE44 0980193C */  lui        $t9, %hi(NumSpawnedActors)
/* 2F648 8003EE48 044F398F */  lw         $t9, %lo(NumSpawnedActors)($t9)
/* 2F64C 8003EE4C 24104300 */  and        $v0, $v0, $v1
/* 2F650 8003EE50 6200201B */  blez       $t9, .L8003EFDC
/* 2F654 8003EE54 100062AD */   sw        $v0, 0x10($t3)
/* 2F658 8003EE58 6C000A27 */  addiu      $t2, $t8, 0x6C
.L8003EE5C:
/* 2F65C 8003EE5C 5A007811 */  beq        $t3, $t8, .L8003EFC8
/* 2F660 8003EE60 00000000 */   nop
/* 2F664 8003EE64 A4FF428D */  lw         $v0, -0x5C($t2)
/* 2F668 8003EE68 00000000 */  nop
/* 2F66C 8003EE6C 00014230 */  andi       $v0, $v0, 0x100
/* 2F670 8003EE70 55004010 */  beqz       $v0, .L8003EFC8
/* 2F674 8003EE74 00000000 */   nop
/* 2F678 8003EE78 D8FF428D */  lw         $v0, -0x28($t2)
/* 2F67C 8003EE7C 00000000 */  nop
/* 2F680 8003EE80 1C00428C */  lw         $v0, 0x1C($v0)
/* 2F684 8003EE84 00000000 */  nop
/* 2F688 8003EE88 60004D30 */  andi       $t5, $v0, 0x60
/* 2F68C 8003EE8C 4E00A011 */  beqz       $t5, .L8003EFC8
/* 2F690 8003EE90 24104500 */   and       $v0, $v0, $a1
/* 2F694 8003EE94 4C004010 */  beqz       $v0, .L8003EFC8
/* 2F698 8003EE98 6C006625 */   addiu     $a2, $t3, 0x6C
/* 2F69C 8003EE9C 0400C28C */  lw         $v0, 0x4($a2)
/* 2F6A0 8003EEA0 0400438D */  lw         $v1, 0x4($t2)
/* 2F6A4 8003EEA4 00000000 */  nop
/* 2F6A8 8003EEA8 23104300 */  subu       $v0, $v0, $v1
/* 2F6AC 8003EEAC 18004200 */  mult       $v0, $v0
/* 2F6B0 8003EEB0 0C00C48C */  lw         $a0, 0xC($a2)
/* 2F6B4 8003EEB4 0C00428D */  lw         $v0, 0xC($t2)
/* 2F6B8 8003EEB8 12600000 */  mflo       $t4
/* 2F6BC 8003EEBC 23208200 */  subu       $a0, $a0, $v0
/* 2F6C0 8003EEC0 00000000 */  nop
/* 2F6C4 8003EEC4 18008400 */  mult       $a0, $a0
/* 2F6C8 8003EEC8 E0FF438D */  lw         $v1, -0x20($t2)
/* 2F6CC 8003EECC 4C00628D */  lw         $v0, 0x4C($t3)
/* 2F6D0 8003EED0 12200000 */  mflo       $a0
/* 2F6D4 8003EED4 21104300 */  addu       $v0, $v0, $v1
/* 2F6D8 8003EED8 00000000 */  nop
/* 2F6DC 8003EEDC 18004200 */  mult       $v0, $v0
/* 2F6E0 8003EEE0 5000638D */  lw         $v1, 0x50($t3)
/* 2F6E4 8003EEE4 E4FF428D */  lw         $v0, -0x1C($t2)
/* 2F6E8 8003EEE8 12480000 */  mflo       $t1
/* 2F6EC 8003EEEC 21186200 */  addu       $v1, $v1, $v0
/* 2F6F0 8003EEF0 00000000 */  nop
/* 2F6F4 8003EEF4 18006300 */  mult       $v1, $v1
/* 2F6F8 8003EEF8 21408401 */  addu       $t0, $t4, $a0
/* 2F6FC 8003EEFC 2A102801 */  slt        $v0, $t1, $t0
/* 2F700 8003EF00 12380000 */  mflo       $a3
/* 2F704 8003EF04 11004014 */  bnez       $v0, .L8003EF4C
/* 2F708 8003EF08 21700000 */   addu      $t6, $zero, $zero
/* 2F70C 8003EF0C 0800C28C */  lw         $v0, 0x8($a2)
/* 2F710 8003EF10 0800438D */  lw         $v1, 0x8($t2)
/* 2F714 8003EF14 00000000 */  nop
/* 2F718 8003EF18 23104300 */  subu       $v0, $v0, $v1
/* 2F71C 8003EF1C 18004200 */  mult       $v0, $v0
/* 2F720 8003EF20 12100000 */  mflo       $v0
/* 2F724 8003EF24 21208201 */  addu       $a0, $t4, $v0
/* 2F728 8003EF28 2A182401 */  slt        $v1, $t1, $a0
/* 2F72C 8003EF2C 07006014 */  bnez       $v1, .L8003EF4C
/* 2F730 8003EF30 2A10E800 */   slt       $v0, $a3, $t0
/* 2F734 8003EF34 05004014 */  bnez       $v0, .L8003EF4C
/* 2F738 8003EF38 02000E24 */   addiu     $t6, $zero, 0x2
/* 2F73C 8003EF3C 2A10E400 */  slt        $v0, $a3, $a0
/* 2F740 8003EF40 02004014 */  bnez       $v0, .L8003EF4C
/* 2F744 8003EF44 00000000 */   nop
/* 2F748 8003EF48 01000E24 */  addiu      $t6, $zero, 0x1
.L8003EF4C:
/* 2F74C 8003EF4C 1E00C011 */  beqz       $t6, .L8003EFC8
/* 2F750 8003EF50 4000A231 */   andi      $v0, $t5, 0x40
/* 2F754 8003EF54 06004010 */  beqz       $v0, .L8003EF70
/* 2F758 8003EF58 2000A231 */   andi      $v0, $t5, 0x20
/* 2F75C 8003EF5C 1000628D */  lw         $v0, 0x10($t3)
/* 2F760 8003EF60 00000000 */  nop
/* 2F764 8003EF64 02004234 */  ori        $v0, $v0, 0x2
/* 2F768 8003EF68 100062AD */  sw         $v0, 0x10($t3)
/* 2F76C 8003EF6C 2000A231 */  andi       $v0, $t5, 0x20
.L8003EF70:
/* 2F770 8003EF70 06004010 */  beqz       $v0, .L8003EF8C
/* 2F774 8003EF74 01000224 */   addiu     $v0, $zero, 0x1
/* 2F778 8003EF78 1000628D */  lw         $v0, 0x10($t3)
/* 2F77C 8003EF7C 00000000 */  nop
/* 2F780 8003EF80 01004234 */  ori        $v0, $v0, 0x1
/* 2F784 8003EF84 100062AD */  sw         $v0, 0x10($t3)
/* 2F788 8003EF88 01000224 */  addiu      $v0, $zero, 0x1
.L8003EF8C:
/* 2F78C 8003EF8C 0600C215 */  bne        $t6, $v0, .L8003EFA8
/* 2F790 8003EF90 02000224 */   addiu     $v0, $zero, 0x2
/* 2F794 8003EF94 1000628D */  lw         $v0, 0x10($t3)
/* 2F798 8003EF98 00000000 */  nop
/* 2F79C 8003EF9C 08004234 */  ori        $v0, $v0, 0x8
/* 2F7A0 8003EFA0 100062AD */  sw         $v0, 0x10($t3)
/* 2F7A4 8003EFA4 02000224 */  addiu      $v0, $zero, 0x2
.L8003EFA8:
/* 2F7A8 8003EFA8 0500C215 */  bne        $t6, $v0, .L8003EFC0
/* 2F7AC 8003EFAC 00000000 */   nop
/* 2F7B0 8003EFB0 1000628D */  lw         $v0, 0x10($t3)
/* 2F7B4 8003EFB4 00000000 */  nop
/* 2F7B8 8003EFB8 04004234 */  ori        $v0, $v0, 0x4
/* 2F7BC 8003EFBC 100062AD */  sw         $v0, 0x10($t3)
.L8003EFC0:
/* 2F7C0 8003EFC0 0800E003 */  jr         $ra
/* 2F7C4 8003EFC4 21100003 */   addu      $v0, $t8, $zero
.L8003EFC8:
/* 2F7C8 8003EFC8 0100EF25 */  addiu      $t7, $t7, 0x1
/* 2F7CC 8003EFCC 88014A25 */  addiu      $t2, $t2, 0x188
/* 2F7D0 8003EFD0 2A10F901 */  slt        $v0, $t7, $t9
/* 2F7D4 8003EFD4 A1FF4014 */  bnez       $v0, .L8003EE5C
/* 2F7D8 8003EFD8 88011827 */   addiu     $t8, $t8, 0x188
.L8003EFDC:
/* 2F7DC 8003EFDC 0800E003 */  jr         $ra
/* 2F7E0 8003EFE0 21100000 */   addu      $v0, $zero, $zero
.size SpawnCheckCollision, . - SpawnCheckCollision
