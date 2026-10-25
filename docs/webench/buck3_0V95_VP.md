# Buck 3 - 0.95V_VP (WEBENCH, 24-oct-2026)
Req: Vin 4.5-5.5 V (5 V nom, 5VCC_EXT), Vout 0.95 V, Iout 1 A (VP max 0.57 A @ Tj125), Ta 50 C, ripple 1 %, SS 3 ms
IC: TPS62933FDRLR (TI, 3 A, 3.8-30 V, SOT-583 DRL 8 pines sin pad termico), FCCM (forced PWM), 500 kHz, Vref 0.8 V
Resultados: Eff 89.4 % | Vout p-p 3.0 mV | IC Tj 56.3 C | IC Ipk 1.54 A | L Ipp 1.08 A | Overshoot 2.1 / Undershoot 9.1 mV
 Vout 0.9496 V (+-2.32 %) | Caida en BD4 (10 mOhm x 0.57 A) = 5.7 mV -> min ~0.91 V OK
NOTA: la familia TPS62933 no tiene variante con FCCM + Power Good. Se prioriza FCCM (riel analogico SerDes).
 Secuencia: EN de Buck 3 <- PG de Buck 2 (VDDC primero, luego VP); el PG global sale de Buck 1 y Buck 2.
DESCARTADOS: TPS62150/TPS62140 (DCS-Control con PFM a carga ligera), TPS562208 (no aparece entre los mejores, 2.6x mas area)
BOM (10):
U1  TPS62933FDRLR
L1  Coilcraft XAL7030-152MEB 1.5 uH, 7.6 mOhm, 15 A (WEBENCH proponia SRU1038 10x10 mm; cambiado por tamano)
Cin C0805C106K8PACTU 10uF 10V 0805 ; Cinx EMK107B7104KA-T 100nF 0603
Cout GRM32EC80J107ME20L 100uF 6.3V 1210
Cboot C0603X5R1A104K030BC 100nF 0201 (cambiar a 0402) ; Css GRM155R71C223KA01D 22nF 0402 ; Cff GRM1555C1H101GA01D 100pF 0402
Rfbt 1.87k 0603 ; Rfbb 10k 0402
