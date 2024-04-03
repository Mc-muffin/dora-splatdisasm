.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ISETDead
/* A9CC 8001A1CC 0980033C */  lui        $v1, %hi(ETActor + 0x10)
/* A9D0 8001A1D0 C05A628C */  lw         $v0, %lo(ETActor + 0x10)($v1)
/* A9D4 8001A1D4 00000000 */  nop
/* A9D8 8001A1D8 00014230 */  andi       $v0, $v0, 0x100
/* A9DC 8001A1DC 05004010 */  beqz       $v0, .L8001A1F4
/* A9E0 8001A1E0 21180000 */   addu      $v1, $zero, $zero
/* A9E4 8001A1E4 2800828F */  lw         $v0, %gp_rel(Game_Health)($gp)
/* A9E8 8001A1E8 00000000 */  nop
/* A9EC 8001A1EC 0200401C */  bgtz       $v0, .L8001A1F8
/* A9F0 8001A1F0 00000000 */   nop
.L8001A1F4:
/* A9F4 8001A1F4 01000324 */  addiu      $v1, $zero, 0x1
.L8001A1F8:
/* A9F8 8001A1F8 0800E003 */  jr         $ra
/* A9FC 8001A1FC 21106000 */   addu      $v0, $v1, $zero
.size ISETDead, . - ISETDead
