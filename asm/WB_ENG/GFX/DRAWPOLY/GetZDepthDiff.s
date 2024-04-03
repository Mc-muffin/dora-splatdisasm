.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel GetZDepthDiff
/* 503D8 8005FBD8 801F083C */  lui        $t0, (0x1F800010 >> 16)
/* 503DC 8005FBDC 10000835 */  ori        $t0, $t0, (0x1F800010 & 0xFFFF)
/* 503E0 8005FBE0 801F023C */  lui        $v0, (0x1F800020 >> 16)
/* 503E4 8005FBE4 20004234 */  ori        $v0, $v0, (0x1F800020 & 0xFFFF)
/* 503E8 8005FBE8 801F073C */  lui        $a3, (0x1F800060 >> 16)
/* 503EC 8005FBEC 6000E734 */  ori        $a3, $a3, (0x1F800060 & 0xFFFF)
/* 503F0 8005FBF0 21488000 */  addu       $t1, $a0, $zero
/* 503F4 8005FBF4 801F0A3C */  lui        $t2, (0x1F800000 >> 16)
/* 503F8 8005FBF8 0000E9A4 */  sh         $t1, 0x0($a3)
/* 503FC 8005FBFC 0200E5A4 */  sh         $a1, 0x2($a3)
/* 50400 8005FC00 0400E6A4 */  sh         $a2, 0x4($a3)
/* 50404 8005FC04 0000E0C8 */  lwc2       $0, 0x0($a3)
/* 50408 8005FC08 0400E1C8 */  lwc2       $1, 0x4($a3)
/* 5040C 8005FC0C 00000000 */  nop
/* 50410 8005FC10 00000000 */  nop
/* 50414 8005FC14 0100184A */  RTPS
/* 50418 8005FC18 00004EE9 */  swc2       $14, (0x1F800000 & 0xFFFF)($t2)
/* 5041C 8005FC1C 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 50420 8005FC20 00000000 */  nop
/* 50424 8005FC24 C3600C00 */  sra        $t4, $t4, 3
/* 50428 8005FC28 00004CAC */  sw         $t4, 0x0($v0)
/* 5042C 8005FC2C 0000438C */  lw         $v1, 0x0($v0)
/* 50430 8005FC30 9C11848F */  lw         $a0, %gp_rel(BENOTESTDEPTH)($gp)
/* 50434 8005FC34 441783AF */  sw         $v1, %gp_rel(egglastdepth)($gp)
/* 50438 8005FC38 2A186400 */  slt        $v1, $v1, $a0
/* 5043C 8005FC3C 1A006014 */  bnez       $v1, .L8005FCA8
/* 50440 8005FC40 80FF0224 */   addiu     $v0, $zero, -0x80
/* 50444 8005FC44 24182201 */  and        $v1, $t1, $v0
/* 50448 8005FC48 2420A200 */  and        $a0, $a1, $v0
/* 5044C 8005FC4C 2410C200 */  and        $v0, $a2, $v0
/* 50450 8005FC50 801F013C */  lui        $at, (0x1F800060 >> 16)
/* 50454 8005FC54 600023A4 */  sh         $v1, (0x1F800060 & 0xFFFF)($at)
/* 50458 8005FC58 801F013C */  lui        $at, (0x1F800062 >> 16)
/* 5045C 8005FC5C 620024A4 */  sh         $a0, (0x1F800062 & 0xFFFF)($at)
/* 50460 8005FC60 801F013C */  lui        $at, (0x1F800064 >> 16)
/* 50464 8005FC64 640022A4 */  sh         $v0, (0x1F800064 & 0xFFFF)($at)
/* 50468 8005FC68 0000E0C8 */  lwc2       $0, 0x0($a3)
/* 5046C 8005FC6C 0400E1C8 */  lwc2       $1, 0x4($a3)
/* 50470 8005FC70 00000000 */  nop
/* 50474 8005FC74 00000000 */  nop
/* 50478 8005FC78 0100184A */  RTPS
/* 5047C 8005FC7C 00004EE9 */  swc2       $14, (0x1F800000 & 0xFFFF)($t2)
/* 50480 8005FC80 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 50484 8005FC84 00000000 */  nop
/* 50488 8005FC88 C3600C00 */  sra        $t4, $t4, 3
/* 5048C 8005FC8C 00000CAD */  sw         $t4, 0x0($t0)
/* 50490 8005FC90 801F033C */  lui        $v1, (0x1F800020 >> 16)
/* 50494 8005FC94 2000638C */  lw         $v1, (0x1F800020 & 0xFFFF)($v1)
/* 50498 8005FC98 801F023C */  lui        $v0, (0x1F800010 >> 16)
/* 5049C 8005FC9C 1000428C */  lw         $v0, (0x1F800010 & 0xFFFF)($v0)
/* 504A0 8005FCA0 0800E003 */  jr         $ra
/* 504A4 8005FCA4 23106200 */   subu      $v0, $v1, $v0
.L8005FCA8:
/* 504A8 8005FCA8 0800E003 */  jr         $ra
/* 504AC 8005FCAC 18FC0224 */   addiu     $v0, $zero, -0x3E8
.size GetZDepthDiff, . - GetZDepthDiff
