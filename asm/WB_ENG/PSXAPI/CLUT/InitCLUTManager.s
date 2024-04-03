.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCLUTManager
/* 4EA14 8005E214 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4EA18 8005E218 3F000424 */  addiu      $a0, $zero, 0x3F
/* 4EA1C 8005E21C 0C80023C */  lui        $v0, %hi(gCLUTUseTable)
/* 4EA20 8005E220 A8C44224 */  addiu      $v0, $v0, %lo(gCLUTUseTable)
/* 4EA24 8005E224 FE1F4324 */  addiu      $v1, $v0, 0x1FFE
/* 4EA28 8005E228 204E0224 */  addiu      $v0, $zero, 0x4E20
/* 4EA2C 8005E22C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4EA30 8005E230 541180AF */  sw         $zero, %gp_rel(CLUTCOUNT)($gp)
/* 4EA34 8005E234 0980013C */  lui        $at, %hi(ImageClutId)
/* 4EA38 8005E238 B45222A4 */  sh         $v0, %lo(ImageClutId)($at)
.L8005E23C:
/* 4EA3C 8005E23C 000060A4 */  sh         $zero, 0x0($v1)
/* 4EA40 8005E240 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 4EA44 8005E244 FDFF8104 */  bgez       $a0, .L8005E23C
/* 4EA48 8005E248 7EFF6324 */   addiu     $v1, $v1, -0x82
/* 4EA4C 8005E24C 9E73010C */  jal        AllocVramSpaceForCluts
/* 4EA50 8005E250 00000000 */   nop
/* 4EA54 8005E254 1000BF8F */  lw         $ra, 0x10($sp)
/* 4EA58 8005E258 00000000 */  nop
/* 4EA5C 8005E25C 0800E003 */  jr         $ra
/* 4EA60 8005E260 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitCLUTManager, . - InitCLUTManager
