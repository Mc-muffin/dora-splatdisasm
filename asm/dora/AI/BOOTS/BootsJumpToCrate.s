.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsJumpToCrate
/* 26018 80035818 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2601C 8003581C 1000B0AF */  sw         $s0, 0x10($sp)
/* 26020 80035820 0A80103C */  lui        $s0, %hi(boots_aidata)
/* 26024 80035824 01000224 */  addiu      $v0, $zero, 0x1
/* 26028 80035828 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2602C 8003582C 21988000 */  addu       $s3, $a0, $zero
/* 26030 80035830 2000B4AF */  sw         $s4, 0x20($sp)
/* 26034 80035834 21A0A000 */  addu       $s4, $a1, $zero
/* 26038 80035838 2400B5AF */  sw         $s5, 0x24($sp)
/* 2603C 8003583C 21A8C000 */  addu       $s5, $a2, $zero
/* 26040 80035840 2800B6AF */  sw         $s6, 0x28($sp)
/* 26044 80035844 21B0E000 */  addu       $s6, $a3, $zero
/* 26048 80035848 1800B2AF */  sw         $s2, 0x18($sp)
/* 2604C 8003584C 0A80123C */  lui        $s2, %hi(BootsActor)
/* 26050 80035850 1400B1AF */  sw         $s1, 0x14($sp)
/* 26054 80035854 988D5126 */  addiu      $s1, $s2, %lo(BootsActor)
/* 26058 80035858 588F02AE */  sw         $v0, %lo(boots_aidata)($s0)
/* 2605C 8003585C 588F1026 */  addiu      $s0, $s0, %lo(boots_aidata)
/* 26060 80035860 21202002 */  addu       $a0, $s1, $zero
/* 26064 80035864 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 26068 80035868 DA28010C */  jal        InitActorJump
/* 2606C 8003586C 04000526 */   addiu     $a1, $s0, 0x4
/* 26070 80035870 0C0013AE */  sw         $s3, 0xC($s0)
/* 26074 80035874 100014AE */  sw         $s4, 0x10($s0)
/* 26078 80035878 988D438E */  lw         $v1, %lo(BootsActor)($s2)
/* 2607C 8003587C 0400248E */  lw         $a0, 0x4($s1)
/* 26080 80035880 0800258E */  lw         $a1, 0x8($s1)
/* 26084 80035884 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 26088 80035888 8000A226 */  addiu      $v0, $s5, 0x80
/* 2608C 8003588C 140002AE */  sw         $v0, 0x14($s0)
/* 26090 80035890 340016AE */  sw         $s6, 0x34($s0)
/* 26094 80035894 4C1496AF */  sw         $s6, %gp_rel(lastcrate)($gp)
/* 26098 80035898 2800B68F */  lw         $s6, 0x28($sp)
/* 2609C 8003589C 441495AF */  sw         $s5, %gp_rel(lastz)($gp)
/* 260A0 800358A0 2400B58F */  lw         $s5, 0x24($sp)
/* 260A4 800358A4 401494AF */  sw         $s4, %gp_rel(lasty)($gp)
/* 260A8 800358A8 2000B48F */  lw         $s4, 0x20($sp)
/* 260AC 800358AC 3C1493AF */  sw         $s3, %gp_rel(lastx)($gp)
/* 260B0 800358B0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 260B4 800358B4 1800B28F */  lw         $s2, 0x18($sp)
/* 260B8 800358B8 1400B18F */  lw         $s1, 0x14($sp)
/* 260BC 800358BC 1C0003AE */  sw         $v1, 0x1C($s0)
/* 260C0 800358C0 200004AE */  sw         $a0, 0x20($s0)
/* 260C4 800358C4 240005AE */  sw         $a1, 0x24($s0)
/* 260C8 800358C8 1000B08F */  lw         $s0, 0x10($sp)
/* 260CC 800358CC 0800E003 */  jr         $ra
/* 260D0 800358D0 3000BD27 */   addiu     $sp, $sp, 0x30
.size BootsJumpToCrate, . - BootsJumpToCrate
