.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_NumOfChunkType
/* 41070 80050870 21480000 */  addu       $t1, $zero, $zero
/* 41074 80050874 0000888C */  lw         $t0, 0x0($a0)
/* 41078 80050878 00000000 */  nop
/* 4107C 8005087C 0D000011 */  beqz       $t0, .L800508B4
/* 41080 80050880 21380000 */   addu      $a3, $zero, $zero
/* 41084 80050884 0C00848C */  lw         $a0, 0xC($a0)
/* 41088 80050888 21300000 */  addu       $a2, $zero, $zero
.L8005088C:
/* 4108C 8005088C 21108600 */  addu       $v0, $a0, $a2
/* 41090 80050890 0000438C */  lw         $v1, 0x0($v0)
/* 41094 80050894 00000000 */  nop
/* 41098 80050898 0200A314 */  bne        $a1, $v1, .L800508A4
/* 4109C 8005089C 00000000 */   nop
/* 410A0 800508A0 0100E724 */  addiu      $a3, $a3, 0x1
.L800508A4:
/* 410A4 800508A4 01002925 */  addiu      $t1, $t1, 0x1
/* 410A8 800508A8 2B102801 */  sltu       $v0, $t1, $t0
/* 410AC 800508AC F7FF4014 */  bnez       $v0, .L8005088C
/* 410B0 800508B0 1400C624 */   addiu     $a2, $a2, 0x14
.L800508B4:
/* 410B4 800508B4 0800E003 */  jr         $ra
/* 410B8 800508B8 2110E000 */   addu      $v0, $a3, $zero
.size chunk_NumOfChunkType, . - chunk_NumOfChunkType
