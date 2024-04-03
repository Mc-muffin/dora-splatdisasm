.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Alloc256CLUT
/* 4DA48 8005D248 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4DA4C 8005D24C 1000B0AF */  sw         $s0, 0x10($sp)
/* 4DA50 8005D250 21808000 */  addu       $s0, $a0, $zero
/* 4DA54 8005D254 1400B1AF */  sw         $s1, 0x14($sp)
/* 4DA58 8005D258 21880000 */  addu       $s1, $zero, $zero
/* 4DA5C 8005D25C 0C80023C */  lui        $v0, %hi(gCLUTUseTable)
/* 4DA60 8005D260 1800B2AF */  sw         $s2, 0x18($sp)
/* 4DA64 8005D264 A8C45224 */  addiu      $s2, $v0, %lo(gCLUTUseTable)
/* 4DA68 8005D268 21284002 */  addu       $a1, $s2, $zero
/* 4DA6C 8005D26C 21200000 */  addu       $a0, $zero, $zero
/* 4DA70 8005D270 1C00BFAF */  sw         $ra, 0x1C($sp)
.L8005D274:
/* 4DA74 8005D274 00004286 */  lh         $v0, 0x0($s2)
/* 4DA78 8005D278 00000000 */  nop
/* 4DA7C 8005D27C 28004014 */  bnez       $v0, .L8005D320
/* 4DA80 8005D280 00F00224 */   addiu     $v0, $zero, -0x1000
/* 4DA84 8005D284 000042A6 */  sh         $v0, 0x0($s2)
/* 4DA88 8005D288 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 4DA8C 8005D28C 2C002312 */  beq        $s1, $v1, .L8005D340
/* 4DA90 8005D290 FFFF0234 */   ori       $v0, $zero, 0xFFFF
/* 4DA94 8005D294 2110A400 */  addu       $v0, $a1, $a0
/* 4DA98 8005D298 02000324 */  addiu      $v1, $zero, 0x2
/* 4DA9C 8005D29C C0032426 */  addiu      $a0, $s1, 0x3C0
/* 4DAA0 8005D2A0 220043A4 */  sh         $v1, 0x22($v0)
/* 4DAA4 8005D2A4 240044A6 */  sh         $a0, 0x24($s2)
.L8005D2A8:
/* 4DAA8 8005D2A8 36DB010C */  jal        DrawSync
/* 4DAAC 8005D2AC 01000424 */   addiu     $a0, $zero, 0x1
/* 4DAB0 8005D2B0 FDFF4014 */  bnez       $v0, .L8005D2A8
/* 4DAB4 8005D2B4 00000000 */   nop
/* 4DAB8 8005D2B8 02002106 */  bgez       $s1, .L8005D2C4
/* 4DABC 8005D2BC 21302002 */   addu      $a2, $s1, $zero
/* 4DAC0 8005D2C0 3F002626 */  addiu      $a2, $s1, 0x3F
.L8005D2C4:
/* 4DAC4 8005D2C4 21200002 */  addu       $a0, $s0, $zero
/* 4DAC8 8005D2C8 83310600 */  sra        $a2, $a2, 6
/* 4DACC 8005D2CC 002C0600 */  sll        $a1, $a2, 16
/* 4DAD0 8005D2D0 032A0500 */  sra        $a1, $a1, 8
/* 4DAD4 8005D2D4 0002A524 */  addiu      $a1, $a1, 0x200
/* 4DAD8 8005D2D8 80310600 */  sll        $a2, $a2, 6
/* 4DADC 8005D2DC 23302602 */  subu       $a2, $s1, $a2
/* 4DAE0 8005D2E0 00340600 */  sll        $a2, $a2, 16
/* 4DAE4 8005D2E4 03340600 */  sra        $a2, $a2, 16
/* 4DAE8 8005D2E8 1BE6010C */  jal        LoadClut
/* 4DAEC 8005D2EC C003C624 */   addiu     $a2, $a2, 0x3C0
/* 4DAF0 8005D2F0 21200002 */  addu       $a0, $s0, $zero
/* 4DAF4 8005D2F4 21804000 */  addu       $s0, $v0, $zero
/* 4DAF8 8005D2F8 260050A6 */  sh         $s0, 0x26($s2)
/* 4DAFC 8005D2FC 321791A7 */  sh         $s1, %gp_rel(TheClutRow)($gp)
/* 4DB00 8005D300 3479010C */  jal        TagHSVPaletteforSave
/* 4DB04 8005D304 21282002 */   addu      $a1, $s1, $zero
/* 4DB08 8005D308 5411838F */  lw         $v1, %gp_rel(CLUTCOUNT)($gp)
/* 4DB0C 8005D30C 00000000 */  nop
/* 4DB10 8005D310 01006324 */  addiu      $v1, $v1, 0x1
/* 4DB14 8005D314 541183AF */  sw         $v1, %gp_rel(CLUTCOUNT)($gp)
/* 4DB18 8005D318 D0740108 */  j          .L8005D340
/* 4DB1C 8005D31C 21100002 */   addu      $v0, $s0, $zero
.L8005D320:
/* 4DB20 8005D320 82005226 */  addiu      $s2, $s2, 0x82
/* 4DB24 8005D324 01002226 */  addiu      $v0, $s1, 0x1
/* 4DB28 8005D328 00140200 */  sll        $v0, $v0, 16
/* 4DB2C 8005D32C 038C0200 */  sra        $s1, $v0, 16
/* 4DB30 8005D330 4000232A */  slti       $v1, $s1, 0x40
/* 4DB34 8005D334 CFFF6014 */  bnez       $v1, .L8005D274
/* 4DB38 8005D338 82008424 */   addiu     $a0, $a0, 0x82
/* 4DB3C 8005D33C FFFF0234 */  ori        $v0, $zero, 0xFFFF
.L8005D340:
/* 4DB40 8005D340 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4DB44 8005D344 1800B28F */  lw         $s2, 0x18($sp)
/* 4DB48 8005D348 1400B18F */  lw         $s1, 0x14($sp)
/* 4DB4C 8005D34C 1000B08F */  lw         $s0, 0x10($sp)
/* 4DB50 8005D350 0800E003 */  jr         $ra
/* 4DB54 8005D354 2000BD27 */   addiu     $sp, $sp, 0x20
.size Alloc256CLUT, . - Alloc256CLUT
