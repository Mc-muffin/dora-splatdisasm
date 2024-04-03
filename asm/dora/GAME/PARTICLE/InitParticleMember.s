.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitParticleMember
/* 20740 8002FF40 1000A38F */  lw         $v1, 0x10($sp)
/* 20744 8002FF44 1400A88F */  lw         $t0, 0x14($sp)
/* 20748 8002FF48 1800A98F */  lw         $t1, 0x18($sp)
/* 2074C 8002FF4C 1C00AA8F */  lw         $t2, 0x1C($sp)
/* 20750 8002FF50 01000224 */  addiu      $v0, $zero, 0x1
/* 20754 8002FF54 000082A4 */  sh         $v0, 0x0($a0)
/* 20758 8002FF58 040085AC */  sw         $a1, 0x4($a0)
/* 2075C 8002FF5C 080086AC */  sw         $a2, 0x8($a0)
/* 20760 8002FF60 0C0087AC */  sw         $a3, 0xC($a0)
/* 20764 8002FF64 100083AC */  sw         $v1, 0x10($a0)
/* 20768 8002FF68 140088AC */  sw         $t0, 0x14($a0)
/* 2076C 8002FF6C 180089AC */  sw         $t1, 0x18($a0)
/* 20770 8002FF70 0800E003 */  jr         $ra
/* 20774 8002FF74 02008AA4 */   sh        $t2, 0x2($a0)
.size InitParticleMember, . - InitParticleMember
