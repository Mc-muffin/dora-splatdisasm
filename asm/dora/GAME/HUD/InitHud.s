.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitHud
/* EE58 8001E658 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* EE5C 8001E65C 1000BFAF */  sw         $ra, 0x10($sp)
/* EE60 8001E660 0980053C */  lui        $a1, %hi(HUDSpriteArray)
/* EE64 8001E664 07000324 */  addiu      $v1, $zero, 0x7
/* EE68 8001E668 0980023C */  lui        $v0, %hi(InventoryActorArray)
/* EE6C 8001E66C A0634224 */  addiu      $v0, $v0, %lo(InventoryActorArray)
/* EE70 8001E670 1C004224 */  addiu      $v0, $v0, 0x1C
.L8001E674:
/* EE74 8001E674 000040AC */  sw         $zero, 0x0($v0)
/* EE78 8001E678 FFFF6324 */  addiu      $v1, $v1, -0x1
/* EE7C 8001E67C FDFF6104 */  bgez       $v1, .L8001E674
/* EE80 8001E680 FCFF4224 */   addiu     $v0, $v0, -0x4
/* EE84 8001E684 0980033C */  lui        $v1, %hi(g_pickup_mesh)
/* EE88 8001E688 F455638C */  lw         $v1, %lo(g_pickup_mesh)($v1)
/* EE8C 8001E68C 01000224 */  addiu      $v0, $zero, 0x1
/* EE90 8001E690 600480AF */  sw         $zero, %gp_rel(NumInventoryActors)($gp)
/* EE94 8001E694 2C0480AF */  sw         $zero, %gp_rel(LivesAnimate)($gp)
/* EE98 8001E698 300480AF */  sw         $zero, %gp_rel(PlantAnimate)($gp)
/* EE9C 8001E69C 340480AF */  sw         $zero, %gp_rel(Health1Animate)($gp)
/* EEA0 8001E6A0 A80380AF */  sw         $zero, %gp_rel(HUDState)($gp)
/* EEA4 8001E6A4 04006214 */  bne        $v1, $v0, .L8001E6B8
/* EEA8 8001E6A8 02000224 */   addiu     $v0, $zero, 0x2
/* EEAC 8001E6AC 0180043C */  lui        $a0, %hi(D_80010768)
/* EEB0 8001E6B0 B2790008 */  j          .L8001E6C8
/* EEB4 8001E6B4 68078424 */   addiu     $a0, $a0, %lo(D_80010768)
.L8001E6B8:
/* EEB8 8001E6B8 07006214 */  bne        $v1, $v0, .L8001E6D8
/* EEBC 8001E6BC 0180043C */   lui       $a0, %hi(D_80010798)
/* EEC0 8001E6C0 0180043C */  lui        $a0, %hi(D_80010780)
/* EEC4 8001E6C4 80078424 */  addiu      $a0, $a0, %lo(D_80010780)
.L8001E6C8:
/* EEC8 8001E6C8 3C73000C */  jal        InitialiseHUDSprite
/* EECC 8001E6CC A060A524 */   addiu     $a1, $a1, %lo(HUDSpriteArray)
/* EED0 8001E6D0 B9790008 */  j          .L8001E6E4
/* EED4 8001E6D4 00000000 */   nop
.L8001E6D8:
/* EED8 8001E6D8 98078424 */  addiu      $a0, $a0, %lo(D_80010798)
/* EEDC 8001E6DC 3C73000C */  jal        InitialiseHUDSprite
/* EEE0 8001E6E0 A060A524 */   addiu     $a1, $a1, %lo(HUDSpriteArray)
.L8001E6E4:
/* EEE4 8001E6E4 1000BF8F */  lw         $ra, 0x10($sp)
/* EEE8 8001E6E8 00000000 */  nop
/* EEEC 8001E6EC 0800E003 */  jr         $ra
/* EEF0 8001E6F0 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitHud, . - InitHud
