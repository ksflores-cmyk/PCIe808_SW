# Buck 2 - 0.95V_VDDC (WEBENCH, 24-oct-2026)
Req: Vin 4.5-5.5 V (5 V nom, 5VCC_EXT), Vout 0.95 V, Iout 4 A, Ta 50 C, ripple 1 %, SS 3 ms, EN-UVLO 4.2 V, OCP 5.5 A
IC: TPS54J060RPG (TI, 6 A, 4-16 V, VQFN-HR RPG), FPWM/FCCM, 1.1 MHz, Vref 0.9 V, tolerancia FB 1 %
Resultados (con XAL5020): Eff 84.9 % | Vout p-p 4.45 mV | IC Tj 66.2 C | IC Ipk 4.6 A | Iocp 5.46 A | L ripple 30 %
 Overshoot 28.2 mV / Undershoot 26.9 mV (WEBENCH no incluye el banco de desacoplo de la pag. 13 -> transitorio real en U6 menor) | Vout 0.949 V (+-1.11 %)
DESCARTADO: TPS56A37 (88 % pero solo Eco-mode y limite de corriente 12-15 A: no protege a BD1 de 8 A)
AJUSTE PROPIO (presupuesto de tolerancias con caida en BD1 HI1812V101R-10, 10 mOhm max -> 31 mV @ 3.07 A):
 Setpoint 0.96 V -> Rfbt = 665 Ohm 0.1 % (en lugar de 549), Rfbb = 10.0 k 0.1 %  => Vout = 0.9 x (1+665/10k) = 0.9599 V
 Min en bolas U6 (RSS 27 mV + 31 mV BD1) = 0.902 V >= 0.90 ; Max sin carga = 0.987 V <= 0.99
 Sensado ANTES de BD1.
BOM (14):
U1  TPS54J060RPG
L1  Coilcraft XAL5020-561MEB 560 nH, 8.3 mOhm, 13.9 A (antes Bourns SRN8040-R50Y; unificado a familia XAL)
Cin GRM32ER61C226ME20L 22uF 16V 1210 ; Cinx GRM155R61A274KE15D 270nF 0402
Cout MSASJ21GBB5476MTNA01 47uF 6.3V 0805
Css GRM033R60J333KE01D 33nF 0201 (cambiar a 0402) ; Cvcc GRM21BR71A225KA01L 2.2uF 0805 ; Cboot 08053C104KAT2A 100nF 0805
Rtrip 5.49k 0402 ; Rpg 100k 0402 ; RenT 53.6k 0603 ; RenB 100k 0402 ; Rfbt 665 (0.1 %) ; Rfbb 10k (0.1 %)

## Implementacion en esquematico (pag. 03_PWR1)
U56 TPS54J060RPGR (fp RPG0014A-MFG) | L3 560nH (IND_XAL5020)
Cout C624 | Cin C625 | Cinx C626 | Cboot C627 | Cvcc C628 | Css C629 (0402) | Rtrip R537 | Rfbt R538 | Rfbb R539
CAMBIO vs BOM WEBENCH: sin RenT/RenB/Rpg propios. EN <- PG_3V3 (open-drain de Buck 1 con pull-up R536 10k a 3.3V_EXT),
PGOOD -> U2_PGOOD (pull-up existente R27 5.1k + LED Q1/DS6). MODE a GND = FCCM 1.1 MHz.
