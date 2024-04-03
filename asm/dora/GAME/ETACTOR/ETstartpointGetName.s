.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETstartpointGetName
/* A89C 8001A09C 0980033C */  lui        $v1, %hi(ET_StartPoints)
/* A8A0 8001A0A0 0980023C */  lui        $v0, %hi(DebugPauseMenuLookup)
/* A8A4 8001A0A4 605A4224 */  addiu      $v0, $v0, %lo(DebugPauseMenuLookup)
/* A8A8 8001A0A8 80200400 */  sll        $a0, $a0, 2
/* A8AC 8001A0AC 21208200 */  addu       $a0, $a0, $v0
/* A8B0 8001A0B0 0000858C */  lw         $a1, 0x0($a0)
/* A8B4 8001A0B4 605C6324 */  addiu      $v1, $v1, %lo(ET_StartPoints)
/* A8B8 8001A0B8 40100500 */  sll        $v0, $a1, 1
/* A8BC 8001A0BC 21104500 */  addu       $v0, $v0, $a1
/* A8C0 8001A0C0 80100200 */  sll        $v0, $v0, 2
/* A8C4 8001A0C4 21186200 */  addu       $v1, $v1, $v0
/* A8C8 8001A0C8 0800628C */  lw         $v0, 0x8($v1)
/* A8CC 8001A0CC 0800E003 */  jr         $ra
/* A8D0 8001A0D0 00000000 */   nop
.size ETstartpointGetName, . - ETstartpointGetName
