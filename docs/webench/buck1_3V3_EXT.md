# Buck 1 - 3.3V_EXT (WEBENCH, 24-oct-2026)
Req: Vin 10.8-13.2 V (12 V nom, 12VCC_EXT), Vout 3.3 V, Iout 15 A, Ta 50 C, ripple 1 %, SS 8 ms, EN-UVLO 9 V, OCP 21 A
IC: TPS54KB20RZRR (TI, 25 A, 4-16 V, WQFN-FCRLF RZR 16 pines, ACTIVE, Vref 0.9 V +-0.5 %, PG, remote sense, FPWM/Eco seleccionable por MSEL), 800 kHz
CAMBIO: TPS54KB23 descartado -> no tiene pagina de producto publica en ti.com (404). KB20 es la variante ACTIVE, pin-compatible.
Resultados: Eff 94.5 % | Vout p-p 6.8 mV | IC Tj 85.2 C | IC Ipk 16.7 A | Iocp 20.83 A | L ripple 22.7 %
 Vout 3.30 V (+-1.98 %) | Overshoot 74 mV / Undershoot 65 mV con 2x47 uF -> se usan 3x47 uF (mas margen; slots agregan hasta 4 mF)
BOM:
U1   TPS54KB20RZRR
L1   Coilcraft XAL8080-681MEB 680 nH, 1.4 mOhm, 37 A
Cout 3x GRM32ER61C476KE15L 47uF 16V 1210
Cin1 2x + Cin2 2x GRM31CR71H475KA12L 4.7uF 50V 1206
Cinx1,Cinx3 C1005X5R1E105K050BC 1uF 25V 0402 ; Cinx2,Cinx4 06033C104KAT2A 100nF 25V 0603
Cboot 08053C104KAT2A 100nF 0805 ; Cvcc GRM21BR71A225KA01L 2.2uF 10V 0805 ; Css C0603C334K8RACTU 330nF 0603
RenT 576k 0603 ; RenB 100k 0402 (UVLO 9 V) ; Rilim 5.76k 0402 ; Rmsel 4.99k 0402
Rfbt 26.7k 0402 ; Rfbb 10k 0402 ; Rpg 10k (0201 -> 0402)

## Implementacion en esquematico (pag. 03_PWR1)
U55 TPS54KB20RZRR (fp RZR0016A-MFG) | L2 680nH (IND_XAL8080)
Cout C610-C612 | Cin C613-C616 | Cinx C617,C618 (0402) C619,C620 (0603) | Cboot C621 | Cvcc C622 | Css C623
RenT R530 | RenB R531 | Rilim R532 | Rmsel R533 | Rfbt R534 | Rfbb R535 | Rpg R536 -> red PG_3V3
GOSNS a GND (sensado local); remote sense no usado. Pines de potencia del simbolo UL cambiados a Passive.
