.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FillInETStartPoint
/* A91C 8001A11C 0980033C */  lui        $v1, %hi(ET_StartPoints)
/* A920 8001A120 605C6324 */  addiu      $v1, $v1, %lo(ET_StartPoints)
/* A924 8001A124 40100500 */  sll        $v0, $a1, 1
/* A928 8001A128 21104500 */  addu       $v0, $v0, $a1
/* A92C 8001A12C 80100200 */  sll        $v0, $v0, 2
/* A930 8001A130 6800898F */  lw         $t1, %gp_rel(DebugPauseMenuCount)($gp)
/* A934 8001A134 21406200 */  addu       $t0, $v1, $v0
/* A938 8001A138 040007AD */  sw         $a3, 0x4($t0)
/* A93C 8001A13C 21384300 */  addu       $a3, $v0, $v1
/* A940 8001A140 21180001 */  addu       $v1, $t0, $zero
/* A944 8001A144 0980023C */  lui        $v0, %hi(DebugPauseMenuLookup)
/* A948 8001A148 605A4224 */  addiu      $v0, $v0, %lo(DebugPauseMenuLookup)
/* A94C 8001A14C 0000E4AC */  sw         $a0, 0x0($a3)
/* A950 8001A150 080066AC */  sw         $a2, 0x8($v1)
/* A954 8001A154 80200900 */  sll        $a0, $t1, 2
/* A958 8001A158 01002925 */  addiu      $t1, $t1, 0x1
/* A95C 8001A15C 21208200 */  addu       $a0, $a0, $v0
/* A960 8001A160 000085AC */  sw         $a1, 0x0($a0)
/* A964 8001A164 680089AF */  sw         $t1, %gp_rel(DebugPauseMenuCount)($gp)
/* A968 8001A168 0800E003 */  jr         $ra
/* A96C 8001A16C 00000000 */   nop
.size FillInETStartPoint, . - FillInETStartPoint
