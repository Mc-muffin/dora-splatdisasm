.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchForActorsInWorld
/* 14964 80024164 0880023C */  lui        $v0, %hi(TestWorld)
/* 14968 80024168 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 1496C 8002416C 1C00458C */  lw         $a1, 0x1C($v0)
/* 14970 80024170 1000428C */  lw         $v0, 0x10($v0)
/* 14974 80024174 00000000 */  nop
/* 14978 80024178 0A004018 */  blez       $v0, .L800241A4
/* 1497C 8002417C 21300000 */   addu      $a2, $zero, $zero
/* 14980 80024180 21184000 */  addu       $v1, $v0, $zero
.L80024184:
/* 14984 80024184 1000A28C */  lw         $v0, 0x10($a1)
/* 14988 80024188 00000000 */  nop
/* 1498C 8002418C 02004414 */  bne        $v0, $a0, .L80024198
/* 14990 80024190 00000000 */   nop
/* 14994 80024194 0100C624 */  addiu      $a2, $a2, 0x1
.L80024198:
/* 14998 80024198 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 1499C 8002419C F9FF6014 */  bnez       $v1, .L80024184
/* 149A0 800241A0 2400A524 */   addiu     $a1, $a1, 0x24
.L800241A4:
/* 149A4 800241A4 0800E003 */  jr         $ra
/* 149A8 800241A8 2110C000 */   addu      $v0, $a2, $zero
.size SearchForActorsInWorld, . - SearchForActorsInWorld
