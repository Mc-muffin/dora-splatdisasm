.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PatchHitWallFast
/* B9BC 8001B1BC F0FFBD27 */  addiu      $sp, $sp, -0x10
/* B9C0 8001B1C0 0800E003 */  jr         $ra
/* B9C4 8001B1C4 1000BD27 */   addiu     $sp, $sp, 0x10
.size PatchHitWallFast, . - PatchHitWallFast
