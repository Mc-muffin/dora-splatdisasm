.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LeavePickup
/* D044 8001C844 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* D048 8001C848 4002828F */  lw         $v0, %gp_rel(NumExtraPickupList)($gp)
/* D04C 8001C84C 0880033C */  lui        $v1, %hi(MapPickupList2)
/* D050 8001C850 1C00B1AF */  sw         $s1, 0x1C($sp)
/* D054 8001C854 6C617124 */  addiu      $s1, $v1, %lo(MapPickupList2)
/* D058 8001C858 2000B2AF */  sw         $s2, 0x20($sp)
/* D05C 8001C85C 21900000 */  addu       $s2, $zero, $zero
/* D060 8001C860 3400B7AF */  sw         $s7, 0x34($sp)
/* D064 8001C864 21B8A000 */  addu       $s7, $a1, $zero
/* D068 8001C868 3000B6AF */  sw         $s6, 0x30($sp)
/* D06C 8001C86C 21B0C000 */  addu       $s6, $a2, $zero
/* D070 8001C870 3800BEAF */  sw         $fp, 0x38($sp)
/* D074 8001C874 21F06000 */  addu       $fp, $v1, $zero
/* D078 8001C878 3C00BFAF */  sw         $ra, 0x3C($sp)
/* D07C 8001C87C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* D080 8001C880 2800B4AF */  sw         $s4, 0x28($sp)
/* D084 8001C884 2400B3AF */  sw         $s3, 0x24($sp)
/* D088 8001C888 1800B0AF */  sw         $s0, 0x18($sp)
/* D08C 8001C88C 42004018 */  blez       $v0, .L8001C998
/* D090 8001C890 4000A4AF */   sw        $a0, 0x40($sp)
/* D094 8001C894 01001524 */  addiu      $s5, $zero, 0x1
/* D098 8001C898 21A00000 */  addu       $s4, $zero, $zero
.L8001C89C:
/* D09C 8001C89C 0C00238E */  lw         $v1, 0xC($s1)
/* D0A0 8001C8A0 02000224 */  addiu      $v0, $zero, 0x2
/* D0A4 8001C8A4 35006214 */  bne        $v1, $v0, .L8001C97C
/* D0A8 8001C8A8 0980023C */   lui       $v0, %hi(PickupPool)
/* D0AC 8001C8AC 505D4524 */  addiu      $a1, $v0, %lo(PickupPool)
/* D0B0 8001C8B0 21180000 */  addu       $v1, $zero, $zero
/* D0B4 8001C8B4 3413848F */  lw         $a0, %gp_rel(gLevelMaxPool)($gp)
/* D0B8 8001C8B8 00000000 */  nop
/* D0BC 8001C8BC 08008018 */  blez       $a0, .L8001C8E0
/* D0C0 8001C8C0 01001324 */   addiu     $s3, $zero, 0x1
.L8001C8C4:
/* D0C4 8001C8C4 0C00A28C */  lw         $v0, 0xC($a1)
/* D0C8 8001C8C8 00000000 */  nop
/* D0CC 8001C8CC 15004010 */  beqz       $v0, .L8001C924
/* D0D0 8001C8D0 01006324 */   addiu     $v1, $v1, 0x1
/* D0D4 8001C8D4 2A106400 */  slt        $v0, $v1, $a0
/* D0D8 8001C8D8 FAFF4014 */  bnez       $v0, .L8001C8C4
/* D0DC 8001C8DC 1400A524 */   addiu     $a1, $a1, 0x14
.L8001C8E0:
/* D0E0 8001C8E0 21280000 */  addu       $a1, $zero, $zero
.L8001C8E4:
/* D0E4 8001C8E4 2500A010 */  beqz       $a1, .L8001C97C
/* D0E8 8001C8E8 6C61C227 */   addiu     $v0, $fp, %lo(MapPickupList2)
/* D0EC 8001C8EC 5002838F */  lw         $v1, %gp_rel(LEAVEPICKUP_YDIST)($gp)
/* D0F0 8001C8F0 21108202 */  addu       $v0, $s4, $v0
/* D0F4 8001C8F4 0C0035AE */  sw         $s5, 0xC($s1)
/* D0F8 8001C8F8 100025AE */  sw         $a1, 0x10($s1)
/* D0FC 8001C8FC 4400A48C */  lw         $a0, 0x44($a1)
/* D100 8001C900 23180300 */  negu       $v1, $v1
/* D104 8001C904 140082AC */  sw         $v0, 0x14($a0)
/* D108 8001C908 5402828F */  lw         $v0, %gp_rel(LEAVEPICKUP_ZDIST)($gp)
/* D10C 8001C90C C0190300 */  sll        $v1, $v1, 7
/* D110 8001C910 A000A3AC */  sw         $v1, 0xA0($a1)
/* D114 8001C914 23100200 */  negu       $v0, $v0
/* D118 8001C918 C0110200 */  sll        $v0, $v0, 7
/* D11C 8001C91C 66720008 */  j          .L8001C998
/* D120 8001C920 A400A2AC */   sw        $v0, 0xA4($a1)
.L8001C924:
/* D124 8001C924 0A000224 */  addiu      $v0, $zero, 0xA
/* D128 8001C928 0C00B5AC */  sw         $s5, 0xC($a1)
/* D12C 8001C92C 1000A2AF */  sw         $v0, 0x10($sp)
/* D130 8001C930 32000224 */  addiu      $v0, $zero, 0x32
/* D134 8001C934 2130E002 */  addu       $a2, $s7, $zero
/* D138 8001C938 1000B08C */  lw         $s0, 0x10($a1)
/* D13C 8001C93C 4000A58F */  lw         $a1, 0x40($sp)
/* D140 8001C940 2138C002 */  addu       $a3, $s6, $zero
/* D144 8001C944 1400A2AF */  sw         $v0, 0x14($sp)
/* D148 8001C948 B2F9000C */  jal        InitObjectPhysics
/* D14C 8001C94C 6C000426 */   addiu     $a0, $s0, 0x6C
/* D150 8001C950 1000038E */  lw         $v1, 0x10($s0)
/* D154 8001C954 96000224 */  addiu      $v0, $zero, 0x96
/* D158 8001C958 5C0002AE */  sw         $v0, 0x5C($s0)
/* D15C 8001C95C 3C02828F */  lw         $v0, %gp_rel(NumActivePickupPool)($gp)
/* D160 8001C960 640013AE */  sw         $s3, 0x64($s0)
/* D164 8001C964 00016334 */  ori        $v1, $v1, 0x100
/* D168 8001C968 01004224 */  addiu      $v0, $v0, 0x1
/* D16C 8001C96C 100003AE */  sw         $v1, 0x10($s0)
/* D170 8001C970 3C0282AF */  sw         $v0, %gp_rel(NumActivePickupPool)($gp)
/* D174 8001C974 39720008 */  j          .L8001C8E4
/* D178 8001C978 21280002 */   addu      $a1, $s0, $zero
.L8001C97C:
/* D17C 8001C97C 14009426 */  addiu      $s4, $s4, 0x14
/* D180 8001C980 01005226 */  addiu      $s2, $s2, 0x1
/* D184 8001C984 4002828F */  lw         $v0, %gp_rel(NumExtraPickupList)($gp)
/* D188 8001C988 00000000 */  nop
/* D18C 8001C98C 2A104202 */  slt        $v0, $s2, $v0
/* D190 8001C990 C2FF4014 */  bnez       $v0, .L8001C89C
/* D194 8001C994 14003126 */   addiu     $s1, $s1, 0x14
.L8001C998:
/* D198 8001C998 3C00BF8F */  lw         $ra, 0x3C($sp)
/* D19C 8001C99C 3800BE8F */  lw         $fp, 0x38($sp)
/* D1A0 8001C9A0 3400B78F */  lw         $s7, 0x34($sp)
/* D1A4 8001C9A4 3000B68F */  lw         $s6, 0x30($sp)
/* D1A8 8001C9A8 2C00B58F */  lw         $s5, 0x2C($sp)
/* D1AC 8001C9AC 2800B48F */  lw         $s4, 0x28($sp)
/* D1B0 8001C9B0 2400B38F */  lw         $s3, 0x24($sp)
/* D1B4 8001C9B4 2000B28F */  lw         $s2, 0x20($sp)
/* D1B8 8001C9B8 1C00B18F */  lw         $s1, 0x1C($sp)
/* D1BC 8001C9BC 1800B08F */  lw         $s0, 0x18($sp)
/* D1C0 8001C9C0 0800E003 */  jr         $ra
/* D1C4 8001C9C4 4000BD27 */   addiu     $sp, $sp, 0x40
.size LeavePickup, . - LeavePickup
