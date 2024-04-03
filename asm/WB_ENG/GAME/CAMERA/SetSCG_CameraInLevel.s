.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSCG_CameraInLevel
/* 2B274 8003AA74 40100400 */  sll        $v0, $a0, 1
/* 2B278 8003AA78 21104400 */  addu       $v0, $v0, $a0
/* 2B27C 8003AA7C 80100200 */  sll        $v0, $v0, 2
/* 2B280 8003AA80 23104400 */  subu       $v0, $v0, $a0
/* 2B284 8003AA84 80100200 */  sll        $v0, $v0, 2
/* 2B288 8003AA88 0A80033C */  lui        $v1, %hi(SCGGameCam)
/* 2B28C 8003AA8C B8B16324 */  addiu      $v1, $v1, %lo(SCGGameCam)
/* 2B290 8003AA90 21104300 */  addu       $v0, $v0, $v1
/* 2B294 8003AA94 01000424 */  addiu      $a0, $zero, 0x1
/* 2B298 8003AA98 0800E003 */  jr         $ra
/* 2B29C 8003AA9C 260044A0 */   sb        $a0, 0x26($v0)
.size SetSCG_CameraInLevel, . - SetSCG_CameraInLevel
