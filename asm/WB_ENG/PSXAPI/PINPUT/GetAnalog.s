.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetAnalog
/* 4A2C8 80059AC8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4A2CC 80059ACC 1800B2AF */  sw         $s2, 0x18($sp)
/* 4A2D0 80059AD0 B810928F */  lw         $s2, %gp_rel(AnalogueLR)($gp)
/* 4A2D4 80059AD4 B410828F */  lw         $v0, %gp_rel(AnalogueFlag)($gp)
/* 4A2D8 80059AD8 1400B1AF */  sw         $s1, 0x14($sp)
/* 4A2DC 80059ADC BC10918F */  lw         $s1, %gp_rel(AnalogueUD)($gp)
/* 4A2E0 80059AE0 21180000 */  addu       $v1, $zero, $zero
/* 4A2E4 80059AE4 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 4A2E8 80059AE8 16004010 */  beqz       $v0, .L80059B44
/* 4A2EC 80059AEC 1000B0AF */   sw        $s0, 0x10($sp)
/* 4A2F0 80059AF0 21202002 */  addu       $a0, $s1, $zero
/* 4A2F4 80059AF4 63EF010C */  jal        ratan2
/* 4A2F8 80059AF8 21284002 */   addu      $a1, $s2, $zero
/* 4A2FC 80059AFC 21184000 */  addu       $v1, $v0, $zero
/* 4A300 80059B00 00116224 */  addiu      $v0, $v1, 0x1100
/* 4A304 80059B04 03004104 */  bgez       $v0, .L80059B14
/* 4A308 80059B08 C0130200 */   sll       $v0, $v0, 15
/* 4A30C 80059B0C FF126224 */  addiu      $v0, $v1, 0x12FF
/* 4A310 80059B10 C0130200 */  sll        $v0, $v0, 15
.L80059B14:
/* 4A314 80059B14 03860200 */  sra        $s0, $v0, 24
/* 4A318 80059B18 21204002 */  addu       $a0, $s2, $zero
/* 4A31C 80059B1C 63EF010C */  jal        ratan2
/* 4A320 80059B20 21282002 */   addu      $a1, $s1, $zero
/* 4A324 80059B24 0800032A */  slti       $v1, $s0, 0x8
/* 4A328 80059B28 03006014 */  bnez       $v1, .L80059B38
/* 4A32C 80059B2C F8FF0226 */   addiu     $v0, $s0, -0x8
/* 4A330 80059B30 00160200 */  sll        $v0, $v0, 24
/* 4A334 80059B34 03860200 */  sra        $s0, $v0, 24
.L80059B38:
/* 4A338 80059B38 F569000C */  jal        GetLeftAnalogToDigitalMaskFromOctant
/* 4A33C 80059B3C 21200002 */   addu      $a0, $s0, $zero
/* 4A340 80059B40 FFFF4330 */  andi       $v1, $v0, 0xFFFF
.L80059B44:
/* 4A344 80059B44 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4A348 80059B48 1800B28F */  lw         $s2, 0x18($sp)
/* 4A34C 80059B4C 1400B18F */  lw         $s1, 0x14($sp)
/* 4A350 80059B50 1000B08F */  lw         $s0, 0x10($sp)
/* 4A354 80059B54 21106000 */  addu       $v0, $v1, $zero
/* 4A358 80059B58 0800E003 */  jr         $ra
/* 4A35C 80059B5C 2000BD27 */   addiu     $sp, $sp, 0x20
.size GetAnalog, . - GetAnalog
