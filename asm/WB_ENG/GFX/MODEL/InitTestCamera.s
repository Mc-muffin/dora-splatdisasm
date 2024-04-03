.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitTestCamera
/* 3CB4C 8004C34C 0A80053C */  lui        $a1, %hi(GeomEnv)
/* 3CB50 8004C350 40B1A424 */  addiu      $a0, $a1, %lo(GeomEnv)
/* 3CB54 8004C354 92FF0224 */  addiu      $v0, $zero, -0x6E
/* 3CB58 8004C358 25FE0324 */  addiu      $v1, $zero, -0x1DB
/* 3CB5C 8004C35C 080082AC */  sw         $v0, 0x8($a0)
/* 3CB60 8004C360 63F80224 */  addiu      $v0, $zero, -0x79D
/* 3CB64 8004C364 100082AC */  sw         $v0, 0x10($a0)
/* 3CB68 8004C368 F1FF0224 */  addiu      $v0, $zero, -0xF
/* 3CB6C 8004C36C 0C0083AC */  sw         $v1, 0xC($a0)
/* 3CB70 8004C370 40B1A0A4 */  sh         $zero, %lo(GeomEnv)($a1)
/* 3CB74 8004C374 020082A4 */  sh         $v0, 0x2($a0)
/* 3CB78 8004C378 50FB0224 */  addiu      $v0, $zero, -0x4B0
/* 3CB7C 8004C37C 040080A4 */  sh         $zero, 0x4($a0)
/* 3CB80 8004C380 401580A7 */  sh         $zero, %gp_rel(CamDir)($gp)
/* 3CB84 8004C384 501582A7 */  sh         $v0, %gp_rel(CamDist)($gp)
/* 3CB88 8004C388 0800E003 */  jr         $ra
/* 3CB8C 8004C38C 00000000 */   nop
.size InitTestCamera, . - InitTestCamera
