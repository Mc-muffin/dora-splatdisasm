.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SaveHSVPalettes
/* 4E480 8005DC80 D0FDBD27 */  addiu      $sp, $sp, -0x230
/* 4E484 8005DC84 2C02BFAF */  sw         $ra, 0x22C($sp)
/* 4E488 8005DC88 2802B4AF */  sw         $s4, 0x228($sp)
/* 4E48C 8005DC8C 2402B3AF */  sw         $s3, 0x224($sp)
/* 4E490 8005DC90 2002B2AF */  sw         $s2, 0x220($sp)
/* 4E494 8005DC94 1C02B1AF */  sw         $s1, 0x21C($sp)
/* 4E498 8005DC98 1802B0AF */  sw         $s0, 0x218($sp)
.L8005DC9C:
/* 4E49C 8005DC9C 36DB010C */  jal        DrawSync
/* 4E4A0 8005DCA0 01000424 */   addiu     $a0, $zero, 0x1
/* 4E4A4 8005DCA4 FDFF4014 */  bnez       $v0, .L8005DC9C
/* 4E4A8 8005DCA8 00000000 */   nop
/* 4E4AC 8005DCAC 5811848F */  lw         $a0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E4B0 8005DCB0 00000000 */  nop
/* 4E4B4 8005DCB4 04008010 */  beqz       $a0, .L8005DCC8
/* 4E4B8 8005DCB8 00000000 */   nop
/* 4E4BC 8005DCBC 2B3F010C */  jal        new_malloc
/* 4E4C0 8005DCC0 40220400 */   sll       $a0, $a0, 9
/* 4E4C4 8005DCC4 2C1782AF */  sw         $v0, %gp_rel(DownloadPalettes)($gp)
.L8005DCC8:
/* 4E4C8 8005DCC8 5811828F */  lw         $v0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E4CC 8005DCCC 00000000 */  nop
/* 4E4D0 8005DCD0 35004018 */  blez       $v0, .L8005DDA8
/* 4E4D4 8005DCD4 21800000 */   addu      $s0, $zero, $zero
/* 4E4D8 8005DCD8 0C80023C */  lui        $v0, %hi(SavedPalettes + 0x8)
/* 4E4DC 8005DCDC 30E55324 */  addiu      $s3, $v0, %lo(SavedPalettes + 0x8)
/* 4E4E0 8005DCE0 FCFF7426 */  addiu      $s4, $s3, -0x4
/* 4E4E4 8005DCE4 40201000 */  sll        $a0, $s0, 1
.L8005DCE8:
/* 4E4E8 8005DCE8 21109000 */  addu       $v0, $a0, $s0
/* 4E4EC 8005DCEC 80280200 */  sll        $a1, $v0, 2
/* 4E4F0 8005DCF0 2118B300 */  addu       $v1, $a1, $s3
/* 4E4F4 8005DCF4 0000628C */  lw         $v0, 0x0($v1)
/* 4E4F8 8005DCF8 21888000 */  addu       $s1, $a0, $zero
/* 4E4FC 8005DCFC 25004014 */  bnez       $v0, .L8005DD94
/* 4E500 8005DD00 01001226 */   addiu     $s2, $s0, 0x1
/* 4E504 8005DD04 2110B400 */  addu       $v0, $a1, $s4
/* 4E508 8005DD08 0000468C */  lw         $a2, 0x0($v0)
/* 4E50C 8005DD0C 00000000 */  nop
/* 4E510 8005DD10 0200C104 */  bgez       $a2, .L8005DD1C
/* 4E514 8005DD14 2118C000 */   addu      $v1, $a2, $zero
/* 4E518 8005DD18 3F00C324 */  addiu      $v1, $a2, 0x3F
.L8005DD1C:
/* 4E51C 8005DD1C 1002A427 */  addiu      $a0, $sp, 0x210
/* 4E520 8005DD20 1000A527 */  addiu      $a1, $sp, 0x10
/* 4E524 8005DD24 83190300 */  sra        $v1, $v1, 6
/* 4E528 8005DD28 02006224 */  addiu      $v0, $v1, 0x2
/* 4E52C 8005DD2C 00120200 */  sll        $v0, $v0, 8
/* 4E530 8005DD30 80190300 */  sll        $v1, $v1, 6
/* 4E534 8005DD34 2318C300 */  subu       $v1, $a2, $v1
/* 4E538 8005DD38 C0036324 */  addiu      $v1, $v1, 0x3C0
/* 4E53C 8005DD3C 1002A2A7 */  sh         $v0, 0x210($sp)
/* 4E540 8005DD40 00010224 */  addiu      $v0, $zero, 0x100
/* 4E544 8005DD44 1202A3A7 */  sh         $v1, 0x212($sp)
/* 4E548 8005DD48 01000324 */  addiu      $v1, $zero, 0x1
/* 4E54C 8005DD4C 1402A2A7 */  sh         $v0, 0x214($sp)
/* 4E550 8005DD50 F9DB010C */  jal        StoreImage
/* 4E554 8005DD54 1602A3A7 */   sh        $v1, 0x216($sp)
.L8005DD58:
/* 4E558 8005DD58 36DB010C */  jal        DrawSync
/* 4E55C 8005DD5C 01000424 */   addiu     $a0, $zero, 0x1
/* 4E560 8005DD60 FDFF4014 */  bnez       $v0, .L8005DD58
/* 4E564 8005DD64 00000000 */   nop
/* 4E568 8005DD68 2B3F010C */  jal        new_malloc
/* 4E56C 8005DD6C 00080424 */   addiu     $a0, $zero, 0x800
/* 4E570 8005DD70 1000A427 */  addiu      $a0, $sp, 0x10
/* 4E574 8005DD74 21183002 */  addu       $v1, $s1, $s0
/* 4E578 8005DD78 80180300 */  sll        $v1, $v1, 2
/* 4E57C 8005DD7C 21287300 */  addu       $a1, $v1, $s3
/* 4E580 8005DD80 21187400 */  addu       $v1, $v1, $s4
/* 4E584 8005DD84 0000A2AC */  sw         $v0, 0x0($a1)
/* 4E588 8005DD88 0000668C */  lw         $a2, 0x0($v1)
/* 4E58C 8005DD8C 7C76010C */  jal        SavePaletteToAdjust
/* 4E590 8005DD90 21280002 */   addu      $a1, $s0, $zero
.L8005DD94:
/* 4E594 8005DD94 5811828F */  lw         $v0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E598 8005DD98 21804002 */  addu       $s0, $s2, $zero
/* 4E59C 8005DD9C 2A100202 */  slt        $v0, $s0, $v0
/* 4E5A0 8005DDA0 D1FF4014 */  bnez       $v0, .L8005DCE8
/* 4E5A4 8005DDA4 40201000 */   sll       $a0, $s0, 1
.L8005DDA8:
/* 4E5A8 8005DDA8 2C02BF8F */  lw         $ra, 0x22C($sp)
/* 4E5AC 8005DDAC 2802B48F */  lw         $s4, 0x228($sp)
/* 4E5B0 8005DDB0 2402B38F */  lw         $s3, 0x224($sp)
/* 4E5B4 8005DDB4 2002B28F */  lw         $s2, 0x220($sp)
/* 4E5B8 8005DDB8 1C02B18F */  lw         $s1, 0x21C($sp)
/* 4E5BC 8005DDBC 1802B08F */  lw         $s0, 0x218($sp)
/* 4E5C0 8005DDC0 0800E003 */  jr         $ra
/* 4E5C4 8005DDC4 3002BD27 */   addiu     $sp, $sp, 0x230
.size SaveHSVPalettes, . - SaveHSVPalettes
