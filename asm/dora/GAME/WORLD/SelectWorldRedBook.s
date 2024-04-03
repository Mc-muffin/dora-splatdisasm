.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SelectWorldRedBook
/* 14C34 80024434 0880023C */  lui        $v0, %hi(WorldRedBooks)
/* 14C38 80024438 20654224 */  addiu      $v0, $v0, %lo(WorldRedBooks)
/* 14C3C 8002443C 0980053C */  lui        $a1, %hi(gWorld)
/* 14C40 80024440 3C56A58C */  lw         $a1, %lo(gWorld)($a1)
/* 14C44 80024444 0980043C */  lui        $a0, %hi(gLevel)
/* 14C48 80024448 3456848C */  lw         $a0, %lo(gLevel)($a0)
/* 14C4C 8002444C 40180500 */  sll        $v1, $a1, 1
/* 14C50 80024450 21186500 */  addu       $v1, $v1, $a1
/* 14C54 80024454 21186400 */  addu       $v1, $v1, $a0
/* 14C58 80024458 80180300 */  sll        $v1, $v1, 2
/* 14C5C 8002445C 21186200 */  addu       $v1, $v1, $v0
/* 14C60 80024460 0000628C */  lw         $v0, 0x0($v1)
/* 14C64 80024464 0800E003 */  jr         $ra
/* 14C68 80024468 00000000 */   nop
.size SelectWorldRedBook, . - SelectWorldRedBook
