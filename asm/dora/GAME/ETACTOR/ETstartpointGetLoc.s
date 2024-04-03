.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETstartpointGetLoc
/* A880 8001A080 0980023C */  lui        $v0, %hi(DebugPauseMenuLookup)
/* A884 8001A084 605A4224 */  addiu      $v0, $v0, %lo(DebugPauseMenuLookup)
/* A888 8001A088 80200400 */  sll        $a0, $a0, 2
/* A88C 8001A08C 21208200 */  addu       $a0, $a0, $v0
/* A890 8001A090 0000828C */  lw         $v0, 0x0($a0)
/* A894 8001A094 0800E003 */  jr         $ra
/* A898 8001A098 00000000 */   nop
.size ETstartpointGetLoc, . - ETstartpointGetLoc
