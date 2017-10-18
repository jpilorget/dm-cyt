## TP 1 Parte 2
## Punto 2
## CreaciÃ³n del dataset
#Limpio el ambiente y elijo el directorio
rm(list = ls())
setwd("/home/juampi/dm")

#Defino las variables de interÃ©s del problema a resolver
vars_interes <- c("Seq", "x", "y","Rmag", "ApD_Rmag", "phot_flag", "MC_class", "MC_z", "UjMag", "BjMag",
                  "S280Mag","usMag", "gsMag", "rsMag", "UbMag", "BbMag", "VbMag")

#Cargo el dataset y defino las variables y sus nombres. ATENCIÃN:
#Para hacerlo llamo a la tabla que estÃ¡ mÃ¡s abajo. Hay que ejecutarla previamente.
#Pongo esta instrucciÃ³n mÃ¡s arriba asÃ­ no se pierde al final
datos <- read.fwf("http://www.mpia.de/COMBO/table3.dat", tabla$extension, col.names = tabla$nombre)

#Hago un subset de las variables segÃºn lo que dice el TP
datos_subset <- datos[,vars_interes]

#Guardo el subset
write.csv(datos_subset, "base_ampliada_tp1p2.csv", row.names = F)

#Creo la tabla con el inicio, el fin y la extensiÃ³n de las variables
tabla <- read.table(header = F, col.names = c("inicio", "fin", "extension", "nombre"), text =
                      "1	5	6	Seq
                    7	8	3	RAh
                    10	11	3	RAm
                    13	18	7	RAs
                    20	20	1	DE-
                    21	22	3	DEd
                    24	25	3	DEm
                    27	31	6	DEs
                    33	39	8	x
                    41	47	8	y
                    49	54	7	Rmag
                    56	60	6	e_Rmag
                    62	67	7	Ap_Rmag
                    69	75	8	ApD_Rmag
                    77	82	7	mu_max
                    84	89	7	MajAxis
                    91	96	7	MinAxis
                    98	102	6	PA
                    104	107	5	phot_flag
                    109	109	1	var_flag
                    111	115	6	stellarity
                    117	131	16	MC_class
                    133	137	6	MC_z
                    139	143	6	e_MC_z
                    145	149	6	MC_z2
                    151	155	6	e_MC_z2
                    157	161	6	MC_z_ml
                    163	169	8	dl
                    171	177	8	chi2red
                    179	184	7	UjMag
                    186	190	6	e_UjMag
                    192	197	7	BjMag
                    199	205	8	e_BjMag
                    207	212	7	VjMag
                    214	220	8	e_VjMag
                    222	227	7	usMag
                    229	233	6	e_usMag
                    235	240	7	gsMag
                    242	248	8	e_gsMag
                    250	255	7	rsMag
                    257	263	8	e_rsMag
                    265	270	7	UbMag
                    272	276	6	e_UbMag
                    278	283	7	BbMag
                    285	291	8	e_BbMag
                    293	298	7	VbMag
                    300	306	8	e_VbMag
                    308	313	7	S280Mag
                    315	320	7	e_S280Mag
                    322	327	7	S145Mag
                    329	332	5	e_S145Mag
                    334	343	11	W420F_E
                    345	354	11	e_W420F_E
                    356	365	11	W462F_E
                    367	376	11	e_W462F_E
                    378	387	11	W485F_D
                    389	398	11	e_W485F_D
                    400	409	11	W518F_E
                    411	420	11	e_W518F_E
                    422	431	11	W571F_D
                    433	442	11	e_W571F_D
                    444	453	11	W571F_E
                    455	464	11	e_W571F_E
                    466	475	11	W571F_S
                    477	486	11	e_W571F_S
                    488	497	11	W604F_E
                    499	508	11	e_W604F_E
                    510	519	11	W646F_D
                    521	530	11	e_W646F_D
                    532	541	11	W696F_E
                    543	552	11	e_W696F_E
                    554	563	11	W753F_E
                    565	574	11	e_W753F_E
                    576	585	11	W815F_E
                    587	596	11	e_W815F_E
                    598	607	11	W815F_G
                    609	618	11	e_W815F_G
                    620	629	11	W815F_S
                    631	640	11	e_W815F_S
                    642	651	11	W856F_D
                    653	662	11	e_W856F_D
                    664	673	11	W914F_D
                    675	684	11	e_W914F_D
                    686	695	11	W914F_E
                    697	706	11	e_W914F_E
                    708	717	11	UF_F
                    719	728	11	e_UF_F
                    730	739	11	UF_G
                    741	750	11	e_UF_G
                    752	761	11	UF_S
                    763	772	11	e_UF_S
                    774	783	11	BF_D
                    785	794	11	e_BF_D
                    796	805	11	BF_F
                    807	816	11	e_BF_F
                    818	827	11	BF_S
                    829	838	11	e_BF_S
                    840	849	11	VF_D
                    851	860	11	e_VF_D
                    862	871	11	RF_D
                    873	882	11	e_RF_D
                    884	893	11	RF_E
                    895	904	11	e_RF_E
                    906	915	11	RF_F
                    917	926	11	e_RF_F
                    928	937	11	RF_G
                    939	948	11	e_RF_G
                    950	959	11	RF_S
                    961	970	11	e_RF_S
                    972	981	11	IF_D
                    983	992	11	e_IF_D");
