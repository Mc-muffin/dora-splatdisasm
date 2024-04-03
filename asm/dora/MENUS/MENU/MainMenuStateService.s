.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MainMenuStateService
/* 1910C 8002890C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 19110 80028910 0880023C */  lui        $v0, %hi(MenuServiceList)
/* 19114 80028914 4407838F */  lw         $v1, %gp_rel(MainMenuState)($gp)
/* 19118 80028918 A0694224 */  addiu      $v0, $v0, %lo(MenuServiceList)
/* 1911C 8002891C 1000BFAF */  sw         $ra, 0x10($sp)
/* 19120 80028920 80180300 */  sll        $v1, $v1, 2
/* 19124 80028924 21186200 */  addu       $v1, $v1, $v0
/* 19128 80028928 0000628C */  lw         $v0, 0x0($v1)
/* 1912C 8002892C 00000000 */  nop
/* 19130 80028930 09F84000 */  jalr       $v0
/* 19134 80028934 00000000 */   nop
/* 19138 80028938 1000BF8F */  lw         $ra, 0x10($sp)
/* 1913C 8002893C 00000000 */  nop
/* 19140 80028940 0800E003 */  jr         $ra
/* 19144 80028944 1800BD27 */   addiu     $sp, $sp, 0x18
.size MainMenuStateService, . - MainMenuStateService
