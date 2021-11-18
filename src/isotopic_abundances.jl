# these are scraped from NIST
# maps (atomic number, atomic weight) to abundance (abundances for an element sum to 1)
isotopic_abundances = Dict((71, 175) => 0.97401,
                           (40, 92) => 0.1715,
                           (48, 111) => 0.128,
                           (72, 176) => 0.0526,
                           (30, 68) => 0.1845,
                           (76, 184) => 0.0002,
                           (54, 129) => 0.264006,
                           (44, 99) => 0.1276,
                           (60, 142) => 0.27152,
                           (76, 186) => 0.0159,
                           (27, 59) => 1.0,
                           (66, 156) => 0.00056,
                           (67, 165) => 1.0,
                           (62, 152) => 0.2675,
                           (34, 76) => 0.0937,
                           (15, 31) => 1.0,
                           (52, 125) => 0.0707,
                           (24, 54) => 0.02365,
                           (34, 78) => 0.2377,
                           (52, 130) => 0.3408,
                           (72, 178) => 0.2728,
                           (28, 60) => 0.26223,
                           (36, 84) => 0.56987,
                           (54, 134) => 0.104357,
                           (6, 12) => 0.9893,
                           (52, 123) => 0.0089,
                           (66, 163) => 0.24896,
                           (38, 87) => 0.07,
                           (40, 96) => 0.028,
                           (51, 121) => 0.5721,
                           (22, 47) => 0.0744,
                           (80, 201) => 0.1318,
                           (17, 37) => 0.2424,
                           (8, 17) => 0.00038,
                           (11, 23) => 1.0,
                           (58, 138) => 0.00251,
                           (1, 2) => 0.000115,
                           (46, 108) => 0.2646,
                           (42, 98) => 0.2439,
                           (18, 36) => 0.003336,
                           (76, 188) => 0.1324,
                           (62, 150) => 0.0738,
                           (73, 180) => 0.0001201,
                           (16, 36) => 0.0001,
                           (78, 192) => 0.00782,
                           (56, 132) => 0.00101,
                           (48, 112) => 0.2413,
                           (56, 137) => 0.11232,
                           (70, 170) => 0.02982,
                           (42, 97) => 0.096,
                           (5, 10) => 0.199,
                           (46, 102) => 0.0102,
                           (64, 157) => 0.1565,
                           (3, 6) => 0.0759,
                           (50, 122) => 0.0463,
                           (63, 151) => 0.4781,
                           (66, 160) => 0.02329,
                           (20, 44) => 0.02086,
                           (17, 35) => 0.7576,
                           (29, 65) => 0.3085,
                           (46, 106) => 0.2733,
                           (70, 173) => 0.16103,
                           (30, 67) => 0.0404,
                           (82, 206) => 0.241,
                           (34, 80) => 0.4961,
                           (47, 107) => 0.51839,
                           (90, 232) => 1.0,
                           (9, 19) => 1.0,
                           (68, 167) => 0.22869,
                           (14, 29) => 0.04685,
                           (72, 179) => 0.1362,
                           (44, 96) => 0.0554,
                           (50, 116) => 0.1454,
                           (23, 50) => 0.0025,
                           (42, 100) => 0.0982,
                           (46, 104) => 0.1114,
                           (5, 11) => 0.801,
                           (68, 164) => 0.01601,
                           (56, 134) => 0.02417,
                           (40, 94) => 0.1738,
                           (52, 120) => 0.0009,
                           (66, 164) => 0.2826,
                           (22, 49) => 0.0541,
                           (54, 130) => 0.04071,
                           (56, 138) => 0.71698,
                           (72, 180) => 0.3508,
                           (57, 139) => 0.9991119,
                           (68, 170) => 0.1491,
                           (32, 74) => 0.365,
                           (56, 135) => 0.06592,
                           (60, 143) => 0.12174,
                           (8, 16) => 0.99757,
                           (34, 77) => 0.0763,
                           (60, 150) => 0.05638,
                           (82, 204) => 0.014,
                           (18, 38) => 0.000629,
                           (81, 203) => 0.2952,
                           (80, 200) => 0.231,
                           (53, 127) => 1.0,
                           (78, 194) => 0.3286,
                           (25, 55) => 1.0,
                           (1, 1) => 0.999885,
                           (34, 82) => 0.0873,
                           (64, 158) => 0.2484,
                           (64, 155) => 0.148,
                           (8, 18) => 0.00205,
                           (4, 9) => 1.0,
                           (19, 39) => 0.932581,
                           (26, 57) => 0.02119,
                           (40, 90) => 0.5145,
                           (70, 172) => 0.2168,
                           (22, 50) => 0.0518,
                           (35, 79) => 0.5069,
                           (44, 102) => 0.3155,
                           (31, 69) => 0.60108,
                           (46, 110) => 0.1172,
                           (34, 74) => 0.0089,
                           (26, 58) => 0.00282,
                           (83, 209) => 1.0,
                           (18, 40) => 0.996035,
                           (23, 51) => 0.9975,
                           (55, 133) => 1.0,
                           (48, 108) => 0.0089,
                           (77, 191) => 0.373,
                           (19, 40) => 0.000117,
                           (32, 73) => 0.0775,
                           (68, 166) => 0.33503,
                           (59, 141) => 1.0,
                           (62, 147) => 0.1499,
                           (70, 174) => 0.32026,
                           (13, 27) => 1.0,
                           (57, 138) => 0.0008881,
                           (22, 46) => 0.0825,
                           (16, 33) => 0.0075,
                           (64, 156) => 0.2047,
                           (2, 3) => 1.34e-6,
                           (26, 54) => 0.05845,
                           (12, 26) => 0.1101,
                           (65, 159) => 1.0,
                           (48, 114) => 0.2873,
                           (28, 64) => 0.009255,
                           (52, 124) => 0.0474,
                           (10, 20) => 0.9048,
                           (44, 104) => 0.1862,
                           (56, 130) => 0.00106,
                           (76, 190) => 0.2626,
                           (30, 70) => 0.0061,
                           (14, 28) => 0.92223,
                           (74, 180) => 0.0012,
                           (22, 48) => 0.7372,
                           (82, 208) => 0.524,
                           (52, 126) => 0.1884,
                           (36, 78) => 0.00355,
                           (48, 106) => 0.0125,
                           (50, 112) => 0.0097,
                           (70, 168) => 0.00123,
                           (92, 234) => 5.4e-5,
                           (48, 113) => 0.1222,
                           (38, 86) => 0.0986,
                           (50, 115) => 0.0034,
                           (92, 238) => 0.992742,
                           (78, 195) => 0.3378,
                           (16, 34) => 0.0425,
                           (78, 198) => 0.07356,
                           (74, 184) => 0.3064,
                           (60, 146) => 0.17189,
                           (49, 115) => 0.9571,
                           (52, 128) => 0.3174,
                           (50, 120) => 0.3258,
                           (40, 91) => 0.1122,
                           (74, 186) => 0.2843,
                           (77, 193) => 0.627,
                           (92, 235) => 0.007204,
                           (79, 197) => 1.0,
                           (74, 182) => 0.265,
                           (62, 148) => 0.1124,
                           (42, 95) => 0.1584,
                           (10, 21) => 0.0027,
                           (24, 53) => 0.09501,
                           (46, 105) => 0.2233,
                           (50, 118) => 0.2422,
                           (80, 202) => 0.2986,
                           (78, 196) => 0.2521,
                           (64, 160) => 0.2186,
                           (28, 58) => 0.68077,
                           (6, 13) => 0.0107,
                           (62, 149) => 0.1382,
                           (42, 92) => 0.1453,
                           (20, 43) => 0.00135,
                           (7, 15) => 0.00364,
                           (44, 98) => 0.0187,
                           (38, 88) => 0.8258,
                           (38, 84) => 0.0056,
                           (28, 62) => 0.036346,
                           (76, 189) => 0.1615,
                           (30, 64) => 0.4917,
                           (64, 154) => 0.0218,
                           (3, 7) => 0.9241,
                           (82, 207) => 0.221,
                           (20, 40) => 0.96941,
                           (68, 168) => 0.26978,
                           (36, 80) => 0.02286,
                           (76, 187) => 0.0196,
                           (37, 85) => 0.7217,
                           (62, 144) => 0.0307,
                           (80, 204) => 0.0687,
                           (45, 103) => 1.0,
                           (69, 169) => 1.0,
                           (54, 124) => 0.000952,
                           (42, 96) => 0.1667,
                           (2, 4) => 0.99999866,
                           (48, 110) => 0.1249,
                           (72, 174) => 0.0016,
                           (12, 24) => 0.7899,
                           (75, 185) => 0.374,
                           (70, 176) => 0.12996,
                           (47, 109) => 0.48161,
                           (72, 177) => 0.186,
                           (24, 52) => 0.83789,
                           (54, 136) => 0.088573,
                           (32, 70) => 0.2057,
                           (54, 126) => 0.00089,
                           (33, 75) => 1.0,
                           (41, 93) => 1.0,
                           (10, 22) => 0.0925,
                           (54, 131) => 0.212324,
                           (80, 199) => 0.1687,
                           (29, 63) => 0.6915,
                           (58, 136) => 0.00185,
                           (64, 152) => 0.002,
                           (20, 42) => 0.00647,
                           (50, 124) => 0.0579,
                           (44, 100) => 0.126,
                           (12, 25) => 0.1,
                           (60, 148) => 0.05756,
                           (54, 128) => 0.019102,
                           (76, 192) => 0.4078,
                           (50, 117) => 0.0768,
                           (68, 162) => 0.00139,
                           (78, 190) => 0.00012,
                           (36, 82) => 0.11593,
                           (66, 162) => 0.25475,
                           (58, 142) => 0.11114,
                           (16, 32) => 0.9499,
                           (80, 198) => 0.0997,
                           (44, 101) => 0.1706,
                           (50, 119) => 0.0859,
                           (31, 71) => 0.39892,
                           (37, 87) => 0.2783,
                           (73, 181) => 0.9998799,
                           (91, 231) => 1.0,
                           (28, 61) => 0.011399,
                           (50, 114) => 0.0066,
                           (26, 56) => 0.91754,
                           (24, 50) => 0.04345,
                           (21, 45) => 1.0,
                           (48, 116) => 0.0749,
                           (35, 81) => 0.4931,
                           (52, 122) => 0.0255,
                           (66, 161) => 0.18889,
                           (20, 46) => 4.0e-5,
                           (80, 196) => 0.0015,
                           (42, 94) => 0.0915,
                           (60, 144) => 0.23798,
                           (19, 41) => 0.067302,
                           (75, 187) => 0.626,
                           (71, 176) => 0.02599,
                           (66, 158) => 0.00095,
                           (20, 48) => 0.00187,
                           (70, 171) => 0.1409,
                           (32, 72) => 0.2745,
                           (36, 86) => 0.17279,
                           (49, 113) => 0.0429,
                           (54, 132) => 0.269086,
                           (14, 30) => 0.03092,
                           (60, 145) => 0.08293,
                           (62, 154) => 0.2275,
                           (30, 66) => 0.2773,
                           (32, 76) => 0.0773,
                           (56, 136) => 0.07854,
                           (58, 140) => 0.8845,
                           (7, 14) => 0.99636,
                           (39, 89) => 1.0,
                           (81, 205) => 0.7048,
                           (51, 123) => 0.4279,
                           (63, 153) => 0.5219,
                           (36, 83) => 0.115,
                           (74, 183) => 0.1431)
