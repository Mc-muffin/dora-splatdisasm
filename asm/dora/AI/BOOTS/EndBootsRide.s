.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EndBootsRide
/* 25FC0 800357C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 25FC4 800357C4 0A80023C */  lui        $v0, %hi(BootsActor)
/* 25FC8 800357C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 25FCC 800357CC 988D5024 */  addiu      $s0, $v0, %lo(BootsActor)
/* 25FD0 800357D0 988D458C */  lw         $a1, %lo(BootsActor)($v0)
/* 25FD4 800357D4 6C000426 */  addiu      $a0, $s0, 0x6C
/* 25FD8 800357D8 1400BFAF */  sw         $ra, 0x14($sp)
/* 25FDC 800357DC 0400068E */  lw         $a2, 0x4($s0)
/* 25FE0 800357E0 0800078E */  lw         $a3, 0x8($s0)
/* 25FE4 800357E4 0A80023C */  lui        $v0, %hi(boots_aidata)
/* 25FE8 800357E8 77FB000C */  jal        MotionPhysics_SetPosition
/* 25FEC 800357EC 588F40AC */   sw        $zero, %lo(boots_aidata)($v0)
/* 25FF0 800357F0 0029010C */  jal        GenericFollowActorPostSetPosition
/* 25FF4 800357F4 21200002 */   addu      $a0, $s0, $zero
/* 25FF8 800357F8 1400BF8F */  lw         $ra, 0x14($sp)
/* 25FFC 800357FC 1000B08F */  lw         $s0, 0x10($sp)
/* 26000 80035800 0800E003 */  jr         $ra
/* 26004 80035804 1800BD27 */   addiu     $sp, $sp, 0x18
.size EndBootsRide, . - EndBootsRide
