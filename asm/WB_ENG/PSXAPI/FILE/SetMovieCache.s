.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetMovieCache
/* 47EAC 800576AC 0B80023C */  lui        $v0, %hi(sMainCache)
/* 47EB0 800576B0 508A4224 */  addiu      $v0, $v0, %lo(sMainCache)
/* 47EB4 800576B4 641682AF */  sw         $v0, %gp_rel(sDirCache)($gp)
/* 47EB8 800576B8 0800E003 */  jr         $ra
/* 47EBC 800576BC 00000000 */   nop
.size SetMovieCache, . - SetMovieCache
