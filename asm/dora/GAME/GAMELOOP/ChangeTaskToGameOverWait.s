.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeTaskToGameOverWait
/* 23E18 80033618 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23E1C 8003361C 09000224 */  addiu      $v0, $zero, 0x9
/* 23E20 80033620 1000BFAF */  sw         $ra, 0x10($sp)
/* 23E24 80033624 CC1382AF */  sw         $v0, %gp_rel(gInstructionalScreenState)($gp)
/* 23E28 80033628 B13A010C */  jal        PolyPoolAddr
/* 23E2C 8003362C 00000000 */   nop
/* 23E30 80033630 21200000 */  addu       $a0, $zero, $zero
/* 23E34 80033634 21284000 */  addu       $a1, $v0, $zero
/* 23E38 80033638 A06E010C */  jal        LoadGraphicIntoFrameBuffer
/* 23E3C 8003363C 21300000 */   addu      $a2, $zero, $zero
/* 23E40 80033640 675B010C */  jal        BeginRedbook
/* 23E44 80033644 05000424 */   addiu     $a0, $zero, 0x5
/* 23E48 80033648 1000BF8F */  lw         $ra, 0x10($sp)
/* 23E4C 8003364C 00000000 */  nop
/* 23E50 80033650 0800E003 */  jr         $ra
/* 23E54 80033654 1800BD27 */   addiu     $sp, $sp, 0x18
.size ChangeTaskToGameOverWait, . - ChangeTaskToGameOverWait
