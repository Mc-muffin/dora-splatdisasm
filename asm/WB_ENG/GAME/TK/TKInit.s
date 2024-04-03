.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TKInit
/* 347B0 80043FB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 347B4 80043FB4 1000B0AF */  sw         $s0, 0x10($sp)
/* 347B8 80043FB8 21808000 */  addu       $s0, $a0, $zero
/* 347BC 80043FBC 1400BFAF */  sw         $ra, 0x14($sp)
/* 347C0 80043FC0 DA25010C */  jal        GenericActorInit
/* 347C4 80043FC4 600000AE */   sw        $zero, 0x60($s0)
/* 347C8 80043FC8 1000028E */  lw         $v0, 0x10($s0)
/* 347CC 80043FCC 1400BF8F */  lw         $ra, 0x14($sp)
/* 347D0 80043FD0 FFFE0324 */  addiu      $v1, $zero, -0x101
/* 347D4 80043FD4 0C0000AE */  sw         $zero, 0xC($s0)
/* 347D8 80043FD8 24104300 */  and        $v0, $v0, $v1
/* 347DC 80043FDC 100002AE */  sw         $v0, 0x10($s0)
/* 347E0 80043FE0 1000B08F */  lw         $s0, 0x10($sp)
/* 347E4 80043FE4 0800E003 */  jr         $ra
/* 347E8 80043FE8 1800BD27 */   addiu     $sp, $sp, 0x18
.size TKInit, . - TKInit
