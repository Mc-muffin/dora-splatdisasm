.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Tasker
/* 4036C 8004FB6C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 40370 8004FB70 1000BFAF */  sw         $ra, 0x10($sp)
/* 40374 8004FB74 630A020C */  jal        PadEnableCom
/* 40378 8004FB78 21200000 */   addu      $a0, $zero, $zero
/* 4037C 8004FB7C 8F64010C */  jal        readControllers
/* 40380 8004FB80 00000000 */   nop
/* 40384 8004FB84 630A020C */  jal        PadEnableCom
/* 40388 8004FB88 01000424 */   addiu     $a0, $zero, 0x1
/* 4038C 8004FB8C 740F838F */  lw         $v1, %gp_rel(CurrentTaskerState)($gp)
/* 40390 8004FB90 780F828F */  lw         $v0, %gp_rel(RequestTaskerState)($gp)
/* 40394 8004FB94 00000000 */  nop
/* 40398 8004FB98 05006214 */  bne        $v1, $v0, .L8004FBB0
/* 4039C 8004FB9C 00000000 */   nop
/* 403A0 8004FBA0 880F828F */  lw         $v0, %gp_rel(TaskerReloadState)($gp)
/* 403A4 8004FBA4 00000000 */  nop
/* 403A8 8004FBA8 21004010 */  beqz       $v0, .L8004FC30
/* 403AC 8004FBAC 00000000 */   nop
.L8004FBB0:
/* 403B0 8004FBB0 880F828F */  lw         $v0, %gp_rel(TaskerReloadState)($gp)
/* 403B4 8004FBB4 00000000 */  nop
/* 403B8 8004FBB8 03004010 */  beqz       $v0, .L8004FBC8
/* 403BC 8004FBBC 00000000 */   nop
/* 403C0 8004FBC0 738E000C */  jal        MovieSelection
/* 403C4 8004FBC4 00000000 */   nop
.L8004FBC8:
/* 403C8 8004FBC8 740F848F */  lw         $a0, %gp_rel(CurrentTaskerState)($gp)
/* 403CC 8004FBCC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 403D0 8004FBD0 880F80AF */  sw         $zero, %gp_rel(TaskerReloadState)($gp)
/* 403D4 8004FBD4 0A008210 */  beq        $a0, $v0, .L8004FC00
/* 403D8 8004FBD8 00110400 */   sll       $v0, $a0, 4
/* 403DC 8004FBDC 7C0F838F */  lw         $v1, %gp_rel(TheStateTable)($gp)
/* 403E0 8004FBE0 00000000 */  nop
/* 403E4 8004FBE4 21104300 */  addu       $v0, $v0, $v1
/* 403E8 8004FBE8 0800428C */  lw         $v0, 0x8($v0)
/* 403EC 8004FBEC 00000000 */  nop
/* 403F0 8004FBF0 03004010 */  beqz       $v0, .L8004FC00
/* 403F4 8004FBF4 00000000 */   nop
/* 403F8 8004FBF8 09F84000 */  jalr       $v0
/* 403FC 8004FBFC 00000000 */   nop
.L8004FC00:
/* 40400 8004FC00 780F848F */  lw         $a0, %gp_rel(RequestTaskerState)($gp)
/* 40404 8004FC04 7C0F838F */  lw         $v1, %gp_rel(TheStateTable)($gp)
/* 40408 8004FC08 00110400 */  sll        $v0, $a0, 4
/* 4040C 8004FC0C 21104300 */  addu       $v0, $v0, $v1
/* 40410 8004FC10 0000428C */  lw         $v0, 0x0($v0)
/* 40414 8004FC14 0980013C */  lui        $at, %hi(FaderFlag)
/* 40418 8004FC18 F04A20AC */  sw         $zero, %lo(FaderFlag)($at)
/* 4041C 8004FC1C 740F84AF */  sw         $a0, %gp_rel(CurrentTaskerState)($gp)
/* 40420 8004FC20 03004010 */  beqz       $v0, .L8004FC30
/* 40424 8004FC24 00000000 */   nop
/* 40428 8004FC28 09F84000 */  jalr       $v0
/* 4042C 8004FC2C 00000000 */   nop
.L8004FC30:
/* 40430 8004FC30 780F828F */  lw         $v0, %gp_rel(RequestTaskerState)($gp)
/* 40434 8004FC34 7C0F848F */  lw         $a0, %gp_rel(TheStateTable)($gp)
/* 40438 8004FC38 00110200 */  sll        $v0, $v0, 4
/* 4043C 8004FC3C 21104400 */  addu       $v0, $v0, $a0
/* 40440 8004FC40 0400438C */  lw         $v1, 0x4($v0)
/* 40444 8004FC44 00000000 */  nop
/* 40448 8004FC48 09006010 */  beqz       $v1, .L8004FC70
/* 4044C 8004FC4C 00000000 */   nop
/* 40450 8004FC50 740F828F */  lw         $v0, %gp_rel(CurrentTaskerState)($gp)
/* 40454 8004FC54 00000000 */  nop
/* 40458 8004FC58 00110200 */  sll        $v0, $v0, 4
/* 4045C 8004FC5C 21104400 */  addu       $v0, $v0, $a0
/* 40460 8004FC60 0400438C */  lw         $v1, 0x4($v0)
/* 40464 8004FC64 00000000 */  nop
/* 40468 8004FC68 09F86000 */  jalr       $v1
/* 4046C 8004FC6C 00000000 */   nop
.L8004FC70:
/* 40470 8004FC70 1000BF8F */  lw         $ra, 0x10($sp)
/* 40474 8004FC74 00000000 */  nop
/* 40478 8004FC78 0800E003 */  jr         $ra
/* 4047C 8004FC7C 1800BD27 */   addiu     $sp, $sp, 0x18
.size Tasker, . - Tasker
