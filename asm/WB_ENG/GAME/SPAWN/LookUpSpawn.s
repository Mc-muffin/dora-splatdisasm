.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LookUpSpawn
/* 33824 80043024 0880023C */  lui        $v0, %hi(TestWorld)
/* 33828 80043028 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 3382C 8004302C 1000488C */  lw         $t0, 0x10($v0)
/* 33830 80043030 1C00438C */  lw         $v1, 0x1C($v0)
/* 33834 80043034 16000019 */  blez       $t0, .L80043090
/* 33838 80043038 21380000 */   addu      $a3, $zero, $zero
.L8004303C:
/* 3383C 8004303C 0000628C */  lw         $v0, 0x0($v1)
/* 33840 80043040 00000000 */  nop
/* 33844 80043044 C3110200 */  sra        $v0, $v0, 7
/* 33848 80043048 0D004414 */  bne        $v0, $a0, .L80043080
/* 3384C 8004304C 00000000 */   nop
/* 33850 80043050 0400628C */  lw         $v0, 0x4($v1)
/* 33854 80043054 00000000 */  nop
/* 33858 80043058 C3110200 */  sra        $v0, $v0, 7
/* 3385C 8004305C 08004514 */  bne        $v0, $a1, .L80043080
/* 33860 80043060 00000000 */   nop
/* 33864 80043064 0800628C */  lw         $v0, 0x8($v1)
/* 33868 80043068 00000000 */  nop
/* 3386C 8004306C C3110200 */  sra        $v0, $v0, 7
/* 33870 80043070 04004614 */  bne        $v0, $a2, .L80043084
/* 33874 80043074 0100E724 */   addiu     $a3, $a3, 0x1
/* 33878 80043078 0800E003 */  jr         $ra
/* 3387C 8004307C 21106000 */   addu      $v0, $v1, $zero
.L80043080:
/* 33880 80043080 0100E724 */  addiu      $a3, $a3, 0x1
.L80043084:
/* 33884 80043084 2A10E800 */  slt        $v0, $a3, $t0
/* 33888 80043088 ECFF4014 */  bnez       $v0, .L8004303C
/* 3388C 8004308C 24006324 */   addiu     $v1, $v1, 0x24
.L80043090:
/* 33890 80043090 0800E003 */  jr         $ra
/* 33894 80043094 21100000 */   addu      $v0, $zero, $zero
.size LookUpSpawn, . - LookUpSpawn
