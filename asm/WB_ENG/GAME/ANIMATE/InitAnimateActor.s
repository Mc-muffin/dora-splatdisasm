.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitAnimateActor
/* 29168 80038968 00010224 */  addiu      $v0, $zero, 0x100
/* 2916C 8003896C 0000A2AC */  sw         $v0, 0x0($a1)
/* 29170 80038970 01000224 */  addiu      $v0, $zero, 0x1
/* 29174 80038974 1000A0AC */  sw         $zero, 0x10($a1)
/* 29178 80038978 1400A0AC */  sw         $zero, 0x14($a1)
/* 2917C 8003897C 0800A0AC */  sw         $zero, 0x8($a1)
/* 29180 80038980 0C00A0AC */  sw         $zero, 0xC($a1)
/* 29184 80038984 2000A0AC */  sw         $zero, 0x20($a1)
/* 29188 80038988 2800A2AC */  sw         $v0, 0x28($a1)
/* 2918C 8003898C 0800E003 */  jr         $ra
/* 29190 80038990 180080AC */   sw        $zero, 0x18($a0)
.size InitAnimateActor, . - InitAnimateActor
