.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_noteoff_vs
/* 454A4 80054CA4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 454A8 80054CA8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 454AC 80054CAC 21988000 */  addu       $s3, $a0, $zero
/* 454B0 80054CB0 1000B0AF */  sw         $s0, 0x10($sp)
/* 454B4 80054CB4 21800000 */  addu       $s0, $zero, $zero
/* 454B8 80054CB8 1800B2AF */  sw         $s2, 0x18($sp)
/* 454BC 80054CBC 01001224 */  addiu      $s2, $zero, 0x1
/* 454C0 80054CC0 2000BFAF */  sw         $ra, 0x20($sp)
/* 454C4 80054CC4 1400B1AF */  sw         $s1, 0x14($sp)
/* 454C8 80054CC8 1C00718E */  lw         $s1, 0x1C($s3)
/* 454CC 80054CCC 04101202 */  sllv       $v0, $s2, $s0
.L80054CD0:
/* 454D0 80054CD0 24102202 */  and        $v0, $s1, $v0
/* 454D4 80054CD4 03004010 */  beqz       $v0, .L80054CE4
/* 454D8 80054CD8 00000000 */   nop
/* 454DC 80054CDC 5855010C */  jal        pxm_free_spuchan
/* 454E0 80054CE0 21200002 */   addu      $a0, $s0, $zero
.L80054CE4:
/* 454E4 80054CE4 01001026 */  addiu      $s0, $s0, 0x1
/* 454E8 80054CE8 1700022E */  sltiu      $v0, $s0, 0x17
/* 454EC 80054CEC F8FF4014 */  bnez       $v0, .L80054CD0
/* 454F0 80054CF0 04101202 */   sllv      $v0, $s2, $s0
/* 454F4 80054CF4 7955010C */  jal        pxm_free_voice
/* 454F8 80054CF8 21206002 */   addu      $a0, $s3, $zero
/* 454FC 80054CFC 27181100 */  nor        $v1, $zero, $s1
/* 45500 80054D00 1410828F */  lw         $v0, %gp_rel(pxm_chanbits)($gp)
/* 45504 80054D04 2000BF8F */  lw         $ra, 0x20($sp)
/* 45508 80054D08 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4550C 80054D0C 1800B28F */  lw         $s2, 0x18($sp)
/* 45510 80054D10 1400B18F */  lw         $s1, 0x14($sp)
/* 45514 80054D14 1000B08F */  lw         $s0, 0x10($sp)
/* 45518 80054D18 24104300 */  and        $v0, $v0, $v1
/* 4551C 80054D1C 141082AF */  sw         $v0, %gp_rel(pxm_chanbits)($gp)
/* 45520 80054D20 0800E003 */  jr         $ra
/* 45524 80054D24 2800BD27 */   addiu     $sp, $sp, 0x28
.size pxm_noteoff_vs, . - pxm_noteoff_vs
