.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel File_CacheFirstFile
/* 47ED4 800576D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47ED8 800576D8 0B80023C */  lui        $v0, %hi(goldfindname)
/* 47EDC 800576DC 0B80033C */  lui        $v1, %hi(sMainCache)
/* 47EE0 800576E0 508A6324 */  addiu      $v1, $v1, %lo(sMainCache)
/* 47EE4 800576E4 0980043C */  lui        $a0, %hi(D_800952AC)
/* 47EE8 800576E8 AC528424 */  addiu      $a0, $a0, %lo(D_800952AC)
/* 47EEC 800576EC 1000BFAF */  sw         $ra, 0x10($sp)
/* 47EF0 800576F0 60AA40A0 */  sb         $zero, %lo(goldfindname)($v0)
/* 47EF4 800576F4 641683AF */  sw         $v1, %gp_rel(sDirCache)($gp)
/* 47EF8 800576F8 9557010C */  jal        CDFile_CacheDirectory
/* 47EFC 800576FC 01000524 */   addiu     $a1, $zero, 0x1
/* 47F00 80057700 1000BF8F */  lw         $ra, 0x10($sp)
/* 47F04 80057704 00000000 */  nop
/* 47F08 80057708 0800E003 */  jr         $ra
/* 47F0C 8005770C 1800BD27 */   addiu     $sp, $sp, 0x18
.size File_CacheFirstFile, . - File_CacheFirstFile
