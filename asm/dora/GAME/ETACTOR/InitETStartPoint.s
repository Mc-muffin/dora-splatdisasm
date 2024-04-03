.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitETStartPoint
/* A8D4 8001A0D4 680080AF */  sw         $zero, %gp_rel(DebugPauseMenuCount)($gp)
/* A8D8 8001A0D8 FFFF0524 */  addiu      $a1, $zero, -0x1
/* A8DC 8001A0DC 0980023C */  lui        $v0, %hi(DebugPauseMenuLookup)
/* A8E0 8001A0E0 605A4224 */  addiu      $v0, $v0, %lo(DebugPauseMenuLookup)
/* A8E4 8001A0E4 0980033C */  lui        $v1, %hi(ET_StartPoints)
/* A8E8 8001A0E8 605C6324 */  addiu      $v1, $v1, %lo(ET_StartPoints)
/* A8EC 8001A0EC 13000424 */  addiu      $a0, $zero, 0x13
.L8001A0F0:
/* A8F0 8001A0F0 000045AC */  sw         $a1, 0x0($v0)
/* A8F4 8001A0F4 04004224 */  addiu      $v0, $v0, 0x4
/* A8F8 8001A0F8 000060AC */  sw         $zero, 0x0($v1)
/* A8FC 8001A0FC 040060AC */  sw         $zero, 0x4($v1)
/* A900 8001A100 080060AC */  sw         $zero, 0x8($v1)
/* A904 8001A104 FFFF8424 */  addiu      $a0, $a0, -0x1
/* A908 8001A108 F9FF8104 */  bgez       $a0, .L8001A0F0
/* A90C 8001A10C 0C006324 */   addiu     $v1, $v1, 0xC
/* A910 8001A110 0980023C */  lui        $v0, %hi(ETEndLevelpath)
/* A914 8001A114 0800E003 */  jr         $ra
/* A918 8001A118 385C40AC */   sw        $zero, %lo(ETEndLevelpath)($v0)
.size InitETStartPoint, . - InitETStartPoint
