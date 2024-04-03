.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UnlinkNClearNtags
/* 4BE50 8005B650 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BE54 8005B654 0B80043C */  lui        $a0, %hi(g_nt)
/* 4BE58 8005B658 68BB8424 */  addiu      $a0, $a0, %lo(g_nt)
/* 4BE5C 8005B65C 88130524 */  addiu      $a1, $zero, 0x1388
/* 4BE60 8005B660 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* 4BE64 8005B664 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4BE68 8005B668 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* 4BE6C 8005B66C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4BE70 8005B670 C0190300 */  sll        $v1, $v1, 7
/* 4BE74 8005B674 21186200 */  addu       $v1, $v1, $v0
/* 4BE78 8005B678 E81683AF */  sw         $v1, %gp_rel(cdb)($gp)
/* 4BE7C 8005B67C C22A010C */  jal        UnlinkNTagR
/* 4BE80 8005B680 70006624 */   addiu     $a2, $v1, 0x70
/* 4BE84 8005B684 0B80043C */  lui        $a0, %hi(g_nt2)
/* 4BE88 8005B688 A8578424 */  addiu      $a0, $a0, %lo(g_nt2)
/* 4BE8C 8005B68C E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4BE90 8005B690 F810858F */  lw         $a1, %gp_rel(g_ot2_size)($gp)
/* 4BE94 8005B694 C22A010C */  jal        UnlinkNTagR
/* 4BE98 8005B698 7400C624 */   addiu     $a2, $a2, 0x74
/* 4BE9C 8005B69C 0B80043C */  lui        $a0, %hi(g_nt3)
/* 4BEA0 8005B6A0 38778424 */  addiu      $a0, $a0, %lo(g_nt3)
/* 4BEA4 8005B6A4 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4BEA8 8005B6A8 00040524 */  addiu      $a1, $zero, 0x400
/* 4BEAC 8005B6AC C22A010C */  jal        UnlinkNTagR
/* 4BEB0 8005B6B0 7800C624 */   addiu     $a2, $a2, 0x78
/* 4BEB4 8005B6B4 1000BF8F */  lw         $ra, 0x10($sp)
/* 4BEB8 8005B6B8 00000000 */  nop
/* 4BEBC 8005B6BC 0800E003 */  jr         $ra
/* 4BEC0 8005B6C0 1800BD27 */   addiu     $sp, $sp, 0x18
.size UnlinkNClearNtags, . - UnlinkNClearNtags
