.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitHUDSprites
/* E96C 8001E16C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* E970 8001E170 0980033C */  lui        $v1, %hi(g_pickup_mesh)
/* E974 8001E174 F455638C */  lw         $v1, %lo(g_pickup_mesh)($v1)
/* E978 8001E178 01000224 */  addiu      $v0, $zero, 0x1
/* E97C 8001E17C 04006214 */  bne        $v1, $v0, .L8001E190
/* E980 8001E180 1000BFAF */   sw        $ra, 0x10($sp)
/* E984 8001E184 0180043C */  lui        $a0, %hi(D_80010768)
/* E988 8001E188 69780008 */  j          .L8001E1A4
/* E98C 8001E18C 68078424 */   addiu     $a0, $a0, %lo(D_80010768)
.L8001E190:
/* E990 8001E190 02000224 */  addiu      $v0, $zero, 0x2
/* E994 8001E194 08006214 */  bne        $v1, $v0, .L8001E1B8
/* E998 8001E198 0180043C */   lui       $a0, %hi(D_80010798)
/* E99C 8001E19C 0180043C */  lui        $a0, %hi(D_80010780)
/* E9A0 8001E1A0 80078424 */  addiu      $a0, $a0, %lo(D_80010780)
.L8001E1A4:
/* E9A4 8001E1A4 0980053C */  lui        $a1, %hi(HUDSpriteArray)
/* E9A8 8001E1A8 3C73000C */  jal        InitialiseHUDSprite
/* E9AC 8001E1AC A060A524 */   addiu     $a1, $a1, %lo(HUDSpriteArray)
/* E9B0 8001E1B0 72780008 */  j          .L8001E1C8
/* E9B4 8001E1B4 00000000 */   nop
.L8001E1B8:
/* E9B8 8001E1B8 98078424 */  addiu      $a0, $a0, %lo(D_80010798)
/* E9BC 8001E1BC 0980053C */  lui        $a1, %hi(HUDSpriteArray)
/* E9C0 8001E1C0 3C73000C */  jal        InitialiseHUDSprite
/* E9C4 8001E1C4 A060A524 */   addiu     $a1, $a1, %lo(HUDSpriteArray)
.L8001E1C8:
/* E9C8 8001E1C8 1000BF8F */  lw         $ra, 0x10($sp)
/* E9CC 8001E1CC 00000000 */  nop
/* E9D0 8001E1D0 0800E003 */  jr         $ra
/* E9D4 8001E1D4 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitHUDSprites, . - InitHUDSprites
