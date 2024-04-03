.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetMainCache
/* 47EC0 800576C0 0B80023C */  lui        $v0, %hi(sMainCache)
/* 47EC4 800576C4 508A4224 */  addiu      $v0, $v0, %lo(sMainCache)
/* 47EC8 800576C8 641682AF */  sw         $v0, %gp_rel(sDirCache)($gp)
/* 47ECC 800576CC 0800E003 */  jr         $ra
/* 47ED0 800576D0 00000000 */   nop
.size SetMainCache, . - SetMainCache
