.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitDoraSkates
/* ACC8 8001A4C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* ACCC 8001A4CC 1400B1AF */  sw         $s1, 0x14($sp)
/* ACD0 8001A4D0 21888000 */  addu       $s1, $a0, $zero
/* ACD4 8001A4D4 1800BFAF */  sw         $ra, 0x18($sp)
/* ACD8 8001A4D8 B35C010C */  jal        GetSizeOfFile
/* ACDC 8001A4DC 1000B0AF */   sw        $s0, 0x10($sp)
/* ACE0 8001A4E0 2B3F010C */  jal        new_malloc
/* ACE4 8001A4E4 21204000 */   addu      $a0, $v0, $zero
/* ACE8 8001A4E8 21804000 */  addu       $s0, $v0, $zero
/* ACEC 8001A4EC 04000012 */  beqz       $s0, .L8001A500
/* ACF0 8001A4F0 21202002 */   addu      $a0, $s1, $zero
/* ACF4 8001A4F4 495C010C */  jal        LoadFile
/* ACF8 8001A4F8 21280002 */   addu      $a1, $s0, $zero
/* ACFC 8001A4FC 7C0090AF */  sw         $s0, %gp_rel(DoraSkatesFile)($gp)
.L8001A500:
/* AD00 8001A500 1800BF8F */  lw         $ra, 0x18($sp)
/* AD04 8001A504 1400B18F */  lw         $s1, 0x14($sp)
/* AD08 8001A508 1000B08F */  lw         $s0, 0x10($sp)
/* AD0C 8001A50C 0800E003 */  jr         $ra
/* AD10 8001A510 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitDoraSkates, . - InitDoraSkates
