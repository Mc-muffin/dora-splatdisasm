.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitDoraBlinks
/* AC7C 8001A47C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AC80 8001A480 1400B1AF */  sw         $s1, 0x14($sp)
/* AC84 8001A484 21888000 */  addu       $s1, $a0, $zero
/* AC88 8001A488 1800BFAF */  sw         $ra, 0x18($sp)
/* AC8C 8001A48C B35C010C */  jal        GetSizeOfFile
/* AC90 8001A490 1000B0AF */   sw        $s0, 0x10($sp)
/* AC94 8001A494 2B3F010C */  jal        new_malloc
/* AC98 8001A498 21204000 */   addu      $a0, $v0, $zero
/* AC9C 8001A49C 21804000 */  addu       $s0, $v0, $zero
/* ACA0 8001A4A0 04000012 */  beqz       $s0, .L8001A4B4
/* ACA4 8001A4A4 21202002 */   addu      $a0, $s1, $zero
/* ACA8 8001A4A8 495C010C */  jal        LoadFile
/* ACAC 8001A4AC 21280002 */   addu      $a1, $s0, $zero
/* ACB0 8001A4B0 780090AF */  sw         $s0, %gp_rel(DoraExpressionFile)($gp)
.L8001A4B4:
/* ACB4 8001A4B4 1800BF8F */  lw         $ra, 0x18($sp)
/* ACB8 8001A4B8 1400B18F */  lw         $s1, 0x14($sp)
/* ACBC 8001A4BC 1000B08F */  lw         $s0, 0x10($sp)
/* ACC0 8001A4C0 0800E003 */  jr         $ra
/* ACC4 8001A4C4 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitDoraBlinks, . - InitDoraBlinks
