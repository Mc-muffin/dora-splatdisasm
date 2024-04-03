.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocatePressureTriggers
/* 2FF8C 8003F78C 200C828F */  lw         $v0, %gp_rel(numstaticpressuretriggers)($gp)
/* 2FF90 8003F790 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2FF94 8003F794 1000B0AF */  sw         $s0, 0x10($sp)
/* 2FF98 8003F798 1400BFAF */  sw         $ra, 0x14($sp)
/* 2FF9C 8003F79C 21108200 */  addu       $v0, $a0, $v0
/* 2FFA0 8003F7A0 C41482AF */  sw         $v0, %gp_rel(gnumpressuretriggers)($gp)
/* 2FFA4 8003F7A4 06004010 */  beqz       $v0, .L8003F7C0
/* 2FFA8 8003F7A8 2180A000 */   addu      $s0, $a1, $zero
/* 2FFAC 8003F7AC 00210200 */  sll        $a0, $v0, 4
/* 2FFB0 8003F7B0 21208200 */  addu       $a0, $a0, $v0
/* 2FFB4 8003F7B4 2B3F010C */  jal        new_malloc
/* 2FFB8 8003F7B8 C0200400 */   sll       $a0, $a0, 3
/* 2FFBC 8003F7BC C01482AF */  sw         $v0, %gp_rel(PressureTrigger)($gp)
.L8003F7C0:
/* 2FFC0 8003F7C0 05000012 */  beqz       $s0, .L8003F7D8
/* 2FFC4 8003F7C4 0A80023C */   lui       $v0, %hi(gkeytriggersMax)
/* 2FFC8 8003F7C8 2B3F010C */  jal        new_malloc
/* 2FFCC 8003F7CC 00211000 */   sll       $a0, $s0, 4
/* 2FFD0 8003F7D0 C81482AF */  sw         $v0, %gp_rel(CellAnimLinks)($gp)
/* 2FFD4 8003F7D4 0A80023C */  lui        $v0, %hi(gkeytriggersMax)
.L8003F7D8:
/* 2FFD8 8003F7D8 68BA4224 */  addiu      $v0, $v0, %lo(gkeytriggersMax)
/* 2FFDC 8003F7DC 0A80033C */  lui        $v1, %hi(ggrouptriggersMax)
/* 2FFE0 8003F7E0 58BB6324 */  addiu      $v1, $v1, %lo(ggrouptriggersMax)
/* 2FFE4 8003F7E4 1D000424 */  addiu      $a0, $zero, 0x1D
.L8003F7E8:
/* 2FFE8 8003F7E8 000040AC */  sw         $zero, 0x0($v0)
/* 2FFEC 8003F7EC 04004224 */  addiu      $v0, $v0, 0x4
/* 2FFF0 8003F7F0 000060AC */  sw         $zero, 0x0($v1)
/* 2FFF4 8003F7F4 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 2FFF8 8003F7F8 FBFF8104 */  bgez       $a0, .L8003F7E8
/* 2FFFC 8003F7FC 04006324 */   addiu     $v1, $v1, 0x4
/* 30000 8003F800 200C858F */  lw         $a1, %gp_rel(numstaticpressuretriggers)($gp)
/* 30004 8003F804 00000000 */  nop
/* 30008 8003F808 3100A018 */  blez       $a1, .L8003F8D0
/* 3000C 8003F80C 21200000 */   addu      $a0, $zero, $zero
/* 30010 8003F810 C0148A8F */  lw         $t2, %gp_rel(PressureTrigger)($gp)
/* 30014 8003F814 0880023C */  lui        $v0, %hi(StaticPressureTrigger)
/* 30018 8003F818 E87E4C24 */  addiu      $t4, $v0, %lo(StaticPressureTrigger)
/* 3001C 8003F81C 0980033C */  lui        $v1, %hi(ETActor)
/* 30020 8003F820 B05A6B24 */  addiu      $t3, $v1, %lo(ETActor)
/* 30024 8003F824 FFFF0824 */  addiu      $t0, $zero, -0x1
/* 30028 8003F828 2148A000 */  addu       $t1, $a1, $zero
.L8003F82C:
/* 3002C 8003F82C 01008724 */  addiu      $a3, $a0, 0x1
/* 30030 8003F830 00110400 */  sll        $v0, $a0, 4
/* 30034 8003F834 21104400 */  addu       $v0, $v0, $a0
/* 30038 8003F838 C0100200 */  sll        $v0, $v0, 3
/* 3003C 8003F83C 21284201 */  addu       $a1, $t2, $v0
/* 30040 8003F840 C0180400 */  sll        $v1, $a0, 3
/* 30044 8003F844 21186C00 */  addu       $v1, $v1, $t4
/* 30048 8003F848 0000A0AC */  sw         $zero, 0x0($a1)
/* 3004C 8003F84C 0000648C */  lw         $a0, 0x0($v1)
/* 30050 8003F850 07000624 */  addiu      $a2, $zero, 0x7
/* 30054 8003F854 0800A0AC */  sw         $zero, 0x8($a1)
/* 30058 8003F858 0C00A0AC */  sw         $zero, 0xC($a1)
/* 3005C 8003F85C 3800A0AC */  sw         $zero, 0x38($a1)
/* 30060 8003F860 3C00A0AC */  sw         $zero, 0x3C($a1)
/* 30064 8003F864 0400A4AC */  sw         $a0, 0x4($a1)
/* 30068 8003F868 0400628C */  lw         $v0, 0x4($v1)
/* 3006C 8003F86C 6000A424 */  addiu      $a0, $a1, 0x60
/* 30070 8003F870 4000A2AC */  sw         $v0, 0x40($a1)
.L8003F874:
/* 30074 8003F874 000080AC */  sw         $zero, 0x0($a0)
/* 30078 8003F878 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 3007C 8003F87C FDFFC104 */  bgez       $a2, .L8003F874
/* 30080 8003F880 FCFF8424 */   addiu     $a0, $a0, -0x4
/* 30084 8003F884 2120E000 */  addu       $a0, $a3, $zero
/* 30088 8003F888 2A108900 */  slt        $v0, $a0, $t1
/* 3008C 8003F88C 4400ABAC */  sw         $t3, 0x44($a1)
/* 30090 8003F890 6400A0AC */  sw         $zero, 0x64($a1)
/* 30094 8003F894 6800A0AC */  sw         $zero, 0x68($a1)
/* 30098 8003F898 1000A0AC */  sw         $zero, 0x10($a1)
/* 3009C 8003F89C 1400A0AC */  sw         $zero, 0x14($a1)
/* 300A0 8003F8A0 8400A0A4 */  sh         $zero, 0x84($a1)
/* 300A4 8003F8A4 8600A0A4 */  sh         $zero, 0x86($a1)
/* 300A8 8003F8A8 1800A8AC */  sw         $t0, 0x18($a1)
/* 300AC 8003F8AC 1C00A8AC */  sw         $t0, 0x1C($a1)
/* 300B0 8003F8B0 2000A0AC */  sw         $zero, 0x20($a1)
/* 300B4 8003F8B4 7400A0AC */  sw         $zero, 0x74($a1)
/* 300B8 8003F8B8 7800A0AC */  sw         $zero, 0x78($a1)
/* 300BC 8003F8BC 7C00A0AC */  sw         $zero, 0x7C($a1)
/* 300C0 8003F8C0 8000A8AC */  sw         $t0, 0x80($a1)
/* 300C4 8003F8C4 7000A0AC */  sw         $zero, 0x70($a1)
/* 300C8 8003F8C8 D8FF4014 */  bnez       $v0, .L8003F82C
/* 300CC 8003F8CC 6C00A0AC */   sw        $zero, 0x6C($a1)
.L8003F8D0:
/* 300D0 8003F8D0 200C848F */  lw         $a0, %gp_rel(numstaticpressuretriggers)($gp)
/* 300D4 8003F8D4 C414838F */  lw         $v1, %gp_rel(gnumpressuretriggers)($gp)
/* 300D8 8003F8D8 00000000 */  nop
/* 300DC 8003F8DC 2A108300 */  slt        $v0, $a0, $v1
/* 300E0 8003F8E0 2B004010 */  beqz       $v0, .L8003F990
/* 300E4 8003F8E4 0980023C */   lui       $v0, %hi(ETActor)
/* 300E8 8003F8E8 C014898F */  lw         $t1, %gp_rel(PressureTrigger)($gp)
/* 300EC 8003F8EC B05A4A24 */  addiu      $t2, $v0, %lo(ETActor)
/* 300F0 8003F8F0 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 300F4 8003F8F4 21406000 */  addu       $t0, $v1, $zero
/* 300F8 8003F8F8 01008724 */  addiu      $a3, $a0, 0x1
.L8003F8FC:
/* 300FC 8003F8FC 07000624 */  addiu      $a2, $zero, 0x7
/* 30100 8003F900 00110400 */  sll        $v0, $a0, 4
/* 30104 8003F904 21104400 */  addu       $v0, $v0, $a0
/* 30108 8003F908 C0100200 */  sll        $v0, $v0, 3
/* 3010C 8003F90C 21102201 */  addu       $v0, $t1, $v0
/* 30110 8003F910 60004324 */  addiu      $v1, $v0, 0x60
/* 30114 8003F914 000040AC */  sw         $zero, 0x0($v0)
/* 30118 8003F918 040040AC */  sw         $zero, 0x4($v0)
/* 3011C 8003F91C 080040AC */  sw         $zero, 0x8($v0)
/* 30120 8003F920 0C0040AC */  sw         $zero, 0xC($v0)
/* 30124 8003F924 380040AC */  sw         $zero, 0x38($v0)
/* 30128 8003F928 3C0040AC */  sw         $zero, 0x3C($v0)
/* 3012C 8003F92C 400040AC */  sw         $zero, 0x40($v0)
.L8003F930:
/* 30130 8003F930 000060AC */  sw         $zero, 0x0($v1)
/* 30134 8003F934 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 30138 8003F938 FDFFC104 */  bgez       $a2, .L8003F930
/* 3013C 8003F93C FCFF6324 */   addiu     $v1, $v1, -0x4
/* 30140 8003F940 2120E000 */  addu       $a0, $a3, $zero
/* 30144 8003F944 44004AAC */  sw         $t2, 0x44($v0)
/* 30148 8003F948 640040AC */  sw         $zero, 0x64($v0)
/* 3014C 8003F94C 680040AC */  sw         $zero, 0x68($v0)
/* 30150 8003F950 100040AC */  sw         $zero, 0x10($v0)
/* 30154 8003F954 140040AC */  sw         $zero, 0x14($v0)
/* 30158 8003F958 840040A4 */  sh         $zero, 0x84($v0)
/* 3015C 8003F95C 860040A4 */  sh         $zero, 0x86($v0)
/* 30160 8003F960 740040AC */  sw         $zero, 0x74($v0)
/* 30164 8003F964 780040AC */  sw         $zero, 0x78($v0)
/* 30168 8003F968 7C0040AC */  sw         $zero, 0x7C($v0)
/* 3016C 8003F96C 180045AC */  sw         $a1, 0x18($v0)
/* 30170 8003F970 1C0045AC */  sw         $a1, 0x1C($v0)
/* 30174 8003F974 200040AC */  sw         $zero, 0x20($v0)
/* 30178 8003F978 800045AC */  sw         $a1, 0x80($v0)
/* 3017C 8003F97C 700040AC */  sw         $zero, 0x70($v0)
/* 30180 8003F980 6C0040AC */  sw         $zero, 0x6C($v0)
/* 30184 8003F984 2A108800 */  slt        $v0, $a0, $t0
/* 30188 8003F988 DCFF4014 */  bnez       $v0, .L8003F8FC
/* 3018C 8003F98C 01008724 */   addiu     $a3, $a0, 0x1
.L8003F990:
/* 30190 8003F990 0A00001A */  blez       $s0, .L8003F9BC
/* 30194 8003F994 00000000 */   nop
/* 30198 8003F998 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 3019C 8003F99C C814828F */  lw         $v0, %gp_rel(CellAnimLinks)($gp)
/* 301A0 8003F9A0 21200002 */  addu       $a0, $s0, $zero
.L8003F9A4:
/* 301A4 8003F9A4 000043AC */  sw         $v1, 0x0($v0)
/* 301A8 8003F9A8 040043AC */  sw         $v1, 0x4($v0)
/* 301AC 8003F9AC 0C0040AC */  sw         $zero, 0xC($v0)
/* 301B0 8003F9B0 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 301B4 8003F9B4 FBFF8014 */  bnez       $a0, .L8003F9A4
/* 301B8 8003F9B8 10004224 */   addiu     $v0, $v0, 0x10
.L8003F9BC:
/* 301BC 8003F9BC 1400BF8F */  lw         $ra, 0x14($sp)
/* 301C0 8003F9C0 1000B08F */  lw         $s0, 0x10($sp)
/* 301C4 8003F9C4 0800E003 */  jr         $ra
/* 301C8 8003F9C8 1800BD27 */   addiu     $sp, $sp, 0x18
.size AllocatePressureTriggers, . - AllocatePressureTriggers
