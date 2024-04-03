.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitBootsBlinks
/* 25E3C 8003563C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 25E40 80035640 1400B1AF */  sw         $s1, 0x14($sp)
/* 25E44 80035644 21888000 */  addu       $s1, $a0, $zero
/* 25E48 80035648 1800BFAF */  sw         $ra, 0x18($sp)
/* 25E4C 8003564C B35C010C */  jal        GetSizeOfFile
/* 25E50 80035650 1000B0AF */   sw        $s0, 0x10($sp)
/* 25E54 80035654 2B3F010C */  jal        new_malloc
/* 25E58 80035658 21204000 */   addu      $a0, $v0, $zero
/* 25E5C 8003565C 21804000 */  addu       $s0, $v0, $zero
/* 25E60 80035660 04000012 */  beqz       $s0, .L80035674
/* 25E64 80035664 21202002 */   addu      $a0, $s1, $zero
/* 25E68 80035668 495C010C */  jal        LoadFile
/* 25E6C 8003566C 21280002 */   addu      $a1, $s0, $zero
/* 25E70 80035670 D00990AF */  sw         $s0, %gp_rel(BootsExpressionFile)($gp)
.L80035674:
/* 25E74 80035674 1800BF8F */  lw         $ra, 0x18($sp)
/* 25E78 80035678 1400B18F */  lw         $s1, 0x14($sp)
/* 25E7C 8003567C 1000B08F */  lw         $s0, 0x10($sp)
/* 25E80 80035680 0800E003 */  jr         $ra
/* 25E84 80035684 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitBootsBlinks, . - InitBootsBlinks
