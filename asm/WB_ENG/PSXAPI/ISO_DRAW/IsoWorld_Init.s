.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel IsoWorld_Init
/* 5593C 8006513C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 55940 80065140 ADBA023C */  lui        $v0, (0xBAADF00D >> 16)
/* 55944 80065144 0DF04234 */  ori        $v0, $v0, (0xBAADF00D & 0xFFFF)
/* 55948 80065148 21200000 */  addu       $a0, $zero, $zero
/* 5594C 8006514C 64000524 */  addiu      $a1, $zero, 0x64
/* 55950 80065150 64000624 */  addiu      $a2, $zero, 0x64
/* 55954 80065154 00040724 */  addiu      $a3, $zero, 0x400
/* 55958 80065158 2000BFAF */  sw         $ra, 0x20($sp)
/* 5595C 8006515C A01782AF */  sw         $v0, %gp_rel(IsoDepthTable)($gp)
/* 55960 80065160 1000A0AF */  sw         $zero, 0x10($sp)
/* 55964 80065164 1400A0AF */  sw         $zero, 0x14($sp)
/* 55968 80065168 61EC000C */  jal        InitCamera
/* 5596C 8006516C 1800A0AF */   sw        $zero, 0x18($sp)
/* 55970 80065170 DDE9000C */  jal        CameraInit
/* 55974 80065174 00000000 */   nop
/* 55978 80065178 158B000C */  jal        InitIsoData
/* 5597C 8006517C 00000000 */   nop
/* 55980 80065180 2DE4000C */  jal        ConstrainCameraScrollSizetoWorld
/* 55984 80065184 00000000 */   nop
/* 55988 80065188 7017838F */  lw         $v1, %gp_rel(ScrollXSize)($gp)
/* 5598C 8006518C D01782AF */  sw         $v0, %gp_rel(g_iso_depth_max_entries)($gp)
/* 55990 80065190 0101632C */  sltiu      $v1, $v1, 0x101
/* 55994 80065194 D017848F */  lw         $a0, %gp_rel(g_iso_depth_max_entries)($gp)
/* 55998 80065198 2B3F010C */  jal        new_malloc
/* 5599C 8006519C 40200400 */   sll       $a0, $a0, 1
/* 559A0 800651A0 2000BF8F */  lw         $ra, 0x20($sp)
/* 559A4 800651A4 A01782AF */  sw         $v0, %gp_rel(IsoDepthTable)($gp)
/* 559A8 800651A8 0800E003 */  jr         $ra
/* 559AC 800651AC 2800BD27 */   addiu     $sp, $sp, 0x28
.size IsoWorld_Init, . - IsoWorld_Init
