.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CopyShadow
/* 14DDC 800245DC 0980063C */  lui        $a2, %hi(ShadowMeshTable)
/* 14DE0 800245E0 A864C624 */  addiu      $a2, $a2, %lo(ShadowMeshTable)
/* 14DE4 800245E4 00290500 */  sll        $a1, $a1, 4
/* 14DE8 800245E8 00210400 */  sll        $a0, $a0, 4
/* 14DEC 800245EC 21108600 */  addu       $v0, $a0, $a2
/* 14DF0 800245F0 2118A600 */  addu       $v1, $a1, $a2
/* 14DF4 800245F4 0000478C */  lw         $a3, 0x0($v0)
/* 14DF8 800245F8 0400C224 */  addiu      $v0, $a2, 0x4
/* 14DFC 800245FC 000067AC */  sw         $a3, 0x0($v1)
/* 14E00 80024600 21188200 */  addu       $v1, $a0, $v0
/* 14E04 80024604 2110A200 */  addu       $v0, $a1, $v0
/* 14E08 80024608 0000678C */  lw         $a3, 0x0($v1)
/* 14E0C 8002460C 0800C324 */  addiu      $v1, $a2, 0x8
/* 14E10 80024610 0C00C624 */  addiu      $a2, $a2, 0xC
/* 14E14 80024614 000047AC */  sw         $a3, 0x0($v0)
/* 14E18 80024618 21108300 */  addu       $v0, $a0, $v1
/* 14E1C 8002461C 2118A300 */  addu       $v1, $a1, $v1
/* 14E20 80024620 0000478C */  lw         $a3, 0x0($v0)
/* 14E24 80024624 21208600 */  addu       $a0, $a0, $a2
/* 14E28 80024628 000067AC */  sw         $a3, 0x0($v1)
/* 14E2C 8002462C 0000828C */  lw         $v0, 0x0($a0)
/* 14E30 80024630 2128A600 */  addu       $a1, $a1, $a2
/* 14E34 80024634 0800E003 */  jr         $ra
/* 14E38 80024638 0000A2AC */   sw        $v0, 0x0($a1)
.size CopyShadow, . - CopyShadow
