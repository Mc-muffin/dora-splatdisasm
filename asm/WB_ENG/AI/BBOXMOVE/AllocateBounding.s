.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocateBounding
/* 35DC8 800455C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 35DCC 800455CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 35DD0 800455D0 21808000 */  addu       $s0, $a0, $zero
/* 35DD4 800455D4 06000012 */  beqz       $s0, .L800455F0
/* 35DD8 800455D8 1400BFAF */   sw        $ra, 0x14($sp)
/* 35DDC 800455DC 00211000 */  sll        $a0, $s0, 4
/* 35DE0 800455E0 23209000 */  subu       $a0, $a0, $s0
/* 35DE4 800455E4 2B3F010C */  jal        new_malloc
/* 35DE8 800455E8 80200400 */   sll       $a0, $a0, 2
/* 35DEC 800455EC F41482AF */  sw         $v0, %gp_rel(boundingboxes)($gp)
.L800455F0:
/* 35DF0 800455F0 1400BF8F */  lw         $ra, 0x14($sp)
/* 35DF4 800455F4 F81490AF */  sw         $s0, %gp_rel(g_totalnumbounding)($gp)
/* 35DF8 800455F8 1000B08F */  lw         $s0, 0x10($sp)
/* 35DFC 800455FC 0800E003 */  jr         $ra
/* 35E00 80045600 1800BD27 */   addiu     $sp, $sp, 0x18
.size AllocateBounding, . - AllocateBounding
