.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel File_CacheRootDir
/* 475E8 80056DE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 475EC 80056DEC 0B80033C */  lui        $v1, %hi(goldfindname)
/* 475F0 80056DF0 0B80023C */  lui        $v0, %hi(sMainCache)
/* 475F4 80056DF4 508A4224 */  addiu      $v0, $v0, %lo(sMainCache)
/* 475F8 80056DF8 1000BFAF */  sw         $ra, 0x10($sp)
/* 475FC 80056DFC 60AA60A0 */  sb         $zero, %lo(goldfindname)($v1)
/* 47600 80056E00 641682AF */  sw         $v0, %gp_rel(sDirCache)($gp)
/* 47604 80056E04 9557010C */  jal        CDFile_CacheDirectory
/* 47608 80056E08 FFFF0524 */   addiu     $a1, $zero, -0x1
/* 4760C 80056E0C 1000BF8F */  lw         $ra, 0x10($sp)
/* 47610 80056E10 00000000 */  nop
/* 47614 80056E14 0800E003 */  jr         $ra
/* 47618 80056E18 1800BD27 */   addiu     $sp, $sp, 0x18
.size File_CacheRootDir, . - File_CacheRootDir
