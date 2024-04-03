.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckForWall
/* 2E248 8003DA48 43380700 */  sra        $a3, $a3, 1
/* 2E24C 8003DA4C 2110C700 */  addu       $v0, $a2, $a3
/* 2E250 8003DA50 0880083C */  lui        $t0, %hi(TestWorld)
/* 2E254 8003DA54 8C65038D */  lw         $v1, %lo(TestWorld)($t0)
/* 2E258 8003DA58 C3110200 */  sra        $v0, $v0, 7
/* 2E25C 8003DA5C 18004300 */  mult       $v0, $v1
/* 2E260 8003DA60 8C650825 */  addiu      $t0, $t0, %lo(TestWorld)
/* 2E264 8003DA64 12100000 */  mflo       $v0
/* 2E268 8003DA68 0400098D */  lw         $t1, 0x4($t0)
/* 2E26C 8003DA6C 00000000 */  nop
/* 2E270 8003DA70 18004900 */  mult       $v0, $t1
/* 2E274 8003DA74 12100000 */  mflo       $v0
/* 2E278 8003DA78 C3290500 */  sra        $a1, $a1, 7
/* 2E27C 8003DA7C 00000000 */  nop
/* 2E280 8003DA80 1800A300 */  mult       $a1, $v1
/* 2E284 8003DA84 12280000 */  mflo       $a1
/* 2E288 8003DA88 2330C700 */  subu       $a2, $a2, $a3
/* 2E28C 8003DA8C C3310600 */  sra        $a2, $a2, 7
/* 2E290 8003DA90 1800C300 */  mult       $a2, $v1
/* 2E294 8003DA94 40100200 */  sll        $v0, $v0, 1
/* 2E298 8003DA98 12300000 */  mflo       $a2
/* 2E29C 8003DA9C 23188700 */  subu       $v1, $a0, $a3
/* 2E2A0 8003DAA0 C3190300 */  sra        $v1, $v1, 7
/* 2E2A4 8003DAA4 1800C900 */  mult       $a2, $t1
/* 2E2A8 8003DAA8 40180300 */  sll        $v1, $v1, 1
/* 2E2AC 8003DAAC 40280500 */  sll        $a1, $a1, 1
/* 2E2B0 8003DAB0 21208700 */  addu       $a0, $a0, $a3
/* 2E2B4 8003DAB4 C3210400 */  sra        $a0, $a0, 7
/* 2E2B8 8003DAB8 1400098D */  lw         $t1, 0x14($t0)
/* 2E2BC 8003DABC 40200400 */  sll        $a0, $a0, 1
/* 2E2C0 8003DAC0 21104900 */  addu       $v0, $v0, $t1
/* 2E2C4 8003DAC4 2110A200 */  addu       $v0, $a1, $v0
/* 2E2C8 8003DAC8 21406200 */  addu       $t0, $v1, $v0
/* 2E2CC 8003DACC 21108200 */  addu       $v0, $a0, $v0
/* 2E2D0 8003DAD0 00004784 */  lh         $a3, 0x0($v0)
/* 2E2D4 8003DAD4 12300000 */  mflo       $a2
/* 2E2D8 8003DAD8 40300600 */  sll        $a2, $a2, 1
/* 2E2DC 8003DADC 2130C900 */  addu       $a2, $a2, $t1
/* 2E2E0 8003DAE0 2128A600 */  addu       $a1, $a1, $a2
/* 2E2E4 8003DAE4 21186500 */  addu       $v1, $v1, $a1
/* 2E2E8 8003DAE8 21208500 */  addu       $a0, $a0, $a1
/* 2E2EC 8003DAEC FF030524 */  addiu      $a1, $zero, 0x3FF
/* 2E2F0 8003DAF0 00000685 */  lh         $a2, 0x0($t0)
/* 2E2F4 8003DAF4 00006284 */  lh         $v0, 0x0($v1)
/* 2E2F8 8003DAF8 00008484 */  lh         $a0, 0x0($a0)
/* 2E2FC 8003DAFC FF03C630 */  andi       $a2, $a2, 0x3FF
/* 2E300 8003DB00 0300C514 */  bne        $a2, $a1, .L8003DB10
/* 2E304 8003DB04 FF03E330 */   andi      $v1, $a3, 0x3FF
/* 2E308 8003DB08 03006610 */  beq        $v1, $a2, .L8003DB18
/* 2E30C 8003DB0C FF034230 */   andi      $v0, $v0, 0x3FF
.L8003DB10:
/* 2E310 8003DB10 0800E003 */  jr         $ra
/* 2E314 8003DB14 01000224 */   addiu     $v0, $zero, 0x1
.L8003DB18:
/* 2E318 8003DB18 04004314 */  bne        $v0, $v1, .L8003DB2C
/* 2E31C 8003DB1C FF038230 */   andi      $v0, $a0, 0x3FF
/* 2E320 8003DB20 FF034238 */  xori       $v0, $v0, 0x3FF
/* 2E324 8003DB24 0800E003 */  jr         $ra
/* 2E328 8003DB28 2B100200 */   sltu      $v0, $zero, $v0
.L8003DB2C:
/* 2E32C 8003DB2C 0800E003 */  jr         $ra
/* 2E330 8003DB30 01000224 */   addiu     $v0, $zero, 0x1
.size CheckForWall, . - CheckForWall
