.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetETPosition
/* A970 8001A170 0980023C */  lui        $v0, %hi(ET_StartPoints)
/* A974 8001A174 605C4224 */  addiu      $v0, $v0, %lo(ET_StartPoints)
/* A978 8001A178 40180400 */  sll        $v1, $a0, 1
/* A97C 8001A17C 21186400 */  addu       $v1, $v1, $a0
/* A980 8001A180 80180300 */  sll        $v1, $v1, 2
/* A984 8001A184 21186200 */  addu       $v1, $v1, $v0
/* A988 8001A188 0000628C */  lw         $v0, 0x0($v1)
/* A98C 8001A18C 0800E003 */  jr         $ra
/* A990 8001A190 00000000 */   nop
.size GetETPosition, . - GetETPosition
