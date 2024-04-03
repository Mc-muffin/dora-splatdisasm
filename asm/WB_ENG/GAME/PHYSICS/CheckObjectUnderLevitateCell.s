.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckObjectUnderLevitateCell
/* 2F1D8 8003E9D8 0880023C */  lui        $v0, %hi(TestWorld)
/* 2F1DC 8003E9DC 8C65478C */  lw         $a3, %lo(TestWorld)($v0)
/* 2F1E0 8003E9E0 C3310600 */  sra        $a2, $a2, 7
/* 2F1E4 8003E9E4 1800C700 */  mult       $a2, $a3
/* 2F1E8 8003E9E8 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 2F1EC 8003E9EC 12300000 */  mflo       $a2
/* 2F1F0 8003E9F0 0400488C */  lw         $t0, 0x4($v0)
/* 2F1F4 8003E9F4 00000000 */  nop
/* 2F1F8 8003E9F8 1800C800 */  mult       $a2, $t0
/* 2F1FC 8003E9FC C3290500 */  sra        $a1, $a1, 7
/* 2F200 8003EA00 C3210400 */  sra        $a0, $a0, 7
/* 2F204 8003EA04 1400438C */  lw         $v1, 0x14($v0)
/* 2F208 8003EA08 2A10A800 */  slt        $v0, $a1, $t0
/* 2F20C 8003EA0C 12300000 */  mflo       $a2
/* 2F210 8003EA10 21208600 */  addu       $a0, $a0, $a2
/* 2F214 8003EA14 40200400 */  sll        $a0, $a0, 1
/* 2F218 8003EA18 1D004010 */  beqz       $v0, .L8003EA90
/* 2F21C 8003EA1C 21186400 */   addu      $v1, $v1, $a0
/* 2F220 8003EA20 40100500 */  sll        $v0, $a1, 1
/* 2F224 8003EA24 18004700 */  mult       $v0, $a3
/* 2F228 8003EA28 FF030B24 */  addiu      $t3, $zero, 0x3FF
/* 2F22C 8003EA2C 0980093C */  lui        $t1, %hi(CellAttributesPtr)
/* 2F230 8003EA30 6C50298D */  lw         $t1, %lo(CellAttributesPtr)($t1)
/* 2F234 8003EA34 08000A3C */  lui        $t2, (0x80000 >> 16)
/* 2F238 8003EA38 40300700 */  sll        $a2, $a3, 1
/* 2F23C 8003EA3C 12100000 */  mflo       $v0
/* 2F240 8003EA40 21204300 */  addu       $a0, $v0, $v1
.L8003EA44:
/* 2F244 8003EA44 00008384 */  lh         $v1, 0x0($a0)
/* 2F248 8003EA48 00000000 */  nop
/* 2F24C 8003EA4C FF036330 */  andi       $v1, $v1, 0x3FF
/* 2F250 8003EA50 0B006B10 */  beq        $v1, $t3, .L8003EA80
/* 2F254 8003EA54 80100300 */   sll       $v0, $v1, 2
/* 2F258 8003EA58 21104300 */  addu       $v0, $v0, $v1
/* 2F25C 8003EA5C C0100200 */  sll        $v0, $v0, 3
/* 2F260 8003EA60 21102201 */  addu       $v0, $t1, $v0
/* 2F264 8003EA64 0800438C */  lw         $v1, 0x8($v0)
/* 2F268 8003EA68 00000000 */  nop
/* 2F26C 8003EA6C 24186A00 */  and        $v1, $v1, $t2
/* 2F270 8003EA70 04006010 */  beqz       $v1, .L8003EA84
/* 2F274 8003EA74 0100A524 */   addiu     $a1, $a1, 0x1
/* 2F278 8003EA78 0800E003 */  jr         $ra
/* 2F27C 8003EA7C 21100000 */   addu      $v0, $zero, $zero
.L8003EA80:
/* 2F280 8003EA80 0100A524 */  addiu      $a1, $a1, 0x1
.L8003EA84:
/* 2F284 8003EA84 2A10A800 */  slt        $v0, $a1, $t0
/* 2F288 8003EA88 EEFF4014 */  bnez       $v0, .L8003EA44
/* 2F28C 8003EA8C 21208600 */   addu      $a0, $a0, $a2
.L8003EA90:
/* 2F290 8003EA90 0800E003 */  jr         $ra
/* 2F294 8003EA94 01000224 */   addiu     $v0, $zero, 0x1
.size CheckObjectUnderLevitateCell, . - CheckObjectUnderLevitateCell
