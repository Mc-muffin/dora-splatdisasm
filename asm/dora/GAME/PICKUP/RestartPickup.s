.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RestartPickup
/* D2A4 8001CAA4 0C0080AC */  sw         $zero, 0xC($a0)
/* D2A8 8001CAA8 600080AC */  sw         $zero, 0x60($a0)
/* D2AC 8001CAAC 540080AC */  sw         $zero, 0x54($a0)
/* D2B0 8001CAB0 9C0080AC */  sw         $zero, 0x9C($a0)
/* D2B4 8001CAB4 A00080AC */  sw         $zero, 0xA0($a0)
/* D2B8 8001CAB8 0800E003 */  jr         $ra
/* D2BC 8001CABC A40080AC */   sw        $zero, 0xA4($a0)
.size RestartPickup, . - RestartPickup
