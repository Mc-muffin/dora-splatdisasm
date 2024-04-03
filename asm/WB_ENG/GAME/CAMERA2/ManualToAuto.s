.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ManualToAuto
/* 2C144 8003B944 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2C148 8003B948 1000BFAF */  sw         $ra, 0x10($sp)
/* 2C14C 8003B94C 66EE000C */  jal        MA_CalcDistance
/* 2C150 8003B950 00000000 */   nop
/* 2C154 8003B954 8C0B82AF */  sw         $v0, %gp_rel(cd_distance)($gp)
/* 2C158 8003B958 7DEE000C */  jal        MA_CalcAltitude
/* 2C15C 8003B95C 00000000 */   nop
/* 2C160 8003B960 900B82AF */  sw         $v0, %gp_rel(cd_altitude)($gp)
/* 2C164 8003B964 85EE000C */  jal        MA_CalcLocale
/* 2C168 8003B968 00000000 */   nop
/* 2C16C 8003B96C 8C0B858F */  lw         $a1, %gp_rel(cd_distance)($gp)
/* 2C170 8003B970 940B82A7 */  sh         $v0, %gp_rel(cd_locale)($gp)
/* 2C174 8003B974 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C178 8003B978 900B838F */  lw         $v1, %gp_rel(cd_altitude)($gp)
/* 2C17C 8003B97C 940B8497 */  lhu        $a0, %gp_rel(cd_locale)($gp)
/* 2C180 8003B980 1000BF8F */  lw         $ra, 0x10($sp)
/* 2C184 8003B984 7C0045AC */  sw         $a1, 0x7C($v0)
/* 2C188 8003B988 740043AC */  sw         $v1, 0x74($v0)
/* 2C18C 8003B98C 880044AC */  sw         $a0, 0x88($v0)
/* 2C190 8003B990 0800E003 */  jr         $ra
/* 2C194 8003B994 1800BD27 */   addiu     $sp, $sp, 0x18
.size ManualToAuto, . - ManualToAuto
