.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel meshname
/* C4A8 8001BCA8 0880033C */  lui        $v1, %hi(MeshIDTable)
/* C4AC 8001BCAC 60546324 */  addiu      $v1, $v1, %lo(MeshIDTable)
/* C4B0 8001BCB0 40100400 */  sll        $v0, $a0, 1
/* C4B4 8001BCB4 21104400 */  addu       $v0, $v0, $a0
/* C4B8 8001BCB8 80100200 */  sll        $v0, $v0, 2
/* C4BC 8001BCBC 23104400 */  subu       $v0, $v0, $a0
/* C4C0 8001BCC0 80100200 */  sll        $v0, $v0, 2
/* C4C4 8001BCC4 21186200 */  addu       $v1, $v1, $v0
/* C4C8 8001BCC8 2800628C */  lw         $v0, 0x28($v1)
/* C4CC 8001BCCC 0800E003 */  jr         $ra
/* C4D0 8001BCD0 00000000 */   nop
.size meshname, . - meshname
