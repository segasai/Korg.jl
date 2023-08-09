const atomic_symbols = ["H","He","Li","Be","B","C","N","O","F","Ne",
        "Na","Mg","Al","Si","P","S","Cl","Ar","K","Ca",
        "Sc","Ti","V","Cr","Mn","Fe","Co","Ni","Cu","Zn",
        "Ga","Ge","As","Se","Br","Kr","Rb","Sr","Y","Zr",
        "Nb","Mo","Tc","Ru","Rh","Pd","Ag","Cd","In","Sn",
        "Sb","Te","I","Xe","Cs","Ba","La","Ce","Pr","Nd",
        "Pm","Sm","Eu","Gd","Tb","Dy","Ho","Er","Tm","Yb",
        "Lu","Hf","Ta","W","Re","Os","Ir","Pt","Au","Hg",
        "Tl","Pb","Bi","Po","At","Rn","Fr","Ra","Ac","Th",
        "Pa","U"] #,"Np","Pu","Am"] # we don't have partition funcs for these last three

const MAX_ATOMIC_NUMBER = UInt8(length(atomic_symbols))
const atomic_numbers = Dict(atomic_symbols .=> UInt8.(1:MAX_ATOMIC_NUMBER))

#in grams
const atomic_masses = [
     1.008,4.003,6.941,9.012,10.81,12.01,14.01,16.00,19.00,20.18, 
     22.99,24.31,26.98,28.08,30.97,32.06,35.45,39.95,39.10,40.08,     
     44.96,47.90,50.94,52.00,54.94,55.85,58.93,58.71,63.55,65.37,     
     69.72,72.59,74.92,78.96,79.90,83.80,85.47,87.62,88.91,91.22,     
     92.91,95.94,98.91,101.1,102.9,106.4,107.9,112.4,114.8,118.7,     
     121.8,127.6,126.9,131.3,132.9,137.3,138.9,140.1,140.9,144.2,     
     145.0,150.4,152.0,157.3,158.9,162.5,164.9,167.3,168.9,173.0,     
     175.0,178.5,181.0,183.9,186.2,190.2,192.2,195.1,197.0,200.6,     
     204.4,207.2,209.0,210.0,210.0,222.0,223.0,226.0,227.0,232.0,     
     231.0,238.0].* amu_cgs #,237.0,244.0,243.0] 


#solar/meteoritic abundances per Asplund et al. (2009, Ann. Rev. Ast. Ap., 47, 481).
const asplund_2009_solar_abundances = [
      12.00,10.93, 1.05, 1.38, 2.70, 8.43, 7.83, 8.69, 4.56, 7.93,
      6.24, 7.60, 6.45, 7.51, 5.41, 7.12, 5.50, 6.40, 5.03, 6.34,
      3.15, 4.95, 3.93, 5.64, 5.43, 7.50, 4.99, 6.22, 4.19, 4.56,
      3.04, 3.65, 2.30, 3.34, 2.54, 3.25, 2.52, 2.87, 2.21, 2.58,
      1.46, 1.88,-5.00, 1.75, 0.91, 1.57, 0.94, 1.71, 0.80, 2.04,
      1.01, 2.18, 1.55, 2.24, 1.08, 2.18, 1.10, 1.58, 0.72, 1.42,
     -5.00, 0.96, 0.52, 1.07, 0.30, 1.10, 0.48, 0.92, 0.10, 0.84,
      0.10, 0.85,-0.12, 0.85, 0.26, 1.40, 1.38, 1.62, 0.92, 1.17,
      0.90, 1.75, 0.65,-5.00,-5.00,-5.00,-5.00,-5.00,-5.00, 0.02,
      -5.00,-0.54]#,-5.00,-5.00,-5.00]


#solar/meteoritic abundances per Asplund et al. A&A 653, A141 (2021)
const asplund_2020_solar_abundances = [
        12.00,  10.91, 0.96,  1.38,  2.70,  8.46,  7.83,  8.69,  4.40, 8.06,
         6.22,  7.55,  6.43,  7.51,  5.41,  7.12,  5.31,  6.38,  5.07, 6.30,
         3.14,  4.97,  3.90,  5.62,  5.42,  7.46,  4.94,  6.20,  4.18, 4.56,
         3.02,  3.62,  2.30,  3.34,  2.54,  3.12,  2.32,  2.83,  2.21, 2.59,
         1.47,  1.88, -5.00,  1.75,  0.78,  1.57,  0.96,  1.71,  0.80, 2.02,
         1.01,  2.18,  1.55,  2.22,  1.08,  2.27,  1.11,  1.58,  0.75, 1.42,
        -5.00,  0.95,  0.52,  1.08,  0.31,  1.10,  0.48,  0.93,  0.11, 0.85,
         0.10,  0.85, -0.15,  0.79,  0.26,  1.35,  1.32,  1.61,  0.91, 1.17,
         0.92,  1.95,  0.65, -5.00, -5.00, -5.00, -5.00, -5.00, -5.00, 0.03,
        -5.00, -0.54]

#solar abundances per Grevesse et al. Space Sci Rev (2007) 130: 105–114
const grevesse_2007_solar_abundances = [
        12.00, 10.93,  1.05,  1.38,  2.70,  8.39,  7.78,  8.66,  4.56, 7.84,
         6.17,  7.53,  6.37,  7.51,  5.36,  7.14,  5.50,  6.18,  5.08, 6.31,
         3.17,  4.90,  4.00,  5.64,  5.39,  7.45,  4.92,  6.23,  4.21, 4.60,
         2.88,  3.58,  2.29,  3.33,  2.56,  3.25,  2.60,  2.92,  2.21, 2.58,
         1.42,  1.92, -5.00,  1.84,  1.12,  1.66,  0.94,  1.77,  1.60, 2.00,
         1.00,  2.19,  1.51,  2.24,  1.07,  2.17,  1.13,  1.70,  0.58, 1.45,
        -5.00,  1.00,  0.52,  1.11,  0.28,  1.14,  0.51,  0.93,  0.00, 1.08,
         0.06,  0.88, -0.17,  1.11,  0.23,  1.25,  1.38,  1.64,  1.01, 1.13,
         0.90,  2.00,  0.65, -5.00, -5.00, -5.00, -5.00, -5.00, -5.00, 0.06,
       -05.00, -0.52]

#solar abundances per Magg et al. A&A 661, A140 (2022)
const magg_2022_solar_abundances = [12.0, 10.94, 3.31, 1.44, 2.8, 8.56, 7.98, 8.77, 4.4, 8.15, 6.29, 7.55, 6.43, 7.59, 5.41, 7.16, 5.25, 6.5, 
                             5.14, 6.37, 3.07, 4.94, 3.89, 5.74, 5.52, 7.5, 4.95, 6.24, 4.292, 4.658, 3.126, 3.651, 2.355, 3.388, 
                             2.624, 3.312, 2.388, 2.944, 2.234, 2.624, 1.448, 1.985, -5.0, 1.849, 1.139, 1.727, 1.261, 1.77, 0.828, 2.142, 
                             1.087, 2.253, 1.569, 2.302, 1.135, 2.209, 1.214, 1.638, 0.81, 1.492, -5.0, 0.975, 0.548, 1.091, 0.341, 1.157, 
                             0.524, 0.977, 0.138, 0.965, 0.123, 0.8, -0.108, 0.676, 0.29, 1.399, 1.379, 1.703, 0.861, 1.186, 0.836, 
                             2.083, 0.712, -5.0, -5.0, -5.0, -5.0, -5.0, -5.0 ,0.116, -5.0, -0.461 ]


const default_solar_abundances = asplund_2020_solar_abundances
