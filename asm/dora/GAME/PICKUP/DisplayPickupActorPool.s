.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DisplayPickupActorPool
/* C5C8 8001BDC8 C0FEBD27 */  addiu      $sp, $sp, -0x140
/* C5CC 8001BDCC 12000424 */  addiu      $a0, $zero, 0x12
/* C5D0 8001BDD0 18000524 */  addiu      $a1, $zero, 0x18
/* C5D4 8001BDD4 21300000 */  addu       $a2, $zero, $zero
/* C5D8 8001BDD8 0180073C */  lui        $a3, %hi(D_80010348)
/* C5DC 8001BDDC 3C02828F */  lw         $v0, %gp_rel(NumActivePickupPool)($gp)
/* C5E0 8001BDE0 4803E724 */  addiu      $a3, $a3, %lo(D_80010348)
/* C5E4 8001BDE4 1801B0AF */  sw         $s0, 0x118($sp)
/* C5E8 8001BDE8 21800000 */  addu       $s0, $zero, $zero
/* C5EC 8001BDEC 3C01BFAF */  sw         $ra, 0x13C($sp)
/* C5F0 8001BDF0 3801BEAF */  sw         $fp, 0x138($sp)
/* C5F4 8001BDF4 3401B7AF */  sw         $s7, 0x134($sp)
/* C5F8 8001BDF8 3001B6AF */  sw         $s6, 0x130($sp)
/* C5FC 8001BDFC 2C01B5AF */  sw         $s5, 0x12C($sp)
/* C600 8001BE00 2801B4AF */  sw         $s4, 0x128($sp)
/* C604 8001BE04 2401B3AF */  sw         $s3, 0x124($sp)
/* C608 8001BE08 2001B2AF */  sw         $s2, 0x120($sp)
/* C60C 8001BE0C 1C01B1AF */  sw         $s1, 0x11C($sp)
/* C610 8001BE10 3063010C */  jal        Print
/* C614 8001BE14 1000A2AF */   sw        $v0, 0x10($sp)
/* C618 8001BE18 3413838F */  lw         $v1, %gp_rel(gLevelMaxPool)($gp)
/* C61C 8001BE1C 00000000 */  nop
/* C620 8001BE20 31006018 */  blez       $v1, .L8001BEE8
/* C624 8001BE24 0A001524 */   addiu     $s5, $zero, 0xA
/* C628 8001BE28 22001424 */  addiu      $s4, $zero, 0x22
/* C62C 8001BE2C 22001324 */  addiu      $s3, $zero, 0x22
/* C630 8001BE30 0980023C */  lui        $v0, %hi(PickupPool)
/* C634 8001BE34 505D5624 */  addiu      $s6, $v0, %lo(PickupPool)
/* C638 8001BE38 1000D226 */  addiu      $s2, $s6, 0x10
/* C63C 8001BE3C 21880000 */  addu       $s1, $zero, $zero
/* C640 8001BE40 01801E3C */  lui        $fp, %hi(D_80010360)
/* C644 8001BE44 0980173C */  lui        $s7, %hi(D_800944A8)
.L8001BE48:
/* C648 8001BE48 2110D102 */  addu       $v0, $s6, $s1
/* C64C 8001BE4C 0C00468C */  lw         $a2, 0xC($v0)
/* C650 8001BE50 00000000 */  nop
/* C654 8001BE54 1800C010 */  beqz       $a2, .L8001BEB8
/* C658 8001BE58 12000424 */   addiu     $a0, $zero, 0x12
/* C65C 8001BE5C 0000478E */  lw         $a3, 0x0($s2)
/* C660 8001BE60 00000000 */  nop
/* C664 8001BE64 1000E28C */  lw         $v0, 0x10($a3)
/* C668 8001BE68 00000000 */  nop
/* C66C 8001BE6C 00014230 */  andi       $v0, $v0, 0x100
/* C670 8001BE70 07004010 */  beqz       $v0, .L8001BE90
/* C674 8001BE74 1800A427 */   addiu     $a0, $sp, 0x18
/* C678 8001BE78 1000A2AF */  sw         $v0, 0x10($sp)
/* C67C 8001BE7C 0180023C */  lui        $v0, %hi(D_80010354)
/* C680 8001BE80 53C5010C */  jal        sprintf
/* C684 8001BE84 54034524 */   addiu     $a1, $v0, %lo(D_80010354)
/* C688 8001BE88 A86F0008 */  j          .L8001BEA0
/* C68C 8001BE8C 1800A427 */   addiu     $a0, $sp, 0x18
.L8001BE90:
/* C690 8001BE90 1000A0AF */  sw         $zero, 0x10($sp)
/* C694 8001BE94 53C5010C */  jal        sprintf
/* C698 8001BE98 6003C527 */   addiu     $a1, $fp, %lo(D_80010360)
/* C69C 8001BE9C 1800A427 */  addiu      $a0, $sp, 0x18
.L8001BEA0:
/* C6A0 8001BEA0 12000524 */  addiu      $a1, $zero, 0x12
/* C6A4 8001BEA4 21306002 */  addu       $a2, $s3, $zero
/* C6A8 8001BEA8 EA60010C */  jal        TextAddString
/* C6AC 8001BEAC 01000724 */   addiu     $a3, $zero, 0x1
/* C6B0 8001BEB0 B36F0008 */  j          .L8001BECC
/* C6B4 8001BEB4 21A09502 */   addu      $s4, $s4, $s5
.L8001BEB8:
/* C6B8 8001BEB8 21288002 */  addu       $a1, $s4, $zero
/* C6BC 8001BEBC 21300000 */  addu       $a2, $zero, $zero
/* C6C0 8001BEC0 3063010C */  jal        Print
/* C6C4 8001BEC4 A844E726 */   addiu     $a3, $s7, %lo(D_800944A8)
/* C6C8 8001BEC8 21A09502 */  addu       $s4, $s4, $s5
.L8001BECC:
/* C6CC 8001BECC 21987502 */  addu       $s3, $s3, $s5
/* C6D0 8001BED0 14005226 */  addiu      $s2, $s2, 0x14
/* C6D4 8001BED4 3413828F */  lw         $v0, %gp_rel(gLevelMaxPool)($gp)
/* C6D8 8001BED8 01001026 */  addiu      $s0, $s0, 0x1
/* C6DC 8001BEDC 2A100202 */  slt        $v0, $s0, $v0
/* C6E0 8001BEE0 D9FF4014 */  bnez       $v0, .L8001BE48
/* C6E4 8001BEE4 14003126 */   addiu     $s1, $s1, 0x14
.L8001BEE8:
/* C6E8 8001BEE8 3C01BF8F */  lw         $ra, 0x13C($sp)
/* C6EC 8001BEEC 3801BE8F */  lw         $fp, 0x138($sp)
/* C6F0 8001BEF0 3401B78F */  lw         $s7, 0x134($sp)
/* C6F4 8001BEF4 3001B68F */  lw         $s6, 0x130($sp)
/* C6F8 8001BEF8 2C01B58F */  lw         $s5, 0x12C($sp)
/* C6FC 8001BEFC 2801B48F */  lw         $s4, 0x128($sp)
/* C700 8001BF00 2401B38F */  lw         $s3, 0x124($sp)
/* C704 8001BF04 2001B28F */  lw         $s2, 0x120($sp)
/* C708 8001BF08 1C01B18F */  lw         $s1, 0x11C($sp)
/* C70C 8001BF0C 1801B08F */  lw         $s0, 0x118($sp)
/* C710 8001BF10 0800E003 */  jr         $ra
/* C714 8001BF14 4001BD27 */   addiu     $sp, $sp, 0x140
.size DisplayPickupActorPool, . - DisplayPickupActorPool
