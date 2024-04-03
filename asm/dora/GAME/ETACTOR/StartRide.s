.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StartRide
/* A648 80019E48 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A64C 80019E4C 1000B0AF */  sw         $s0, 0x10($sp)
/* A650 80019E50 0980103C */  lui        $s0, %hi(ETActor)
/* A654 80019E54 B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
/* A658 80019E58 1400B1AF */  sw         $s1, 0x14($sp)
/* A65C 80019E5C 0A80113C */  lui        $s1, %hi(BootsActor)
/* A660 80019E60 988D3126 */  addiu      $s1, $s1, %lo(BootsActor)
/* A664 80019E64 1800BFAF */  sw         $ra, 0x18($sp)
/* A668 80019E68 2401828C */  lw         $v0, 0x124($a0)
/* A66C 80019E6C 1000238E */  lw         $v1, 0x10($s1)
/* A670 80019E70 3000458C */  lw         $a1, 0x30($v0)
/* A674 80019E74 01000224 */  addiu      $v0, $zero, 0x1
/* A678 80019E78 900084AF */  sw         $a0, %gp_rel(BoatActorPtr)($gp)
/* A67C 80019E7C FFF70424 */  addiu      $a0, $zero, -0x801
/* A680 80019E80 880082AF */  sw         $v0, %gp_rel(BootsAndDoraRidingFlag)($gp)
/* A684 80019E84 1000028E */  lw         $v0, 0x10($s0)
/* A688 80019E88 24186400 */  and        $v1, $v1, $a0
/* A68C 80019E8C 24104400 */  and        $v0, $v0, $a0
/* A690 80019E90 100002AE */  sw         $v0, 0x10($s0)
/* A694 80019E94 0B000224 */  addiu      $v0, $zero, 0xB
/* A698 80019E98 100023AE */  sw         $v1, 0x10($s1)
/* A69C 80019E9C 0C0002AE */  sw         $v0, 0xC($s0)
/* A6A0 80019EA0 940085AF */  sw         $a1, %gp_rel(BoatParentActorPtr)($gp)
/* A6A4 80019EA4 02D6000C */  jal        BootsStartRide
/* A6A8 80019EA8 00000000 */   nop
/* A6AC 80019EAC C8128527 */  addiu      $a1, $gp, %gp_rel(g_jump_decision)
/* A6B0 80019EB0 DA28010C */  jal        InitActorJump
/* A6B4 80019EB4 21200002 */   addu      $a0, $s0, $zero
/* A6B8 80019EB8 D4128527 */  addiu      $a1, $gp, %gp_rel(g_bootsjump_decision)
/* A6BC 80019EBC DA28010C */  jal        InitActorJump
/* A6C0 80019EC0 21202002 */   addu      $a0, $s1, $zero
/* A6C4 80019EC4 1800BF8F */  lw         $ra, 0x18($sp)
/* A6C8 80019EC8 1400B18F */  lw         $s1, 0x14($sp)
/* A6CC 80019ECC 1000B08F */  lw         $s0, 0x10($sp)
/* A6D0 80019ED0 0800E003 */  jr         $ra
/* A6D4 80019ED4 2000BD27 */   addiu     $sp, $sp, 0x20
.size StartRide, . - StartRide
