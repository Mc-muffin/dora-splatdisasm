.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdatePlayerTrack
/* 3AE20 8004A620 0A80053C */  lui        $a1, %hi(PlayerTrack)
/* 3AE24 8004A624 F04EA224 */  addiu      $v0, $a1, %lo(PlayerTrack)
/* 3AE28 8004A628 0980043C */  lui        $a0, %hi(ETActor)
/* 3AE2C 8004A62C B05A8824 */  addiu      $t0, $a0, %lo(ETActor)
/* 3AE30 8004A630 2015868F */  lw         $a2, %gp_rel(current_track_index)($gp)
/* 3AE34 8004A634 00000000 */  nop
/* 3AE38 8004A638 00190600 */  sll        $v1, $a2, 4
/* 3AE3C 8004A63C 21386200 */  addu       $a3, $v1, $v0
/* 3AE40 8004A640 B05A838C */  lw         $v1, %lo(ETActor)($a0)
/* 3AE44 8004A644 0000E28C */  lw         $v0, 0x0($a3)
/* 3AE48 8004A648 C3190300 */  sra        $v1, $v1, 7
/* 3AE4C 8004A64C C3110200 */  sra        $v0, $v0, 7
/* 3AE50 8004A650 0D006214 */  bne        $v1, $v0, .L8004A688
/* 3AE54 8004A654 21488000 */   addu      $t1, $a0, $zero
/* 3AE58 8004A658 0400038D */  lw         $v1, 0x4($t0)
/* 3AE5C 8004A65C 0400E28C */  lw         $v0, 0x4($a3)
/* 3AE60 8004A660 C3190300 */  sra        $v1, $v1, 7
/* 3AE64 8004A664 C3110200 */  sra        $v0, $v0, 7
/* 3AE68 8004A668 08006214 */  bne        $v1, $v0, .L8004A68C
/* 3AE6C 8004A66C 0100C224 */   addiu     $v0, $a2, 0x1
/* 3AE70 8004A670 0800038D */  lw         $v1, 0x8($t0)
/* 3AE74 8004A674 0800E28C */  lw         $v0, 0x8($a3)
/* 3AE78 8004A678 C3190300 */  sra        $v1, $v1, 7
/* 3AE7C 8004A67C C3110200 */  sra        $v0, $v0, 7
/* 3AE80 8004A680 10006210 */  beq        $v1, $v0, .L8004A6C4
/* 3AE84 8004A684 00000000 */   nop
.L8004A688:
/* 3AE88 8004A688 0100C224 */  addiu      $v0, $a2, 0x1
.L8004A68C:
/* 3AE8C 8004A68C 0F004230 */  andi       $v0, $v0, 0xF
/* 3AE90 8004A690 00210200 */  sll        $a0, $v0, 4
/* 3AE94 8004A694 F04EA324 */  addiu      $v1, $a1, %lo(PlayerTrack)
/* 3AE98 8004A698 21388300 */  addu       $a3, $a0, $v1
/* 3AE9C 8004A69C B05A258D */  lw         $a1, %lo(ETActor)($t1)
/* 3AEA0 8004A6A0 B05A2425 */  addiu      $a0, $t1, %lo(ETActor)
/* 3AEA4 8004A6A4 201582AF */  sw         $v0, %gp_rel(current_track_index)($gp)
/* 3AEA8 8004A6A8 0000E5AC */  sw         $a1, 0x0($a3)
/* 3AEAC 8004A6AC 0400828C */  lw         $v0, 0x4($a0)
/* 3AEB0 8004A6B0 00000000 */  nop
/* 3AEB4 8004A6B4 0400E2AC */  sw         $v0, 0x4($a3)
/* 3AEB8 8004A6B8 0800838C */  lw         $v1, 0x8($a0)
/* 3AEBC 8004A6BC 00000000 */  nop
/* 3AEC0 8004A6C0 0800E3AC */  sw         $v1, 0x8($a3)
.L8004A6C4:
/* 3AEC4 8004A6C4 0800E003 */  jr         $ra
/* 3AEC8 8004A6C8 00000000 */   nop
.size UpdatePlayerTrack, . - UpdatePlayerTrack
