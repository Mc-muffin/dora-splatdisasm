.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearBSS
/* C2F8 8001BAF8 0980033C */  lui        $v1, %hi(DebugPauseMenuLookup)
/* C2FC 8001BAFC 605A6324 */  addiu      $v1, $v1, %lo(DebugPauseMenuLookup)
/* C300 8001BB00 FCFF0224 */  addiu      $v0, $zero, -0x4
/* C304 8001BB04 24186200 */  and        $v1, $v1, $v0
/* C308 8001BB08 0300053C */  lui        $a1, %hi(D_30498)
/* C30C 8001BB0C 9804A524 */  addiu      $a1, $a1, %lo(D_30498)
/* C310 8001BB10 C86E0008 */  j          .L8001BB20
/* C314 8001BB14 21200000 */   addu      $a0, $zero, $zero
.L8001BB18:
/* C318 8001BB18 000060AC */  sw         $zero, 0x0($v1)
/* C31C 8001BB1C 04006324 */  addiu      $v1, $v1, 0x4
.L8001BB20:
/* C320 8001BB20 2110A000 */  addu       $v0, $a1, $zero
/* C324 8001BB24 04004104 */  bgez       $v0, .L8001BB38
/* C328 8001BB28 83100200 */   sra       $v0, $v0, 2
/* C32C 8001BB2C 0300023C */  lui        $v0, %hi(D_30498 + 0x3)
/* C330 8001BB30 9B044224 */  addiu      $v0, $v0, %lo(D_30498 + 0x3)
/* C334 8001BB34 83100200 */  sra        $v0, $v0, 2
.L8001BB38:
/* C338 8001BB38 2A108200 */  slt        $v0, $a0, $v0
/* C33C 8001BB3C F6FF4014 */  bnez       $v0, .L8001BB18
/* C340 8001BB40 01008424 */   addiu     $a0, $a0, 0x1
/* C344 8001BB44 0800E003 */  jr         $ra
/* C348 8001BB48 00000000 */   nop
.size ClearBSS, . - ClearBSS
