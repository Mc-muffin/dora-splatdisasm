.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StartShakeCamera
/* 2BFF4 8003B7F4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BFF8 8003B7F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2BFFC 8003B7FC 1000BFAF */  sw         $ra, 0x10($sp)
/* 2C000 8003B800 1800448C */  lw         $a0, 0x18($v0)
/* 2C004 8003B804 1400438C */  lw         $v1, 0x14($v0)
/* 2C008 8003B808 1C00458C */  lw         $a1, 0x1C($v0)
/* 2C00C 8003B80C 881484AF */  sw         $a0, %gp_rel(gShake_save_track_target_ofs_Y)($gp)
/* 2C010 8003B810 841483AF */  sw         $v1, %gp_rel(gShake_save_track_target_ofs_X)($gp)
/* 2C014 8003B814 8C1485AF */  sw         $a1, %gp_rel(gShake_save_track_target_ofs_Z)($gp)
/* 2C018 8003B818 2EEE000C */  jal        SaveCameraAggression
/* 2C01C 8003B81C 21200000 */   addu      $a0, $zero, $zero
/* 2C020 8003B820 1000BF8F */  lw         $ra, 0x10($sp)
/* 2C024 8003B824 0B000224 */  addiu      $v0, $zero, 0xB
/* 2C028 8003B828 880B82A7 */  sh         $v0, %gp_rel(gShake)($gp)
/* 2C02C 8003B82C 0800E003 */  jr         $ra
/* 2C030 8003B830 1800BD27 */   addiu     $sp, $sp, 0x18
.size StartShakeCamera, . - StartShakeCamera
