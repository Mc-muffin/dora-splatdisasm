.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HedgeHogBrains
/* 377E4 80046FE4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 377E8 80046FE8 4000B0AF */  sw         $s0, 0x40($sp)
/* 377EC 80046FEC 21808000 */  addu       $s0, $a0, $zero
/* 377F0 80046FF0 4400BFAF */  sw         $ra, 0x44($sp)
/* 377F4 80046FF4 D140010C */  jal        u32Random
/* 377F8 80046FF8 0100043C */   lui       $a0, (0x10000 >> 16)
/* 377FC 80046FFC 9228010C */  jal        CommonActorPreBrains
/* 37800 80047000 21200002 */   addu      $a0, $s0, $zero
/* 37804 80047004 15004010 */  beqz       $v0, .L8004705C
/* 37808 80047008 00000000 */   nop
/* 3780C 8004700C 4400028E */  lw         $v0, 0x44($s0)
/* 37810 80047010 00000000 */  nop
/* 37814 80047014 1000448C */  lw         $a0, 0x10($v0)
/* 37818 80047018 FD90000C */  jal        AttachActor
/* 3781C 8004701C 00000000 */   nop
/* 37820 80047020 0B004010 */  beqz       $v0, .L80047050
/* 37824 80047024 0F000224 */   addiu     $v0, $zero, 0xF
/* 37828 80047028 D528010C */  jal        GetAttachedActor
/* 3782C 8004702C 21200002 */   addu      $a0, $s0, $zero
/* 37830 80047030 21184000 */  addu       $v1, $v0, $zero
/* 37834 80047034 06006010 */  beqz       $v1, .L80047050
/* 37838 80047038 0F000224 */   addiu     $v0, $zero, 0xF
/* 3783C 8004703C 1000628C */  lw         $v0, 0x10($v1)
/* 37840 80047040 00000000 */  nop
/* 37844 80047044 00014234 */  ori        $v0, $v0, 0x100
/* 37848 80047048 100062AC */  sw         $v0, 0x10($v1)
/* 3784C 8004704C 0F000224 */  addiu      $v0, $zero, 0xF
.L80047050:
/* 37850 80047050 5C0002AE */  sw         $v0, 0x5C($s0)
/* 37854 80047054 7C24010C */  jal        GenericAIMove
/* 37858 80047058 21200002 */   addu      $a0, $s0, $zero
.L8004705C:
/* 3785C 8004705C 4400BF8F */  lw         $ra, 0x44($sp)
/* 37860 80047060 4000B08F */  lw         $s0, 0x40($sp)
/* 37864 80047064 0800E003 */  jr         $ra
/* 37868 80047068 4800BD27 */   addiu     $sp, $sp, 0x48
.size HedgeHogBrains, . - HedgeHogBrains
