.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitShadowMeshTable
/* 13D8C 8002358C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 13D90 80023590 2400B3AF */  sw         $s3, 0x24($sp)
/* 13D94 80023594 07001324 */  addiu      $s3, $zero, 0x7
/* 13D98 80023598 2000B2AF */  sw         $s2, 0x20($sp)
/* 13D9C 8002359C 0980123C */  lui        $s2, %hi(ShadowMeshTable)
/* 13DA0 800235A0 1800B0AF */  sw         $s0, 0x18($sp)
/* 13DA4 800235A4 A8645026 */  addiu      $s0, $s2, %lo(ShadowMeshTable)
/* 13DA8 800235A8 7C000226 */  addiu      $v0, $s0, 0x7C
/* 13DAC 800235AC 0180043C */  lui        $a0, %hi(D_80010FF8)
/* 13DB0 800235B0 F80F8424 */  addiu      $a0, $a0, %lo(D_80010FF8)
/* 13DB4 800235B4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 13DB8 800235B8 70001126 */  addiu      $s1, $s0, 0x70
/* 13DBC 800235BC 21282002 */  addu       $a1, $s1, $zero
/* 13DC0 800235C0 74000626 */  addiu      $a2, $s0, 0x74
/* 13DC4 800235C4 78000726 */  addiu      $a3, $s0, 0x78
/* 13DC8 800235C8 2800BFAF */  sw         $ra, 0x28($sp)
/* 13DCC 800235CC 9388010C */  jal        LoadShadow
/* 13DD0 800235D0 1000A2AF */   sw        $v0, 0x10($sp)
/* 13DD4 800235D4 21200000 */  addu       $a0, $zero, $zero
/* 13DD8 800235D8 74000726 */  addiu      $a3, $s0, 0x74
/* 13DDC 800235DC 78000626 */  addiu      $a2, $s0, 0x78
/* 13DE0 800235E0 7C000526 */  addiu      $a1, $s0, 0x7C
.L800235E4:
/* 13DE4 800235E4 0D009310 */  beq        $a0, $s3, .L8002361C
/* 13DE8 800235E8 00000000 */   nop
/* 13DEC 800235EC 0000228E */  lw         $v0, 0x0($s1)
/* 13DF0 800235F0 00000000 */  nop
/* 13DF4 800235F4 000002AE */  sw         $v0, 0x0($s0)
/* 13DF8 800235F8 0000E38C */  lw         $v1, 0x0($a3)
/* 13DFC 800235FC 00000000 */  nop
/* 13E00 80023600 040003AE */  sw         $v1, 0x4($s0)
/* 13E04 80023604 0000C28C */  lw         $v0, 0x0($a2)
/* 13E08 80023608 00000000 */  nop
/* 13E0C 8002360C 080002AE */  sw         $v0, 0x8($s0)
/* 13E10 80023610 0000A38C */  lw         $v1, 0x0($a1)
/* 13E14 80023614 00000000 */  nop
/* 13E18 80023618 0C0003AE */  sw         $v1, 0xC($s0)
.L8002361C:
/* 13E1C 8002361C 01008424 */  addiu      $a0, $a0, 0x1
/* 13E20 80023620 35008228 */  slti       $v0, $a0, 0x35
/* 13E24 80023624 EFFF4014 */  bnez       $v0, .L800235E4
/* 13E28 80023628 10001026 */   addiu     $s0, $s0, 0x10
/* 13E2C 8002362C 0180043C */  lui        $a0, %hi(D_80011014)
/* 13E30 80023630 14108424 */  addiu      $a0, $a0, %lo(D_80011014)
/* 13E34 80023634 A8645026 */  addiu      $s0, $s2, %lo(ShadowMeshTable)
/* 13E38 80023638 21280002 */  addu       $a1, $s0, $zero
/* 13E3C 8002363C 04000626 */  addiu      $a2, $s0, 0x4
/* 13E40 80023640 08000726 */  addiu      $a3, $s0, 0x8
/* 13E44 80023644 0C000226 */  addiu      $v0, $s0, 0xC
/* 13E48 80023648 9388010C */  jal        LoadShadow
/* 13E4C 8002364C 1000A2AF */   sw        $v0, 0x10($sp)
/* 13E50 80023650 0180043C */  lui        $a0, %hi(D_80011030)
/* 13E54 80023654 30108424 */  addiu      $a0, $a0, %lo(D_80011030)
/* 13E58 80023658 30010526 */  addiu      $a1, $s0, 0x130
/* 13E5C 8002365C 34010626 */  addiu      $a2, $s0, 0x134
/* 13E60 80023660 38010726 */  addiu      $a3, $s0, 0x138
/* 13E64 80023664 3C010226 */  addiu      $v0, $s0, 0x13C
/* 13E68 80023668 9388010C */  jal        LoadShadow
/* 13E6C 8002366C 1000A2AF */   sw        $v0, 0x10($sp)
/* 13E70 80023670 0180043C */  lui        $a0, %hi(D_8001104C)
/* 13E74 80023674 4C108424 */  addiu      $a0, $a0, %lo(D_8001104C)
/* 13E78 80023678 50010526 */  addiu      $a1, $s0, 0x150
/* 13E7C 8002367C 54010626 */  addiu      $a2, $s0, 0x154
/* 13E80 80023680 58010726 */  addiu      $a3, $s0, 0x158
/* 13E84 80023684 5C010226 */  addiu      $v0, $s0, 0x15C
/* 13E88 80023688 9388010C */  jal        LoadShadow
/* 13E8C 8002368C 1000A2AF */   sw        $v0, 0x10($sp)
/* 13E90 80023690 0180043C */  lui        $a0, %hi(D_80011068)
/* 13E94 80023694 68108424 */  addiu      $a0, $a0, %lo(D_80011068)
/* 13E98 80023698 60010526 */  addiu      $a1, $s0, 0x160
/* 13E9C 8002369C 64010626 */  addiu      $a2, $s0, 0x164
/* 13EA0 800236A0 68010726 */  addiu      $a3, $s0, 0x168
/* 13EA4 800236A4 6C010226 */  addiu      $v0, $s0, 0x16C
/* 13EA8 800236A8 9388010C */  jal        LoadShadow
/* 13EAC 800236AC 1000A2AF */   sw        $v0, 0x10($sp)
/* 13EB0 800236B0 0180043C */  lui        $a0, %hi(D_80011084)
/* 13EB4 800236B4 84108424 */  addiu      $a0, $a0, %lo(D_80011084)
/* 13EB8 800236B8 70010526 */  addiu      $a1, $s0, 0x170
/* 13EBC 800236BC 74010626 */  addiu      $a2, $s0, 0x174
/* 13EC0 800236C0 78010726 */  addiu      $a3, $s0, 0x178
/* 13EC4 800236C4 7C010226 */  addiu      $v0, $s0, 0x17C
/* 13EC8 800236C8 9388010C */  jal        LoadShadow
/* 13ECC 800236CC 1000A2AF */   sw        $v0, 0x10($sp)
/* 13ED0 800236D0 0180043C */  lui        $a0, %hi(D_800110A0)
/* 13ED4 800236D4 A0108424 */  addiu      $a0, $a0, %lo(D_800110A0)
/* 13ED8 800236D8 80010526 */  addiu      $a1, $s0, 0x180
/* 13EDC 800236DC 84010626 */  addiu      $a2, $s0, 0x184
/* 13EE0 800236E0 88010726 */  addiu      $a3, $s0, 0x188
/* 13EE4 800236E4 8C010226 */  addiu      $v0, $s0, 0x18C
/* 13EE8 800236E8 9388010C */  jal        LoadShadow
/* 13EEC 800236EC 1000A2AF */   sw        $v0, 0x10($sp)
/* 13EF0 800236F0 0180043C */  lui        $a0, %hi(D_800110BC)
/* 13EF4 800236F4 BC108424 */  addiu      $a0, $a0, %lo(D_800110BC)
/* 13EF8 800236F8 90010526 */  addiu      $a1, $s0, 0x190
/* 13EFC 800236FC 94010626 */  addiu      $a2, $s0, 0x194
/* 13F00 80023700 98010726 */  addiu      $a3, $s0, 0x198
/* 13F04 80023704 9C010226 */  addiu      $v0, $s0, 0x19C
/* 13F08 80023708 9388010C */  jal        LoadShadow
/* 13F0C 8002370C 1000A2AF */   sw        $v0, 0x10($sp)
/* 13F10 80023710 0180043C */  lui        $a0, %hi(D_800110D8)
/* 13F14 80023714 D8108424 */  addiu      $a0, $a0, %lo(D_800110D8)
/* 13F18 80023718 A0010526 */  addiu      $a1, $s0, 0x1A0
/* 13F1C 8002371C A4010626 */  addiu      $a2, $s0, 0x1A4
/* 13F20 80023720 A8010726 */  addiu      $a3, $s0, 0x1A8
/* 13F24 80023724 AC010226 */  addiu      $v0, $s0, 0x1AC
/* 13F28 80023728 9388010C */  jal        LoadShadow
/* 13F2C 8002372C 1000A2AF */   sw        $v0, 0x10($sp)
/* 13F30 80023730 0180043C */  lui        $a0, %hi(D_800110F4)
/* 13F34 80023734 F4108424 */  addiu      $a0, $a0, %lo(D_800110F4)
/* 13F38 80023738 B0010526 */  addiu      $a1, $s0, 0x1B0
/* 13F3C 8002373C B4010626 */  addiu      $a2, $s0, 0x1B4
/* 13F40 80023740 B8010726 */  addiu      $a3, $s0, 0x1B8
/* 13F44 80023744 BC010226 */  addiu      $v0, $s0, 0x1BC
/* 13F48 80023748 9388010C */  jal        LoadShadow
/* 13F4C 8002374C 1000A2AF */   sw        $v0, 0x10($sp)
/* 13F50 80023750 0180043C */  lui        $a0, %hi(D_80011110)
/* 13F54 80023754 10118424 */  addiu      $a0, $a0, %lo(D_80011110)
/* 13F58 80023758 D0010526 */  addiu      $a1, $s0, 0x1D0
/* 13F5C 8002375C D4010626 */  addiu      $a2, $s0, 0x1D4
/* 13F60 80023760 D8010726 */  addiu      $a3, $s0, 0x1D8
/* 13F64 80023764 DC010226 */  addiu      $v0, $s0, 0x1DC
/* 13F68 80023768 9388010C */  jal        LoadShadow
/* 13F6C 8002376C 1000A2AF */   sw        $v0, 0x10($sp)
/* 13F70 80023770 0180043C */  lui        $a0, %hi(D_8001112C)
/* 13F74 80023774 2C118424 */  addiu      $a0, $a0, %lo(D_8001112C)
/* 13F78 80023778 70000526 */  addiu      $a1, $s0, 0x70
/* 13F7C 8002377C 74000626 */  addiu      $a2, $s0, 0x74
/* 13F80 80023780 78000726 */  addiu      $a3, $s0, 0x78
/* 13F84 80023784 D001038E */  lw         $v1, 0x1D0($s0)
/* 13F88 80023788 D401088E */  lw         $t0, 0x1D4($s0)
/* 13F8C 8002378C D801098E */  lw         $t1, 0x1D8($s0)
/* 13F90 80023790 DC010A8E */  lw         $t2, 0x1DC($s0)
/* 13F94 80023794 7C000226 */  addiu      $v0, $s0, 0x7C
/* 13F98 80023798 1000A2AF */  sw         $v0, 0x10($sp)
/* 13F9C 8002379C E00103AE */  sw         $v1, 0x1E0($s0)
/* 13FA0 800237A0 E40108AE */  sw         $t0, 0x1E4($s0)
/* 13FA4 800237A4 E80109AE */  sw         $t1, 0x1E8($s0)
/* 13FA8 800237A8 EC010AAE */  sw         $t2, 0x1EC($s0)
/* 13FAC 800237AC F00103AE */  sw         $v1, 0x1F0($s0)
/* 13FB0 800237B0 F40108AE */  sw         $t0, 0x1F4($s0)
/* 13FB4 800237B4 F80109AE */  sw         $t1, 0x1F8($s0)
/* 13FB8 800237B8 9388010C */  jal        LoadShadow
/* 13FBC 800237BC FC010AAE */   sw        $t2, 0x1FC($s0)
/* 13FC0 800237C0 2800BF8F */  lw         $ra, 0x28($sp)
/* 13FC4 800237C4 2400B38F */  lw         $s3, 0x24($sp)
/* 13FC8 800237C8 2000B28F */  lw         $s2, 0x20($sp)
/* 13FCC 800237CC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 13FD0 800237D0 1800B08F */  lw         $s0, 0x18($sp)
/* 13FD4 800237D4 0800E003 */  jr         $ra
/* 13FD8 800237D8 3000BD27 */   addiu     $sp, $sp, 0x30
.size InitShadowMeshTable, . - InitShadowMeshTable
