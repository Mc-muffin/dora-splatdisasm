.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SanityCheckCheckpoints
/* 313E0 80040BE0 C414828F */  lw         $v0, %gp_rel(gnumpressuretriggers)($gp)
/* 313E4 80040BE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 313E8 80040BE8 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 313EC 80040BEC 1800B2AF */  sw         $s2, 0x18($sp)
/* 313F0 80040BF0 1400B1AF */  sw         $s1, 0x14($sp)
/* 313F4 80040BF4 11004018 */  blez       $v0, .L80040C3C
/* 313F8 80040BF8 1000B0AF */   sw        $s0, 0x10($sp)
/* 313FC 80040BFC 03001224 */  addiu      $s2, $zero, 0x3
/* 31400 80040C00 21880000 */  addu       $s1, $zero, $zero
/* 31404 80040C04 21804000 */  addu       $s0, $v0, $zero
.L80040C08:
/* 31408 80040C08 C014828F */  lw         $v0, %gp_rel(PressureTrigger)($gp)
/* 3140C 80040C0C 00000000 */  nop
/* 31410 80040C10 21105100 */  addu       $v0, $v0, $s1
/* 31414 80040C14 3800438C */  lw         $v1, 0x38($v0)
/* 31418 80040C18 00000000 */  nop
/* 3141C 80040C1C 04007214 */  bne        $v1, $s2, .L80040C30
/* 31420 80040C20 00000000 */   nop
/* 31424 80040C24 1000448C */  lw         $a0, 0x10($v0)
/* 31428 80040C28 5C68000C */  jal        GetETPosition
/* 3142C 80040C2C 00000000 */   nop
.L80040C30:
/* 31430 80040C30 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 31434 80040C34 F4FF0016 */  bnez       $s0, .L80040C08
/* 31438 80040C38 88003126 */   addiu     $s1, $s1, 0x88
.L80040C3C:
/* 3143C 80040C3C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 31440 80040C40 1800B28F */  lw         $s2, 0x18($sp)
/* 31444 80040C44 1400B18F */  lw         $s1, 0x14($sp)
/* 31448 80040C48 1000B08F */  lw         $s0, 0x10($sp)
/* 3144C 80040C4C 0800E003 */  jr         $ra
/* 31450 80040C50 2000BD27 */   addiu     $sp, $sp, 0x20
.size SanityCheckCheckpoints, . - SanityCheckCheckpoints
