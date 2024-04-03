.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitParticleEngine
/* 1FCCC 8002F4CC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 1FCD0 8002F4D0 3400B3AF */  sw         $s3, 0x34($sp)
/* 1FCD4 8002F4D4 0380133C */  lui        $s3, %hi(ParticleHayInit)
/* 1FCD8 8002F4D8 3800B4AF */  sw         $s4, 0x38($sp)
/* 1FCDC 8002F4DC 0380143C */  lui        $s4, %hi(ParticleHayReInit)
/* 1FCE0 8002F4E0 0A80023C */  lui        $v0, %hi(ParticleTypeTable)
/* 1FCE4 8002F4E4 D0844224 */  addiu      $v0, $v0, %lo(ParticleTypeTable)
/* 1FCE8 8002F4E8 16000324 */  addiu      $v1, $zero, 0x16
/* 1FCEC 8002F4EC 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 1FCF0 8002F4F0 4800BEAF */  sw         $fp, 0x48($sp)
/* 1FCF4 8002F4F4 4400B7AF */  sw         $s7, 0x44($sp)
/* 1FCF8 8002F4F8 4000B6AF */  sw         $s6, 0x40($sp)
/* 1FCFC 8002F4FC 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 1FD00 8002F500 3000B2AF */  sw         $s2, 0x30($sp)
/* 1FD04 8002F504 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 1FD08 8002F508 2800B0AF */  sw         $s0, 0x28($sp)
.L8002F50C:
/* 1FD0C 8002F50C 000040AC */  sw         $zero, 0x0($v0)
/* 1FD10 8002F510 040040AC */  sw         $zero, 0x4($v0)
/* 1FD14 8002F514 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 1FD18 8002F518 FCFF6104 */  bgez       $v1, .L8002F50C
/* 1FD1C 8002F51C 14004224 */   addiu     $v0, $v0, 0x14
/* 1FD20 8002F520 0F000424 */  addiu      $a0, $zero, 0xF
/* 1FD24 8002F524 0180053C */  lui        $a1, %hi(D_800118A4)
/* 1FD28 8002F528 A418A524 */  addiu      $a1, $a1, %lo(D_800118A4)
/* 1FD2C 8002F52C 01000624 */  addiu      $a2, $zero, 0x1
/* 1FD30 8002F530 01000724 */  addiu      $a3, $zero, 0x1
/* 1FD34 8002F534 10000224 */  addiu      $v0, $zero, 0x10
/* 1FD38 8002F538 E8031224 */  addiu      $s2, $zero, 0x3E8
/* 1FD3C 8002F53C 20001124 */  addiu      $s1, $zero, 0x20
/* 1FD40 8002F540 1000A2AF */  sw         $v0, 0x10($sp)
/* 1FD44 8002F544 0380023C */  lui        $v0, %hi(ParticleConfettiInit)
/* 1FD48 8002F548 44D94224 */  addiu      $v0, $v0, %lo(ParticleConfettiInit)
/* 1FD4C 8002F54C 0380033C */  lui        $v1, %hi(ParticleConfettiReInit)
/* 1FD50 8002F550 A0046324 */  addiu      $v1, $v1, %lo(ParticleConfettiReInit)
/* 1FD54 8002F554 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1FD58 8002F558 0380023C */  lui        $v0, %hi(ParticleBrain)
/* 1FD5C 8002F55C 08FC5024 */  addiu      $s0, $v0, %lo(ParticleBrain)
/* 1FD60 8002F560 1400B2AF */  sw         $s2, 0x14($sp)
/* 1FD64 8002F564 1800B1AF */  sw         $s1, 0x18($sp)
/* 1FD68 8002F568 2000A3AF */  sw         $v1, 0x20($sp)
/* 1FD6C 8002F56C EBA4000C */  jal        MakeParticleSlot
/* 1FD70 8002F570 2400B0AF */   sw        $s0, 0x24($sp)
/* 1FD74 8002F574 0980033C */  lui        $v1, %hi(gWorld)
/* 1FD78 8002F578 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 1FD7C 8002F57C 06000224 */  addiu      $v0, $zero, 0x6
/* 1FD80 8002F580 17006214 */  bne        $v1, $v0, .L8002F5E0
/* 1FD84 8002F584 11000424 */   addiu     $a0, $zero, 0x11
/* 1FD88 8002F588 0980023C */  lui        $v0, %hi(gLevel)
/* 1FD8C 8002F58C 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 1FD90 8002F590 00000000 */  nop
/* 1FD94 8002F594 13004014 */  bnez       $v0, .L8002F5E4
/* 1FD98 8002F598 0180053C */   lui       $a1, %hi(D_800118F0)
/* 1FD9C 8002F59C 11000424 */  addiu      $a0, $zero, 0x11
/* 1FDA0 8002F5A0 0180053C */  lui        $a1, %hi(D_800118CC)
/* 1FDA4 8002F5A4 CC18A524 */  addiu      $a1, $a1, %lo(D_800118CC)
/* 1FDA8 8002F5A8 01000624 */  addiu      $a2, $zero, 0x1
/* 1FDAC 8002F5AC 02000724 */  addiu      $a3, $zero, 0x2
/* 1FDB0 8002F5B0 0E000224 */  addiu      $v0, $zero, 0xE
/* 1FDB4 8002F5B4 1000A2AF */  sw         $v0, 0x10($sp)
/* 1FDB8 8002F5B8 C4D16226 */  addiu      $v0, $s3, %lo(ParticleHayInit)
/* 1FDBC 8002F5BC 68D58326 */  addiu      $v1, $s4, %lo(ParticleHayReInit)
/* 1FDC0 8002F5C0 1400B2AF */  sw         $s2, 0x14($sp)
/* 1FDC4 8002F5C4 1800B1AF */  sw         $s1, 0x18($sp)
/* 1FDC8 8002F5C8 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1FDCC 8002F5CC 2000A3AF */  sw         $v1, 0x20($sp)
/* 1FDD0 8002F5D0 EBA4000C */  jal        MakeParticleSlot
/* 1FDD4 8002F5D4 2400B0AF */   sw        $s0, 0x24($sp)
/* 1FDD8 8002F5D8 8BBD0008 */  j          .L8002F62C
/* 1FDDC 8002F5DC 01000424 */   addiu     $a0, $zero, 0x1
.L8002F5E0:
/* 1FDE0 8002F5E0 0180053C */  lui        $a1, %hi(D_800118F0)
.L8002F5E4:
/* 1FDE4 8002F5E4 F018A524 */  addiu      $a1, $a1, %lo(D_800118F0)
/* 1FDE8 8002F5E8 01000624 */  addiu      $a2, $zero, 0x1
/* 1FDEC 8002F5EC 02000724 */  addiu      $a3, $zero, 0x2
/* 1FDF0 8002F5F0 0E000224 */  addiu      $v0, $zero, 0xE
/* 1FDF4 8002F5F4 E8030324 */  addiu      $v1, $zero, 0x3E8
/* 1FDF8 8002F5F8 1000A2AF */  sw         $v0, 0x10($sp)
/* 1FDFC 8002F5FC 20000224 */  addiu      $v0, $zero, 0x20
/* 1FE00 8002F600 1400A3AF */  sw         $v1, 0x14($sp)
/* 1FE04 8002F604 C4D16326 */  addiu      $v1, $s3, %lo(ParticleHayInit)
/* 1FE08 8002F608 1800A2AF */  sw         $v0, 0x18($sp)
/* 1FE0C 8002F60C 68D58226 */  addiu      $v0, $s4, %lo(ParticleHayReInit)
/* 1FE10 8002F610 2000A2AF */  sw         $v0, 0x20($sp)
/* 1FE14 8002F614 0380023C */  lui        $v0, %hi(ParticleBrain)
/* 1FE18 8002F618 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 1FE1C 8002F61C 08FC4324 */  addiu      $v1, $v0, %lo(ParticleBrain)
/* 1FE20 8002F620 EBA4000C */  jal        MakeParticleSlot
/* 1FE24 8002F624 2400A3AF */   sw        $v1, 0x24($sp)
/* 1FE28 8002F628 01000424 */  addiu      $a0, $zero, 0x1
.L8002F62C:
/* 1FE2C 8002F62C 0180053C */  lui        $a1, %hi(D_80011914)
/* 1FE30 8002F630 1419A524 */  addiu      $a1, $a1, %lo(D_80011914)
/* 1FE34 8002F634 21300000 */  addu       $a2, $zero, $zero
/* 1FE38 8002F638 01000724 */  addiu      $a3, $zero, 0x1
/* 1FE3C 8002F63C 40060224 */  addiu      $v0, $zero, 0x640
/* 1FE40 8002F640 20000324 */  addiu      $v1, $zero, 0x20
/* 1FE44 8002F644 1400A2AF */  sw         $v0, 0x14($sp)
/* 1FE48 8002F648 0380023C */  lui        $v0, %hi(ParticleStunnerInit)
/* 1FE4C 8002F64C 44CB4224 */  addiu      $v0, $v0, %lo(ParticleStunnerInit)
/* 1FE50 8002F650 1800A3AF */  sw         $v1, 0x18($sp)
/* 1FE54 8002F654 0380033C */  lui        $v1, %hi(ParticleStunnerReInit)
/* 1FE58 8002F658 70CE6324 */  addiu      $v1, $v1, %lo(ParticleStunnerReInit)
/* 1FE5C 8002F65C 2000A3AF */  sw         $v1, 0x20($sp)
/* 1FE60 8002F660 0380033C */  lui        $v1, %hi(ParticleBrain)
/* 1FE64 8002F664 08FC7524 */  addiu      $s5, $v1, %lo(ParticleBrain)
/* 1FE68 8002F668 1000A7AF */  sw         $a3, 0x10($sp)
/* 1FE6C 8002F66C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1FE70 8002F670 EBA4000C */  jal        MakeParticleSlot
/* 1FE74 8002F674 2400B5AF */   sw        $s5, 0x24($sp)
/* 1FE78 8002F678 0B000424 */  addiu      $a0, $zero, 0xB
/* 1FE7C 8002F67C 0180053C */  lui        $a1, %hi(D_80011938)
/* 1FE80 8002F680 3819A524 */  addiu      $a1, $a1, %lo(D_80011938)
/* 1FE84 8002F684 01000624 */  addiu      $a2, $zero, 0x1
/* 1FE88 8002F688 01000724 */  addiu      $a3, $zero, 0x1
/* 1FE8C 8002F68C 0A001724 */  addiu      $s7, $zero, 0xA
/* 1FE90 8002F690 E8031E24 */  addiu      $fp, $zero, 0x3E8
/* 1FE94 8002F694 40001624 */  addiu      $s6, $zero, 0x40
/* 1FE98 8002F698 0380023C */  lui        $v0, %hi(ParticlePickupGetInit)
/* 1FE9C 8002F69C D0DA5424 */  addiu      $s4, $v0, %lo(ParticlePickupGetInit)
/* 1FEA0 8002F6A0 0380023C */  lui        $v0, %hi(ParticlePickupGetReInit)
/* 1FEA4 8002F6A4 6CDE4224 */  addiu      $v0, $v0, %lo(ParticlePickupGetReInit)
/* 1FEA8 8002F6A8 1000B7AF */  sw         $s7, 0x10($sp)
/* 1FEAC 8002F6AC 1400BEAF */  sw         $fp, 0x14($sp)
/* 1FEB0 8002F6B0 1800B6AF */  sw         $s6, 0x18($sp)
/* 1FEB4 8002F6B4 1C00B4AF */  sw         $s4, 0x1C($sp)
/* 1FEB8 8002F6B8 2000A2AF */  sw         $v0, 0x20($sp)
/* 1FEBC 8002F6BC EBA4000C */  jal        MakeParticleSlot
/* 1FEC0 8002F6C0 2400B5AF */   sw        $s5, 0x24($sp)
/* 1FEC4 8002F6C4 10000424 */  addiu      $a0, $zero, 0x10
/* 1FEC8 8002F6C8 0180123C */  lui        $s2, %hi(D_80011960)
/* 1FECC 8002F6CC 60195226 */  addiu      $s2, $s2, %lo(D_80011960)
/* 1FED0 8002F6D0 21284002 */  addu       $a1, $s2, $zero
/* 1FED4 8002F6D4 01000624 */  addiu      $a2, $zero, 0x1
/* 1FED8 8002F6D8 01000724 */  addiu      $a3, $zero, 0x1
/* 1FEDC 8002F6DC 10001324 */  addiu      $s3, $zero, 0x10
/* 1FEE0 8002F6E0 0380113C */  lui        $s1, %hi(ParticleGateInit)
/* 1FEE4 8002F6E4 60B13126 */  addiu      $s1, $s1, %lo(ParticleGateInit)
/* 1FEE8 8002F6E8 0380103C */  lui        $s0, %hi(ParticleGateReInit)
/* 1FEEC 8002F6EC 94AD1026 */  addiu      $s0, $s0, %lo(ParticleGateReInit)
/* 1FEF0 8002F6F0 1000B3AF */  sw         $s3, 0x10($sp)
/* 1FEF4 8002F6F4 1400A0AF */  sw         $zero, 0x14($sp)
/* 1FEF8 8002F6F8 1800B6AF */  sw         $s6, 0x18($sp)
/* 1FEFC 8002F6FC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1FF00 8002F700 2000B0AF */  sw         $s0, 0x20($sp)
/* 1FF04 8002F704 EBA4000C */  jal        MakeParticleSlot
/* 1FF08 8002F708 2400B5AF */   sw        $s5, 0x24($sp)
/* 1FF0C 8002F70C 14000424 */  addiu      $a0, $zero, 0x14
/* 1FF10 8002F710 21284002 */  addu       $a1, $s2, $zero
/* 1FF14 8002F714 01000624 */  addiu      $a2, $zero, 0x1
/* 1FF18 8002F718 01000724 */  addiu      $a3, $zero, 0x1
/* 1FF1C 8002F71C 1000B3AF */  sw         $s3, 0x10($sp)
/* 1FF20 8002F720 1400A0AF */  sw         $zero, 0x14($sp)
/* 1FF24 8002F724 1800B6AF */  sw         $s6, 0x18($sp)
/* 1FF28 8002F728 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1FF2C 8002F72C 2000B0AF */  sw         $s0, 0x20($sp)
/* 1FF30 8002F730 EBA4000C */  jal        MakeParticleSlot
/* 1FF34 8002F734 2400B5AF */   sw        $s5, 0x24($sp)
/* 1FF38 8002F738 0980033C */  lui        $v1, %hi(g_pickup_mesh)
/* 1FF3C 8002F73C F455638C */  lw         $v1, %lo(g_pickup_mesh)($v1)
/* 1FF40 8002F740 01000224 */  addiu      $v0, $zero, 0x1
/* 1FF44 8002F744 0E006214 */  bne        $v1, $v0, .L8002F780
/* 1FF48 8002F748 02000224 */   addiu     $v0, $zero, 0x2
/* 1FF4C 8002F74C 03000424 */  addiu      $a0, $zero, 0x3
/* 1FF50 8002F750 0180053C */  lui        $a1, %hi(D_80011984)
/* 1FF54 8002F754 8419A524 */  addiu      $a1, $a1, %lo(D_80011984)
/* 1FF58 8002F758 01000624 */  addiu      $a2, $zero, 0x1
/* 1FF5C 8002F75C 06000724 */  addiu      $a3, $zero, 0x6
/* 1FF60 8002F760 0380033C */  lui        $v1, %hi(ParticlePickupGetReInit)
/* 1FF64 8002F764 6CDE6324 */  addiu      $v1, $v1, %lo(ParticlePickupGetReInit)
/* 1FF68 8002F768 1000B7AF */  sw         $s7, 0x10($sp)
/* 1FF6C 8002F76C 1400BEAF */  sw         $fp, 0x14($sp)
/* 1FF70 8002F770 1800B6AF */  sw         $s6, 0x18($sp)
/* 1FF74 8002F774 1C00B4AF */  sw         $s4, 0x1C($sp)
/* 1FF78 8002F778 EDBD0008 */  j          .L8002F7B4
/* 1FF7C 8002F77C 2000A3AF */   sw        $v1, 0x20($sp)
.L8002F780:
/* 1FF80 8002F780 10006214 */  bne        $v1, $v0, .L8002F7C4
/* 1FF84 8002F784 03000424 */   addiu     $a0, $zero, 0x3
/* 1FF88 8002F788 0180053C */  lui        $a1, %hi(D_800119A8)
/* 1FF8C 8002F78C A819A524 */  addiu      $a1, $a1, %lo(D_800119A8)
/* 1FF90 8002F790 01000624 */  addiu      $a2, $zero, 0x1
/* 1FF94 8002F794 06000724 */  addiu      $a3, $zero, 0x6
/* 1FF98 8002F798 0380023C */  lui        $v0, %hi(ParticlePickupGetReInit)
/* 1FF9C 8002F79C 6CDE4224 */  addiu      $v0, $v0, %lo(ParticlePickupGetReInit)
/* 1FFA0 8002F7A0 1000B7AF */  sw         $s7, 0x10($sp)
/* 1FFA4 8002F7A4 1400BEAF */  sw         $fp, 0x14($sp)
/* 1FFA8 8002F7A8 1800B6AF */  sw         $s6, 0x18($sp)
/* 1FFAC 8002F7AC 1C00B4AF */  sw         $s4, 0x1C($sp)
/* 1FFB0 8002F7B0 2000A2AF */  sw         $v0, 0x20($sp)
.L8002F7B4:
/* 1FFB4 8002F7B4 EBA4000C */  jal        MakeParticleSlot
/* 1FFB8 8002F7B8 2400B5AF */   sw        $s5, 0x24($sp)
/* 1FFBC 8002F7BC FFBD0008 */  j          .L8002F7FC
/* 1FFC0 8002F7C0 04000424 */   addiu     $a0, $zero, 0x4
.L8002F7C4:
/* 1FFC4 8002F7C4 0180053C */  lui        $a1, %hi(D_800119CC)
/* 1FFC8 8002F7C8 CC19A524 */  addiu      $a1, $a1, %lo(D_800119CC)
/* 1FFCC 8002F7CC 01000624 */  addiu      $a2, $zero, 0x1
/* 1FFD0 8002F7D0 06000724 */  addiu      $a3, $zero, 0x6
/* 1FFD4 8002F7D4 0380033C */  lui        $v1, %hi(ParticlePickupGetReInit)
/* 1FFD8 8002F7D8 6CDE6324 */  addiu      $v1, $v1, %lo(ParticlePickupGetReInit)
/* 1FFDC 8002F7DC 1000B7AF */  sw         $s7, 0x10($sp)
/* 1FFE0 8002F7E0 1400BEAF */  sw         $fp, 0x14($sp)
/* 1FFE4 8002F7E4 1800B6AF */  sw         $s6, 0x18($sp)
/* 1FFE8 8002F7E8 1C00B4AF */  sw         $s4, 0x1C($sp)
/* 1FFEC 8002F7EC 2000A3AF */  sw         $v1, 0x20($sp)
/* 1FFF0 8002F7F0 EBA4000C */  jal        MakeParticleSlot
/* 1FFF4 8002F7F4 2400B5AF */   sw        $s5, 0x24($sp)
/* 1FFF8 8002F7F8 04000424 */  addiu      $a0, $zero, 0x4
.L8002F7FC:
/* 1FFFC 8002F7FC 0180053C */  lui        $a1, %hi(D_800119F0)
/* 20000 8002F800 F019A524 */  addiu      $a1, $a1, %lo(D_800119F0)
/* 20004 8002F804 01000624 */  addiu      $a2, $zero, 0x1
/* 20008 8002F808 07000724 */  addiu      $a3, $zero, 0x7
/* 2000C 8002F80C 32000224 */  addiu      $v0, $zero, 0x32
/* 20010 8002F810 A4060324 */  addiu      $v1, $zero, 0x6A4
/* 20014 8002F814 16000824 */  addiu      $t0, $zero, 0x16
/* 20018 8002F818 1000A2AF */  sw         $v0, 0x10($sp)
/* 2001C 8002F81C 0380023C */  lui        $v0, %hi(ParticlePickupFairyDustInit)
/* 20020 8002F820 4CE24224 */  addiu      $v0, $v0, %lo(ParticlePickupFairyDustInit)
/* 20024 8002F824 1400A3AF */  sw         $v1, 0x14($sp)
/* 20028 8002F828 0380033C */  lui        $v1, %hi(ParticlePickupFairyDustReInit)
/* 2002C 8002F82C E8E56324 */  addiu      $v1, $v1, %lo(ParticlePickupFairyDustReInit)
/* 20030 8002F830 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 20034 8002F834 0380023C */  lui        $v0, %hi(ParticlePickupFairyDustBrain)
/* 20038 8002F838 FCE94224 */  addiu      $v0, $v0, %lo(ParticlePickupFairyDustBrain)
/* 2003C 8002F83C 1800A8AF */  sw         $t0, 0x18($sp)
/* 20040 8002F840 2000A3AF */  sw         $v1, 0x20($sp)
/* 20044 8002F844 EBA4000C */  jal        MakeParticleSlot
/* 20048 8002F848 2400A2AF */   sw        $v0, 0x24($sp)
/* 2004C 8002F84C 0980033C */  lui        $v1, %hi(gWorld)
/* 20050 8002F850 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 20054 8002F854 06000224 */  addiu      $v0, $zero, 0x6
/* 20058 8002F858 1A006214 */  bne        $v1, $v0, .L8002F8C4
/* 2005C 8002F85C 00000000 */   nop
/* 20060 8002F860 0980023C */  lui        $v0, %hi(gLevel)
/* 20064 8002F864 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 20068 8002F868 00000000 */  nop
/* 2006C 8002F86C 15004014 */  bnez       $v0, .L8002F8C4
/* 20070 8002F870 08000424 */   addiu     $a0, $zero, 0x8
/* 20074 8002F874 0180053C */  lui        $a1, %hi(D_80011A14)
/* 20078 8002F878 141AA524 */  addiu      $a1, $a1, %lo(D_80011A14)
/* 2007C 8002F87C 01000624 */  addiu      $a2, $zero, 0x1
/* 20080 8002F880 0E000724 */  addiu      $a3, $zero, 0xE
/* 20084 8002F884 12000224 */  addiu      $v0, $zero, 0x12
/* 20088 8002F888 E8030324 */  addiu      $v1, $zero, 0x3E8
/* 2008C 8002F88C 30000824 */  addiu      $t0, $zero, 0x30
/* 20090 8002F890 1000A2AF */  sw         $v0, 0x10($sp)
/* 20094 8002F894 0380023C */  lui        $v0, %hi(ParticleSnowInit)
/* 20098 8002F898 380A4224 */  addiu      $v0, $v0, %lo(ParticleSnowInit)
/* 2009C 8002F89C 1400A3AF */  sw         $v1, 0x14($sp)
/* 200A0 8002F8A0 0380033C */  lui        $v1, %hi(ParticleSnowReInit)
/* 200A4 8002F8A4 A00B6324 */  addiu      $v1, $v1, %lo(ParticleSnowReInit)
/* 200A8 8002F8A8 2000A3AF */  sw         $v1, 0x20($sp)
/* 200AC 8002F8AC 0380033C */  lui        $v1, %hi(ParticleBrain)
/* 200B0 8002F8B0 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 200B4 8002F8B4 08FC6224 */  addiu      $v0, $v1, %lo(ParticleBrain)
/* 200B8 8002F8B8 1800A8AF */  sw         $t0, 0x18($sp)
/* 200BC 8002F8BC EBA4000C */  jal        MakeParticleSlot
/* 200C0 8002F8C0 2400A2AF */   sw        $v0, 0x24($sp)
.L8002F8C4:
/* 200C4 8002F8C4 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 200C8 8002F8C8 4800BE8F */  lw         $fp, 0x48($sp)
/* 200CC 8002F8CC 4400B78F */  lw         $s7, 0x44($sp)
/* 200D0 8002F8D0 4000B68F */  lw         $s6, 0x40($sp)
/* 200D4 8002F8D4 3C00B58F */  lw         $s5, 0x3C($sp)
/* 200D8 8002F8D8 3800B48F */  lw         $s4, 0x38($sp)
/* 200DC 8002F8DC 3400B38F */  lw         $s3, 0x34($sp)
/* 200E0 8002F8E0 3000B28F */  lw         $s2, 0x30($sp)
/* 200E4 8002F8E4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 200E8 8002F8E8 2800B08F */  lw         $s0, 0x28($sp)
/* 200EC 8002F8EC 0800E003 */  jr         $ra
/* 200F0 8002F8F0 5000BD27 */   addiu     $sp, $sp, 0x50
.size InitParticleEngine, . - InitParticleEngine
