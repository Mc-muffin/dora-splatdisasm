.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckLoadNewBGGraphic
/* 32AD0 800422D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32AD4 800422D4 1400BFAF */  sw         $ra, 0x14($sp)
/* 32AD8 800422D8 1000B0AF */  sw         $s0, 0x10($sp)
/* 32ADC 800422DC 0C00828C */  lw         $v0, 0xC($a0)
/* 32AE0 800422E0 80280500 */  sll        $a1, $a1, 2
/* 32AE4 800422E4 2128A200 */  addu       $a1, $a1, $v0
/* 32AE8 800422E8 0000B08C */  lw         $s0, 0x0($a1)
/* 32AEC 800422EC 700C80AF */  sw         $zero, %gp_rel(BGImageFLagReady)($gp)
/* 32AF0 800422F0 380C80AF */  sw         $zero, %gp_rel(CineFileLoaded)($gp)
/* 32AF4 800422F4 B13A010C */  jal        PolyPoolAddr
/* 32AF8 800422F8 00000000 */   nop
/* 32AFC 800422FC 0480063C */  lui        $a2, %hi(BGImageLoaded)
/* 32B00 80042300 21284000 */  addu       $a1, $v0, $zero
/* 32B04 80042304 0C22C624 */  addiu      $a2, $a2, %lo(BGImageLoaded)
/* 32B08 80042308 945C010C */  jal        LoadFileBackground
/* 32B0C 8004230C 21200002 */   addu      $a0, $s0, $zero
/* 32B10 80042310 1400BF8F */  lw         $ra, 0x14($sp)
/* 32B14 80042314 1000B08F */  lw         $s0, 0x10($sp)
/* 32B18 80042318 0800E003 */  jr         $ra
/* 32B1C 8004231C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckLoadNewBGGraphic, . - CheckLoadNewBGGraphic
