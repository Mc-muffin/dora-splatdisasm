.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenerateLevelLoadScreen
/* 18854 80028054 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 18858 80028058 2800B2AF */  sw         $s2, 0x28($sp)
/* 1885C 8002805C 21908000 */  addu       $s2, $a0, $zero
/* 18860 80028060 2400B1AF */  sw         $s1, 0x24($sp)
/* 18864 80028064 0980113C */  lui        $s1, %hi(gworldchars)
/* 18868 80028068 4C563126 */  addiu      $s1, $s1, %lo(gworldchars)
/* 1886C 8002806C 21202002 */  addu       $a0, $s1, $zero
/* 18870 80028070 03000624 */  addiu      $a2, $zero, 0x3
/* 18874 80028074 8407858F */  lw         $a1, %gp_rel(gmenuworld)($gp)
/* 18878 80028078 0880033C */  lui        $v1, %hi(WorldList)
/* 1887C 8002807C 2000B0AF */  sw         $s0, 0x20($sp)
/* 18880 80028080 0980103C */  lui        $s0, %hi(gLevel)
/* 18884 80028084 3456108E */  lw         $s0, %lo(gLevel)($s0)
/* 18888 80028088 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 1888C 8002808C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 18890 80028090 80100500 */  sll        $v0, $a1, 2
/* 18894 80028094 21104500 */  addu       $v0, $v0, $a1
/* 18898 80028098 80100200 */  sll        $v0, $v0, 2
/* 1889C 8002809C 21186200 */  addu       $v1, $v1, $v0
/* 188A0 800280A0 1000658C */  lw         $a1, 0x10($v1)
/* 188A4 800280A4 D3C2010C */  jal        strncpy
/* 188A8 800280A8 01001026 */   addiu     $s0, $s0, 0x1
/* 188AC 800280AC 21204002 */  addu       $a0, $s2, $zero
/* 188B0 800280B0 0180053C */  lui        $a1, %hi(D_80011534)
/* 188B4 800280B4 3415A524 */  addiu      $a1, $a1, %lo(D_80011534)
/* 188B8 800280B8 21302002 */  addu       $a2, $s1, $zero
/* 188BC 800280BC 21380002 */  addu       $a3, $s0, $zero
/* 188C0 800280C0 53C5010C */  jal        sprintf
/* 188C4 800280C4 030020A2 */   sb        $zero, 0x3($s1)
/* 188C8 800280C8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 188CC 800280CC 2800B28F */  lw         $s2, 0x28($sp)
/* 188D0 800280D0 2400B18F */  lw         $s1, 0x24($sp)
/* 188D4 800280D4 2000B08F */  lw         $s0, 0x20($sp)
/* 188D8 800280D8 0800E003 */  jr         $ra
/* 188DC 800280DC 3000BD27 */   addiu     $sp, $sp, 0x30
.size GenerateLevelLoadScreen, . - GenerateLevelLoadScreen
