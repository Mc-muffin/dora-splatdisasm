.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MainMenu_Loop
/* 19150 80028950 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 19154 80028954 0B000224 */  addiu      $v0, $zero, 0xB
/* 19158 80028958 1000BFAF */  sw         $ra, 0x10($sp)
/* 1915C 8002895C 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* 19160 80028960 B04C22AC */  sw         $v0, %lo(CurrentCameraEnum)($at)
/* 19164 80028964 0164010C */  jal        TextResetText
/* 19168 80028968 00000000 */   nop
/* 1916C 8002896C 9549010C */  jal        ResetBoxes
/* 19170 80028970 00000000 */   nop
/* 19174 80028974 3C89010C */  jal        ResetShadows
/* 19178 80028978 00000000 */   nop
/* 1917C 8002897C BA96000C */  jal        DrawMenuRGBSprites
/* 19180 80028980 00000000 */   nop
/* 19184 80028984 A1E8000C */  jal        CameraMan
/* 19188 80028988 00000000 */   nop
/* 1918C 8002898C 16EB000C */  jal        UpdateCamera
/* 19190 80028990 00000000 */   nop
/* 19194 80028994 4AE9000C */  jal        UpdateCameraMatrix
/* 19198 80028998 00000000 */   nop
/* 1919C 8002899C A195010C */  jal        ResetDepthTable
/* 191A0 800289A0 00000000 */   nop
/* 191A4 800289A4 0880043C */  lui        $a0, %hi(MenuServiceList)
/* 191A8 800289A8 4407838F */  lw         $v1, %gp_rel(MainMenuState)($gp)
/* 191AC 800289AC A0698424 */  addiu      $a0, $a0, %lo(MenuServiceList)
/* 191B0 800289B0 80180300 */  sll        $v1, $v1, 2
/* 191B4 800289B4 21186400 */  addu       $v1, $v1, $a0
/* 191B8 800289B8 0000628C */  lw         $v0, 0x0($v1)
/* 191BC 800289BC 00000000 */  nop
/* 191C0 800289C0 09F84000 */  jalr       $v0
/* 191C4 800289C4 00000000 */   nop
/* 191C8 800289C8 5B4C010C */  jal        pxm_frameh
/* 191CC 800289CC 00000000 */   nop
/* 191D0 800289D0 8C47010C */  jal        DrawBoxes
/* 191D4 800289D4 00000000 */   nop
/* 191D8 800289D8 8460010C */  jal        TextDrawText
/* 191DC 800289DC 00000000 */   nop
/* 191E0 800289E0 EBD6010C */  jal        VSync
/* 191E4 800289E4 21200000 */   addu      $a0, $zero, $zero
/* 191E8 800289E8 9769010C */  jal        updateScreen
/* 191EC 800289EC 00000000 */   nop
/* 191F0 800289F0 1000BF8F */  lw         $ra, 0x10($sp)
/* 191F4 800289F4 00000000 */  nop
/* 191F8 800289F8 0800E003 */  jr         $ra
/* 191FC 800289FC 1800BD27 */   addiu     $sp, $sp, 0x18
.size MainMenu_Loop, . - MainMenu_Loop
