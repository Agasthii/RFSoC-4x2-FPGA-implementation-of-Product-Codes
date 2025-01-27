`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 11:01:30 AM
// Design Name: 
// Module Name: bchencoder_16_11
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module bsc(
    input clk,
    input reset,
    input wire [4095:0] seed, // Changed here from 4095 to 8191
    input wire [15:0] cross_prob, // Changed here from 15 to 31
    input  wire [255:0] codeword,
    output reg  [255:0] received

);

//    reg [4095:0] lfsr; // Changed here from 4095 to 8191
//    wire [4095:0] probs; // Changed here from 4095 to 8191
    reg [4095:0] probs;
    reg feedback;

//    interleaver_2048 interleaver_2048_d(
//        .clk(clk),
//        .reset(reset),
//        .in(lfsr[4095:0]),
//        .out(probs[4095:0])
//        );

    //Taps at 137, 136, 133, 126
    always @(posedge clk) begin
        if (reset) begin
            //Update LFSR -> probabilities
            //Taps at 4096, 4095, 4081, 4069
            
            feedback = probs[0];
            probs[4095] = probs[4095] ^ feedback;
            probs[4094] = probs[4094] ^ feedback;
            probs[4080] = probs[4080] ^ feedback;
            probs[4068] = probs[4068] ^ feedback;
            probs = (probs >> 1);
            probs[4095] = feedback;   
            
//            feedback = lfsr[0];
//            lfsr[4095] = lfsr[4095] ^ feedback;
//            lfsr[4094] = lfsr[4094] ^ feedback;
//            lfsr[4080] = lfsr[4080] ^ feedback;
//            lfsr[4068] = lfsr[4068] ^ feedback;
//            lfsr = (lfsr >> 1);
//            lfsr[4095] = feedback;    
            
//            feedback = lfsr[4092];
//            lfsr[8191] = lfsr[8191] ^ feedback;
//            lfsr[8190] = lfsr[8190] ^ feedback;
//            lfsr[8176] = lfsr[8176] ^ feedback;
//            lfsr[8164] = lfsr[8164] ^ feedback;
//            lfsr = (lfsr >> 1);
//            lfsr[8191] = feedback;        
                    
            
            //For each bit
            received[0] = (probs[15:0] >= cross_prob) ? codeword[0] : ~codeword[0]; 
            received[1] = (probs[31:16] >= cross_prob) ? codeword[1] : ~codeword[1]; 
            received[2] = (probs[47:32] >= cross_prob) ? codeword[2] : ~codeword[2]; 
            received[3] = (probs[63:48] >= cross_prob) ? codeword[3] : ~codeword[3]; 
            received[4] = (probs[79:64] >= cross_prob) ? codeword[4] : ~codeword[4]; 
            received[5] = (probs[95:80] >= cross_prob) ? codeword[5] : ~codeword[5]; 
            received[6] = (probs[111:96] >= cross_prob) ? codeword[6] : ~codeword[6]; 
            received[7] = (probs[127:112] >= cross_prob) ? codeword[7] : ~codeword[7]; 
            received[8] = (probs[143:128] >= cross_prob) ? codeword[8] : ~codeword[8]; 
            received[9] = (probs[159:144] >= cross_prob) ? codeword[9] : ~codeword[9]; 
            received[10] = (probs[175:160] >= cross_prob) ? codeword[10] : ~codeword[10]; 
            received[11] = (probs[191:176] >= cross_prob) ? codeword[11] : ~codeword[11]; 
            received[12] = (probs[207:192] >= cross_prob) ? codeword[12] : ~codeword[12]; 
            received[13] = (probs[223:208] >= cross_prob) ? codeword[13] : ~codeword[13]; 
            received[14] = (probs[239:224] >= cross_prob) ? codeword[14] : ~codeword[14]; 
            received[15] = (probs[255:240] >= cross_prob) ? codeword[15] : ~codeword[15]; 
            received[16] = (probs[271:256] >= cross_prob) ? codeword[16] : ~codeword[16]; 
            received[17] = (probs[287:272] >= cross_prob) ? codeword[17] : ~codeword[17]; 
            received[18] = (probs[303:288] >= cross_prob) ? codeword[18] : ~codeword[18]; 
            received[19] = (probs[319:304] >= cross_prob) ? codeword[19] : ~codeword[19]; 
            received[20] = (probs[335:320] >= cross_prob) ? codeword[20] : ~codeword[20]; 
            received[21] = (probs[351:336] >= cross_prob) ? codeword[21] : ~codeword[21]; 
            received[22] = (probs[367:352] >= cross_prob) ? codeword[22] : ~codeword[22]; 
            received[23] = (probs[383:368] >= cross_prob) ? codeword[23] : ~codeword[23]; 
            received[24] = (probs[399:384] >= cross_prob) ? codeword[24] : ~codeword[24]; 
            received[25] = (probs[415:400] >= cross_prob) ? codeword[25] : ~codeword[25]; 
            received[26] = (probs[431:416] >= cross_prob) ? codeword[26] : ~codeword[26]; 
            received[27] = (probs[447:432] >= cross_prob) ? codeword[27] : ~codeword[27]; 
            received[28] = (probs[463:448] >= cross_prob) ? codeword[28] : ~codeword[28]; 
            received[29] = (probs[479:464] >= cross_prob) ? codeword[29] : ~codeword[29]; 
            received[30] = (probs[495:480] >= cross_prob) ? codeword[30] : ~codeword[30]; 
            received[31] = (probs[511:496] >= cross_prob) ? codeword[31] : ~codeword[31]; 
            received[32] = (probs[527:512] >= cross_prob) ? codeword[32] : ~codeword[32]; 
            received[33] = (probs[543:528] >= cross_prob) ? codeword[33] : ~codeword[33]; 
            received[34] = (probs[559:544] >= cross_prob) ? codeword[34] : ~codeword[34]; 
            received[35] = (probs[575:560] >= cross_prob) ? codeword[35] : ~codeword[35]; 
            received[36] = (probs[591:576] >= cross_prob) ? codeword[36] : ~codeword[36]; 
            received[37] = (probs[607:592] >= cross_prob) ? codeword[37] : ~codeword[37]; 
            received[38] = (probs[623:608] >= cross_prob) ? codeword[38] : ~codeword[38]; 
            received[39] = (probs[639:624] >= cross_prob) ? codeword[39] : ~codeword[39]; 
            received[40] = (probs[655:640] >= cross_prob) ? codeword[40] : ~codeword[40]; 
            received[41] = (probs[671:656] >= cross_prob) ? codeword[41] : ~codeword[41]; 
            received[42] = (probs[687:672] >= cross_prob) ? codeword[42] : ~codeword[42]; 
            received[43] = (probs[703:688] >= cross_prob) ? codeword[43] : ~codeword[43]; 
            received[44] = (probs[719:704] >= cross_prob) ? codeword[44] : ~codeword[44]; 
            received[45] = (probs[735:720] >= cross_prob) ? codeword[45] : ~codeword[45]; 
            received[46] = (probs[751:736] >= cross_prob) ? codeword[46] : ~codeword[46]; 
            received[47] = (probs[767:752] >= cross_prob) ? codeword[47] : ~codeword[47]; 
            received[48] = (probs[783:768] >= cross_prob) ? codeword[48] : ~codeword[48]; 
            received[49] = (probs[799:784] >= cross_prob) ? codeword[49] : ~codeword[49]; 
            received[50] = (probs[815:800] >= cross_prob) ? codeword[50] : ~codeword[50]; 
            received[51] = (probs[831:816] >= cross_prob) ? codeword[51] : ~codeword[51]; 
            received[52] = (probs[847:832] >= cross_prob) ? codeword[52] : ~codeword[52]; 
            received[53] = (probs[863:848] >= cross_prob) ? codeword[53] : ~codeword[53]; 
            received[54] = (probs[879:864] >= cross_prob) ? codeword[54] : ~codeword[54]; 
            received[55] = (probs[895:880] >= cross_prob) ? codeword[55] : ~codeword[55]; 
            received[56] = (probs[911:896] >= cross_prob) ? codeword[56] : ~codeword[56]; 
            received[57] = (probs[927:912] >= cross_prob) ? codeword[57] : ~codeword[57]; 
            received[58] = (probs[943:928] >= cross_prob) ? codeword[58] : ~codeword[58]; 
            received[59] = (probs[959:944] >= cross_prob) ? codeword[59] : ~codeword[59]; 
            received[60] = (probs[975:960] >= cross_prob) ? codeword[60] : ~codeword[60]; 
            received[61] = (probs[991:976] >= cross_prob) ? codeword[61] : ~codeword[61]; 
            received[62] = (probs[1007:992] >= cross_prob) ? codeword[62] : ~codeword[62]; 
            received[63] = (probs[1023:1008] >= cross_prob) ? codeword[63] : ~codeword[63]; 
            received[64] = (probs[1039:1024] >= cross_prob) ? codeword[64] : ~codeword[64]; 
            received[65] = (probs[1055:1040] >= cross_prob) ? codeword[65] : ~codeword[65]; 
            received[66] = (probs[1071:1056] >= cross_prob) ? codeword[66] : ~codeword[66]; 
            received[67] = (probs[1087:1072] >= cross_prob) ? codeword[67] : ~codeword[67]; 
            received[68] = (probs[1103:1088] >= cross_prob) ? codeword[68] : ~codeword[68]; 
            received[69] = (probs[1119:1104] >= cross_prob) ? codeword[69] : ~codeword[69]; 
            received[70] = (probs[1135:1120] >= cross_prob) ? codeword[70] : ~codeword[70]; 
            received[71] = (probs[1151:1136] >= cross_prob) ? codeword[71] : ~codeword[71]; 
            received[72] = (probs[1167:1152] >= cross_prob) ? codeword[72] : ~codeword[72]; 
            received[73] = (probs[1183:1168] >= cross_prob) ? codeword[73] : ~codeword[73]; 
            received[74] = (probs[1199:1184] >= cross_prob) ? codeword[74] : ~codeword[74]; 
            received[75] = (probs[1215:1200] >= cross_prob) ? codeword[75] : ~codeword[75]; 
            received[76] = (probs[1231:1216] >= cross_prob) ? codeword[76] : ~codeword[76]; 
            received[77] = (probs[1247:1232] >= cross_prob) ? codeword[77] : ~codeword[77]; 
            received[78] = (probs[1263:1248] >= cross_prob) ? codeword[78] : ~codeword[78]; 
            received[79] = (probs[1279:1264] >= cross_prob) ? codeword[79] : ~codeword[79]; 
            received[80] = (probs[1295:1280] >= cross_prob) ? codeword[80] : ~codeword[80]; 
            received[81] = (probs[1311:1296] >= cross_prob) ? codeword[81] : ~codeword[81]; 
            received[82] = (probs[1327:1312] >= cross_prob) ? codeword[82] : ~codeword[82]; 
            received[83] = (probs[1343:1328] >= cross_prob) ? codeword[83] : ~codeword[83]; 
            received[84] = (probs[1359:1344] >= cross_prob) ? codeword[84] : ~codeword[84]; 
            received[85] = (probs[1375:1360] >= cross_prob) ? codeword[85] : ~codeword[85]; 
            received[86] = (probs[1391:1376] >= cross_prob) ? codeword[86] : ~codeword[86]; 
            received[87] = (probs[1407:1392] >= cross_prob) ? codeword[87] : ~codeword[87]; 
            received[88] = (probs[1423:1408] >= cross_prob) ? codeword[88] : ~codeword[88]; 
            received[89] = (probs[1439:1424] >= cross_prob) ? codeword[89] : ~codeword[89]; 
            received[90] = (probs[1455:1440] >= cross_prob) ? codeword[90] : ~codeword[90]; 
            received[91] = (probs[1471:1456] >= cross_prob) ? codeword[91] : ~codeword[91]; 
            received[92] = (probs[1487:1472] >= cross_prob) ? codeword[92] : ~codeword[92]; 
            received[93] = (probs[1503:1488] >= cross_prob) ? codeword[93] : ~codeword[93]; 
            received[94] = (probs[1519:1504] >= cross_prob) ? codeword[94] : ~codeword[94]; 
            received[95] = (probs[1535:1520] >= cross_prob) ? codeword[95] : ~codeword[95]; 
            received[96] = (probs[1551:1536] >= cross_prob) ? codeword[96] : ~codeword[96]; 
            received[97] = (probs[1567:1552] >= cross_prob) ? codeword[97] : ~codeword[97]; 
            received[98] = (probs[1583:1568] >= cross_prob) ? codeword[98] : ~codeword[98]; 
            received[99] = (probs[1599:1584] >= cross_prob) ? codeword[99] : ~codeword[99]; 
            received[100] = (probs[1615:1600] >= cross_prob) ? codeword[100] : ~codeword[100]; 
            received[101] = (probs[1631:1616] >= cross_prob) ? codeword[101] : ~codeword[101]; 
            received[102] = (probs[1647:1632] >= cross_prob) ? codeword[102] : ~codeword[102]; 
            received[103] = (probs[1663:1648] >= cross_prob) ? codeword[103] : ~codeword[103]; 
            received[104] = (probs[1679:1664] >= cross_prob) ? codeword[104] : ~codeword[104]; 
            received[105] = (probs[1695:1680] >= cross_prob) ? codeword[105] : ~codeword[105]; 
            received[106] = (probs[1711:1696] >= cross_prob) ? codeword[106] : ~codeword[106]; 
            received[107] = (probs[1727:1712] >= cross_prob) ? codeword[107] : ~codeword[107]; 
            received[108] = (probs[1743:1728] >= cross_prob) ? codeword[108] : ~codeword[108]; 
            received[109] = (probs[1759:1744] >= cross_prob) ? codeword[109] : ~codeword[109]; 
            received[110] = (probs[1775:1760] >= cross_prob) ? codeword[110] : ~codeword[110]; 
            received[111] = (probs[1791:1776] >= cross_prob) ? codeword[111] : ~codeword[111]; 
            received[112] = (probs[1807:1792] >= cross_prob) ? codeword[112] : ~codeword[112]; 
            received[113] = (probs[1823:1808] >= cross_prob) ? codeword[113] : ~codeword[113]; 
            received[114] = (probs[1839:1824] >= cross_prob) ? codeword[114] : ~codeword[114]; 
            received[115] = (probs[1855:1840] >= cross_prob) ? codeword[115] : ~codeword[115]; 
            received[116] = (probs[1871:1856] >= cross_prob) ? codeword[116] : ~codeword[116]; 
            received[117] = (probs[1887:1872] >= cross_prob) ? codeword[117] : ~codeword[117]; 
            received[118] = (probs[1903:1888] >= cross_prob) ? codeword[118] : ~codeword[118]; 
            received[119] = (probs[1919:1904] >= cross_prob) ? codeword[119] : ~codeword[119]; 
            received[120] = (probs[1935:1920] >= cross_prob) ? codeword[120] : ~codeword[120]; 
            received[121] = (probs[1951:1936] >= cross_prob) ? codeword[121] : ~codeword[121]; 
            received[122] = (probs[1967:1952] >= cross_prob) ? codeword[122] : ~codeword[122]; 
            received[123] = (probs[1983:1968] >= cross_prob) ? codeword[123] : ~codeword[123]; 
            received[124] = (probs[1999:1984] >= cross_prob) ? codeword[124] : ~codeword[124]; 
            received[125] = (probs[2015:2000] >= cross_prob) ? codeword[125] : ~codeword[125]; 
            received[126] = (probs[2031:2016] >= cross_prob) ? codeword[126] : ~codeword[126]; 
            received[127] = (probs[2047:2032] >= cross_prob) ? codeword[127] : ~codeword[127]; 
            received[128] = (probs[2063:2048] >= cross_prob) ? codeword[128] : ~codeword[128]; 
            received[129] = (probs[2079:2064] >= cross_prob) ? codeword[129] : ~codeword[129]; 
            received[130] = (probs[2095:2080] >= cross_prob) ? codeword[130] : ~codeword[130]; 
            received[131] = (probs[2111:2096] >= cross_prob) ? codeword[131] : ~codeword[131]; 
            received[132] = (probs[2127:2112] >= cross_prob) ? codeword[132] : ~codeword[132]; 
            received[133] = (probs[2143:2128] >= cross_prob) ? codeword[133] : ~codeword[133]; 
            received[134] = (probs[2159:2144] >= cross_prob) ? codeword[134] : ~codeword[134]; 
            received[135] = (probs[2175:2160] >= cross_prob) ? codeword[135] : ~codeword[135]; 
            received[136] = (probs[2191:2176] >= cross_prob) ? codeword[136] : ~codeword[136]; 
            received[137] = (probs[2207:2192] >= cross_prob) ? codeword[137] : ~codeword[137]; 
            received[138] = (probs[2223:2208] >= cross_prob) ? codeword[138] : ~codeword[138]; 
            received[139] = (probs[2239:2224] >= cross_prob) ? codeword[139] : ~codeword[139]; 
            received[140] = (probs[2255:2240] >= cross_prob) ? codeword[140] : ~codeword[140]; 
            received[141] = (probs[2271:2256] >= cross_prob) ? codeword[141] : ~codeword[141]; 
            received[142] = (probs[2287:2272] >= cross_prob) ? codeword[142] : ~codeword[142]; 
            received[143] = (probs[2303:2288] >= cross_prob) ? codeword[143] : ~codeword[143]; 
            received[144] = (probs[2319:2304] >= cross_prob) ? codeword[144] : ~codeword[144]; 
            received[145] = (probs[2335:2320] >= cross_prob) ? codeword[145] : ~codeword[145]; 
            received[146] = (probs[2351:2336] >= cross_prob) ? codeword[146] : ~codeword[146]; 
            received[147] = (probs[2367:2352] >= cross_prob) ? codeword[147] : ~codeword[147]; 
            received[148] = (probs[2383:2368] >= cross_prob) ? codeword[148] : ~codeword[148]; 
            received[149] = (probs[2399:2384] >= cross_prob) ? codeword[149] : ~codeword[149]; 
            received[150] = (probs[2415:2400] >= cross_prob) ? codeword[150] : ~codeword[150]; 
            received[151] = (probs[2431:2416] >= cross_prob) ? codeword[151] : ~codeword[151]; 
            received[152] = (probs[2447:2432] >= cross_prob) ? codeword[152] : ~codeword[152]; 
            received[153] = (probs[2463:2448] >= cross_prob) ? codeword[153] : ~codeword[153]; 
            received[154] = (probs[2479:2464] >= cross_prob) ? codeword[154] : ~codeword[154]; 
            received[155] = (probs[2495:2480] >= cross_prob) ? codeword[155] : ~codeword[155]; 
            received[156] = (probs[2511:2496] >= cross_prob) ? codeword[156] : ~codeword[156]; 
            received[157] = (probs[2527:2512] >= cross_prob) ? codeword[157] : ~codeword[157]; 
            received[158] = (probs[2543:2528] >= cross_prob) ? codeword[158] : ~codeword[158]; 
            received[159] = (probs[2559:2544] >= cross_prob) ? codeword[159] : ~codeword[159]; 
            received[160] = (probs[2575:2560] >= cross_prob) ? codeword[160] : ~codeword[160]; 
            received[161] = (probs[2591:2576] >= cross_prob) ? codeword[161] : ~codeword[161]; 
            received[162] = (probs[2607:2592] >= cross_prob) ? codeword[162] : ~codeword[162]; 
            received[163] = (probs[2623:2608] >= cross_prob) ? codeword[163] : ~codeword[163]; 
            received[164] = (probs[2639:2624] >= cross_prob) ? codeword[164] : ~codeword[164]; 
            received[165] = (probs[2655:2640] >= cross_prob) ? codeword[165] : ~codeword[165]; 
            received[166] = (probs[2671:2656] >= cross_prob) ? codeword[166] : ~codeword[166]; 
            received[167] = (probs[2687:2672] >= cross_prob) ? codeword[167] : ~codeword[167]; 
            received[168] = (probs[2703:2688] >= cross_prob) ? codeword[168] : ~codeword[168]; 
            received[169] = (probs[2719:2704] >= cross_prob) ? codeword[169] : ~codeword[169]; 
            received[170] = (probs[2735:2720] >= cross_prob) ? codeword[170] : ~codeword[170]; 
            received[171] = (probs[2751:2736] >= cross_prob) ? codeword[171] : ~codeword[171]; 
            received[172] = (probs[2767:2752] >= cross_prob) ? codeword[172] : ~codeword[172]; 
            received[173] = (probs[2783:2768] >= cross_prob) ? codeword[173] : ~codeword[173]; 
            received[174] = (probs[2799:2784] >= cross_prob) ? codeword[174] : ~codeword[174]; 
            received[175] = (probs[2815:2800] >= cross_prob) ? codeword[175] : ~codeword[175]; 
            received[176] = (probs[2831:2816] >= cross_prob) ? codeword[176] : ~codeword[176]; 
            received[177] = (probs[2847:2832] >= cross_prob) ? codeword[177] : ~codeword[177]; 
            received[178] = (probs[2863:2848] >= cross_prob) ? codeword[178] : ~codeword[178]; 
            received[179] = (probs[2879:2864] >= cross_prob) ? codeword[179] : ~codeword[179]; 
            received[180] = (probs[2895:2880] >= cross_prob) ? codeword[180] : ~codeword[180]; 
            received[181] = (probs[2911:2896] >= cross_prob) ? codeword[181] : ~codeword[181]; 
            received[182] = (probs[2927:2912] >= cross_prob) ? codeword[182] : ~codeword[182]; 
            received[183] = (probs[2943:2928] >= cross_prob) ? codeword[183] : ~codeword[183]; 
            received[184] = (probs[2959:2944] >= cross_prob) ? codeword[184] : ~codeword[184]; 
            received[185] = (probs[2975:2960] >= cross_prob) ? codeword[185] : ~codeword[185]; 
            received[186] = (probs[2991:2976] >= cross_prob) ? codeword[186] : ~codeword[186]; 
            received[187] = (probs[3007:2992] >= cross_prob) ? codeword[187] : ~codeword[187]; 
            received[188] = (probs[3023:3008] >= cross_prob) ? codeword[188] : ~codeword[188]; 
            received[189] = (probs[3039:3024] >= cross_prob) ? codeword[189] : ~codeword[189]; 
            received[190] = (probs[3055:3040] >= cross_prob) ? codeword[190] : ~codeword[190]; 
            received[191] = (probs[3071:3056] >= cross_prob) ? codeword[191] : ~codeword[191]; 
            received[192] = (probs[3087:3072] >= cross_prob) ? codeword[192] : ~codeword[192]; 
            received[193] = (probs[3103:3088] >= cross_prob) ? codeword[193] : ~codeword[193]; 
            received[194] = (probs[3119:3104] >= cross_prob) ? codeword[194] : ~codeword[194]; 
            received[195] = (probs[3135:3120] >= cross_prob) ? codeword[195] : ~codeword[195]; 
            received[196] = (probs[3151:3136] >= cross_prob) ? codeword[196] : ~codeword[196]; 
            received[197] = (probs[3167:3152] >= cross_prob) ? codeword[197] : ~codeword[197]; 
            received[198] = (probs[3183:3168] >= cross_prob) ? codeword[198] : ~codeword[198]; 
            received[199] = (probs[3199:3184] >= cross_prob) ? codeword[199] : ~codeword[199]; 
            received[200] = (probs[3215:3200] >= cross_prob) ? codeword[200] : ~codeword[200]; 
            received[201] = (probs[3231:3216] >= cross_prob) ? codeword[201] : ~codeword[201]; 
            received[202] = (probs[3247:3232] >= cross_prob) ? codeword[202] : ~codeword[202]; 
            received[203] = (probs[3263:3248] >= cross_prob) ? codeword[203] : ~codeword[203]; 
            received[204] = (probs[3279:3264] >= cross_prob) ? codeword[204] : ~codeword[204]; 
            received[205] = (probs[3295:3280] >= cross_prob) ? codeword[205] : ~codeword[205]; 
            received[206] = (probs[3311:3296] >= cross_prob) ? codeword[206] : ~codeword[206]; 
            received[207] = (probs[3327:3312] >= cross_prob) ? codeword[207] : ~codeword[207]; 
            received[208] = (probs[3343:3328] >= cross_prob) ? codeword[208] : ~codeword[208]; 
            received[209] = (probs[3359:3344] >= cross_prob) ? codeword[209] : ~codeword[209]; 
            received[210] = (probs[3375:3360] >= cross_prob) ? codeword[210] : ~codeword[210]; 
            received[211] = (probs[3391:3376] >= cross_prob) ? codeword[211] : ~codeword[211]; 
            received[212] = (probs[3407:3392] >= cross_prob) ? codeword[212] : ~codeword[212]; 
            received[213] = (probs[3423:3408] >= cross_prob) ? codeword[213] : ~codeword[213]; 
            received[214] = (probs[3439:3424] >= cross_prob) ? codeword[214] : ~codeword[214]; 
            received[215] = (probs[3455:3440] >= cross_prob) ? codeword[215] : ~codeword[215]; 
            received[216] = (probs[3471:3456] >= cross_prob) ? codeword[216] : ~codeword[216]; 
            received[217] = (probs[3487:3472] >= cross_prob) ? codeword[217] : ~codeword[217]; 
            received[218] = (probs[3503:3488] >= cross_prob) ? codeword[218] : ~codeword[218]; 
            received[219] = (probs[3519:3504] >= cross_prob) ? codeword[219] : ~codeword[219]; 
            received[220] = (probs[3535:3520] >= cross_prob) ? codeword[220] : ~codeword[220]; 
            received[221] = (probs[3551:3536] >= cross_prob) ? codeword[221] : ~codeword[221]; 
            received[222] = (probs[3567:3552] >= cross_prob) ? codeword[222] : ~codeword[222]; 
            received[223] = (probs[3583:3568] >= cross_prob) ? codeword[223] : ~codeword[223]; 
            received[224] = (probs[3599:3584] >= cross_prob) ? codeword[224] : ~codeword[224]; 
            received[225] = (probs[3615:3600] >= cross_prob) ? codeword[225] : ~codeword[225]; 
            received[226] = (probs[3631:3616] >= cross_prob) ? codeword[226] : ~codeword[226]; 
            received[227] = (probs[3647:3632] >= cross_prob) ? codeword[227] : ~codeword[227]; 
            received[228] = (probs[3663:3648] >= cross_prob) ? codeword[228] : ~codeword[228]; 
            received[229] = (probs[3679:3664] >= cross_prob) ? codeword[229] : ~codeword[229]; 
            received[230] = (probs[3695:3680] >= cross_prob) ? codeword[230] : ~codeword[230]; 
            received[231] = (probs[3711:3696] >= cross_prob) ? codeword[231] : ~codeword[231]; 
            received[232] = (probs[3727:3712] >= cross_prob) ? codeword[232] : ~codeword[232]; 
            received[233] = (probs[3743:3728] >= cross_prob) ? codeword[233] : ~codeword[233]; 
            received[234] = (probs[3759:3744] >= cross_prob) ? codeword[234] : ~codeword[234]; 
            received[235] = (probs[3775:3760] >= cross_prob) ? codeword[235] : ~codeword[235]; 
            received[236] = (probs[3791:3776] >= cross_prob) ? codeword[236] : ~codeword[236]; 
            received[237] = (probs[3807:3792] >= cross_prob) ? codeword[237] : ~codeword[237]; 
            received[238] = (probs[3823:3808] >= cross_prob) ? codeword[238] : ~codeword[238]; 
            received[239] = (probs[3839:3824] >= cross_prob) ? codeword[239] : ~codeword[239]; 
            received[240] = (probs[3855:3840] >= cross_prob) ? codeword[240] : ~codeword[240]; 
            received[241] = (probs[3871:3856] >= cross_prob) ? codeword[241] : ~codeword[241]; 
            received[242] = (probs[3887:3872] >= cross_prob) ? codeword[242] : ~codeword[242]; 
            received[243] = (probs[3903:3888] >= cross_prob) ? codeword[243] : ~codeword[243]; 
            received[244] = (probs[3919:3904] >= cross_prob) ? codeword[244] : ~codeword[244]; 
            received[245] = (probs[3935:3920] >= cross_prob) ? codeword[245] : ~codeword[245]; 
            received[246] = (probs[3951:3936] >= cross_prob) ? codeword[246] : ~codeword[246]; 
            received[247] = (probs[3967:3952] >= cross_prob) ? codeword[247] : ~codeword[247]; 
            received[248] = (probs[3983:3968] >= cross_prob) ? codeword[248] : ~codeword[248]; 
            received[249] = (probs[3999:3984] >= cross_prob) ? codeword[249] : ~codeword[249]; 
            received[250] = (probs[4015:4000] >= cross_prob) ? codeword[250] : ~codeword[250]; 
            received[251] = (probs[4031:4016] >= cross_prob) ? codeword[251] : ~codeword[251]; 
            received[252] = (probs[4047:4032] >= cross_prob) ? codeword[252] : ~codeword[252]; 
            received[253] = (probs[4063:4048] >= cross_prob) ? codeword[253] : ~codeword[253]; 
            received[254] = (probs[4079:4064] >= cross_prob) ? codeword[254] : ~codeword[254]; 
            received[255] = (probs[4095:4080] >= cross_prob) ? codeword[255] : ~codeword[255]; 
 
 

            
            
        end else begin
            probs = seed;
        end
    
    end




endmodule