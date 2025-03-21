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


module bchencoder_256_239#(
    parameter len = 512, // length of the seed
    parameter n = 256, // length of the encoded
    parameter k = 239 // length of the original
    )(
    input clk,
    input reset,
    input wire [k-1:0] bits,
    output reg [n-1:0] codeword
    );
    
    always @(posedge clk) begin
        if(reset) begin
            codeword[238:0] <= bits;
            
            codeword[239] <= bits[0] ^ bits[2] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[6] ^ bits[8] ^ bits[13] ^ bits[15] ^ bits[16] ^ bits[17] ^ bits[20] ^ bits[21] ^ bits[22] ^ bits[23] ^ bits[25] ^ bits[26] ^ bits[29] ^ bits[30] ^ bits[34] ^ bits[36] ^ bits[41] ^ bits[42] ^ bits[44] ^ bits[50] ^ bits[51] ^ bits[52] ^ bits[53] ^ bits[54] ^ bits[56] ^ bits[60] ^ bits[61] ^ bits[62] ^ bits[63] ^ bits[64] ^ bits[65] ^ bits[66] ^ bits[69] ^ bits[72] ^ bits[74] ^ bits[75] ^ bits[77] ^ bits[80] ^ bits[84] ^ bits[85] ^ bits[86] ^ bits[87] ^ bits[88] ^ bits[90] ^ bits[96] ^ bits[97] ^ bits[104] ^ bits[106] ^ bits[107] ^ bits[109] ^ bits[113] ^ bits[116] ^ bits[117] ^ bits[118] ^ bits[119] ^ bits[120] ^ bits[121] ^ bits[123] ^ bits[124] ^ bits[126] ^ bits[128] ^ bits[129] ^ bits[130] ^ bits[132] ^ bits[135] ^ bits[138] ^ bits[139] ^ bits[141] ^ bits[143] ^ bits[144] ^ bits[146] ^ bits[148] ^ bits[150] ^ bits[153] ^ bits[155] ^ bits[156] ^ bits[159] ^ bits[165] ^ bits[167] ^ bits[169] ^ bits[174] ^ bits[176] ^ bits[177] ^ bits[181] ^ bits[184] ^ bits[185] ^ bits[186] ^ bits[187] ^ bits[189] ^ bits[198] ^ bits[201] ^ bits[203] ^ bits[204] ^ bits[205] ^ bits[207] ^ bits[209] ^ bits[211] ^ bits[212] ^ bits[213] ^ bits[214] ^ bits[218] ^ bits[219] ^ bits[220] ^ bits[223] ^ bits[224] ^ bits[227] ^ bits[228] ^ bits[229] ^ bits[230] ^ bits[231] ^ bits[235] ^ bits[236] ^ bits[237] ^ bits[238];
            codeword[240] <= bits[0] ^ bits[1] ^ bits[2] ^ bits[7] ^ bits[8] ^ bits[9] ^ bits[13] ^ bits[14] ^ bits[15] ^ bits[18] ^ bits[20] ^ bits[24] ^ bits[25] ^ bits[27] ^ bits[29] ^ bits[31] ^ bits[34] ^ bits[35] ^ bits[36] ^ bits[37] ^ bits[41] ^ bits[43] ^ bits[44] ^ bits[45] ^ bits[50] ^ bits[55] ^ bits[56] ^ bits[57] ^ bits[60] ^ bits[67] ^ bits[69] ^ bits[70] ^ bits[72] ^ bits[73] ^ bits[74] ^ bits[76] ^ bits[77] ^ bits[78] ^ bits[80] ^ bits[81] ^ bits[84] ^ bits[89] ^ bits[90] ^ bits[91] ^ bits[96] ^ bits[98] ^ bits[104] ^ bits[105] ^ bits[106] ^ bits[108] ^ bits[109] ^ bits[110] ^ bits[113] ^ bits[114] ^ bits[116] ^ bits[122] ^ bits[123] ^ bits[125] ^ bits[126] ^ bits[127] ^ bits[128] ^ bits[131] ^ bits[132] ^ bits[133] ^ bits[135] ^ bits[136] ^ bits[138] ^ bits[140] ^ bits[141] ^ bits[142] ^ bits[143] ^ bits[145] ^ bits[146] ^ bits[147] ^ bits[148] ^ bits[149] ^ bits[150] ^ bits[151] ^ bits[153] ^ bits[154] ^ bits[155] ^ bits[157] ^ bits[159] ^ bits[160] ^ bits[165] ^ bits[166] ^ bits[167] ^ bits[168] ^ bits[169] ^ bits[170] ^ bits[174] ^ bits[175] ^ bits[176] ^ bits[178] ^ bits[181] ^ bits[182] ^ bits[184] ^ bits[188] ^ bits[189] ^ bits[190] ^ bits[198] ^ bits[199] ^ bits[201] ^ bits[202] ^ bits[203] ^ bits[206] ^ bits[207] ^ bits[208] ^ bits[209] ^ bits[210] ^ bits[211] ^ bits[215] ^ bits[218] ^ bits[221] ^ bits[223] ^ bits[225] ^ bits[227] ^ bits[232] ^ bits[235]; 
            codeword[241] <= bits[1] ^ bits[2] ^ bits[3] ^ bits[8] ^ bits[9] ^ bits[10] ^ bits[14] ^ bits[15] ^ bits[16] ^ bits[19] ^ bits[21] ^ bits[25] ^ bits[26] ^ bits[28] ^ bits[30] ^ bits[32] ^ bits[35] ^ bits[36] ^ bits[37] ^ bits[38] ^ bits[42] ^ bits[44] ^ bits[45] ^ bits[46] ^ bits[51] ^ bits[56] ^ bits[57] ^ bits[58] ^ bits[61] ^ bits[68] ^ bits[70] ^ bits[71] ^ bits[73] ^ bits[74] ^ bits[75] ^ bits[77] ^ bits[78] ^ bits[79] ^ bits[81] ^ bits[82] ^ bits[85] ^ bits[90] ^ bits[91] ^ bits[92] ^ bits[97] ^ bits[99] ^ bits[105] ^ bits[106] ^ bits[107] ^ bits[109] ^ bits[110] ^ bits[111] ^ bits[114] ^ bits[115] ^ bits[117] ^ bits[123] ^ bits[124] ^ bits[126] ^ bits[127] ^ bits[128] ^ bits[129] ^ bits[132] ^ bits[133] ^ bits[134] ^ bits[136] ^ bits[137] ^ bits[139] ^ bits[141] ^ bits[142] ^ bits[143] ^ bits[144] ^ bits[146] ^ bits[147] ^ bits[148] ^ bits[149] ^ bits[150] ^ bits[151] ^ bits[152] ^ bits[154] ^ bits[155] ^ bits[156] ^ bits[158] ^ bits[160] ^ bits[161] ^ bits[166] ^ bits[167] ^ bits[168] ^ bits[169] ^ bits[170] ^ bits[171] ^ bits[175] ^ bits[176] ^ bits[177] ^ bits[179] ^ bits[182] ^ bits[183] ^ bits[185] ^ bits[189] ^ bits[190] ^ bits[191] ^ bits[199] ^ bits[200] ^ bits[202] ^ bits[203] ^ bits[204] ^ bits[207] ^ bits[208] ^ bits[209] ^ bits[210] ^ bits[211] ^ bits[212] ^ bits[216] ^ bits[219] ^ bits[222] ^ bits[224] ^ bits[226] ^ bits[228] ^ bits[233] ^ bits[236];
            codeword[242] <= bits[2] ^ bits[3] ^ bits[4] ^ bits[9] ^ bits[10] ^ bits[11] ^ bits[15] ^ bits[16] ^ bits[17] ^ bits[20] ^ bits[22] ^ bits[26] ^ bits[27] ^ bits[29] ^ bits[31] ^ bits[33] ^ bits[36] ^ bits[37] ^ bits[38] ^ bits[39] ^ bits[43] ^ bits[45] ^ bits[46] ^ bits[47] ^ bits[52] ^ bits[57] ^ bits[58] ^ bits[59] ^ bits[62] ^ bits[69] ^ bits[71] ^ bits[72] ^ bits[74] ^ bits[75] ^ bits[76] ^ bits[78] ^ bits[79] ^ bits[80] ^ bits[82] ^ bits[83] ^ bits[86] ^ bits[91] ^ bits[92] ^ bits[93] ^ bits[98] ^ bits[100] ^ bits[106] ^ bits[107] ^ bits[108] ^ bits[110] ^ bits[111] ^ bits[112] ^ bits[115] ^ bits[116] ^ bits[118] ^ bits[124] ^ bits[125] ^ bits[127] ^ bits[128] ^ bits[129] ^ bits[130] ^ bits[133] ^ bits[134] ^ bits[135] ^ bits[137] ^ bits[138] ^ bits[140] ^ bits[142] ^ bits[143] ^ bits[144] ^ bits[145] ^ bits[147] ^ bits[148] ^ bits[149] ^ bits[150] ^ bits[151] ^ bits[152] ^ bits[153] ^ bits[155] ^ bits[156] ^ bits[157] ^ bits[159] ^ bits[161] ^ bits[162] ^ bits[167] ^ bits[168] ^ bits[169] ^ bits[170] ^ bits[171] ^ bits[172] ^ bits[176] ^ bits[177] ^ bits[178] ^ bits[180] ^ bits[183] ^ bits[184] ^ bits[186] ^ bits[190] ^ bits[191] ^ bits[192] ^ bits[200] ^ bits[201] ^ bits[203] ^ bits[204] ^ bits[205] ^ bits[208] ^ bits[209] ^ bits[210] ^ bits[211] ^ bits[212] ^ bits[213] ^ bits[217] ^ bits[220] ^ bits[223] ^ bits[225] ^ bits[227] ^ bits[229] ^ bits[234] ^ bits[237];
            codeword[243] <= bits[3] ^ bits[4] ^ bits[5] ^ bits[10] ^ bits[11] ^ bits[12] ^ bits[16] ^ bits[17] ^ bits[18] ^ bits[21] ^ bits[23] ^ bits[27] ^ bits[28] ^ bits[30] ^ bits[32] ^ bits[34] ^ bits[37] ^ bits[38] ^ bits[39] ^ bits[40] ^ bits[44] ^ bits[46] ^ bits[47] ^ bits[48] ^ bits[53] ^ bits[58] ^ bits[59] ^ bits[60] ^ bits[63] ^ bits[70] ^ bits[72] ^ bits[73] ^ bits[75] ^ bits[76] ^ bits[77] ^ bits[79] ^ bits[80] ^ bits[81] ^ bits[83] ^ bits[84] ^ bits[87] ^ bits[92] ^ bits[93] ^ bits[94] ^ bits[99] ^ bits[101] ^ bits[107] ^ bits[108] ^ bits[109] ^ bits[111] ^ bits[112] ^ bits[113] ^ bits[116] ^ bits[117] ^ bits[119] ^ bits[125] ^ bits[126] ^ bits[128] ^ bits[129] ^ bits[130] ^ bits[131] ^ bits[134] ^ bits[135] ^ bits[136] ^ bits[138] ^ bits[139] ^ bits[141] ^ bits[143] ^ bits[144] ^ bits[145] ^ bits[146] ^ bits[148] ^ bits[149] ^ bits[150] ^ bits[151] ^ bits[152] ^ bits[153] ^ bits[154] ^ bits[156] ^ bits[157] ^ bits[158] ^ bits[160] ^ bits[162] ^ bits[163] ^ bits[168] ^ bits[169] ^ bits[170] ^ bits[171] ^ bits[172] ^ bits[173] ^ bits[177] ^ bits[178] ^ bits[179] ^ bits[181] ^ bits[184] ^ bits[185] ^ bits[187] ^ bits[191] ^ bits[192] ^ bits[193] ^ bits[201] ^ bits[202] ^ bits[204] ^ bits[205] ^ bits[206] ^ bits[209] ^ bits[210] ^ bits[211] ^ bits[212] ^ bits[213] ^ bits[214] ^ bits[218] ^ bits[221] ^ bits[224] ^ bits[226] ^ bits[228] ^ bits[230] ^ bits[235] ^ bits[238];
            codeword[244] <= bits[0] ^ bits[2] ^ bits[3] ^ bits[8] ^ bits[11] ^ bits[12] ^ bits[15] ^ bits[16] ^ bits[18] ^ bits[19] ^ bits[20] ^ bits[21] ^ bits[23] ^ bits[24] ^ bits[25] ^ bits[26] ^ bits[28] ^ bits[30] ^ bits[31] ^ bits[33] ^ bits[34] ^ bits[35] ^ bits[36] ^ bits[38] ^ bits[39] ^ bits[40] ^ bits[42] ^ bits[44] ^ bits[45] ^ bits[47] ^ bits[48] ^ bits[49] ^ bits[50] ^ bits[51] ^ bits[52] ^ bits[53] ^ bits[56] ^ bits[59] ^ bits[62] ^ bits[63] ^ bits[65] ^ bits[66] ^ bits[69] ^ bits[71] ^ bits[72] ^ bits[73] ^ bits[75] ^ bits[76] ^ bits[78] ^ bits[81] ^ bits[82] ^ bits[86] ^ bits[87] ^ bits[90] ^ bits[93] ^ bits[94] ^ bits[95] ^ bits[96] ^ bits[97] ^ bits[100] ^ bits[102] ^ bits[104] ^ bits[106] ^ bits[107] ^ bits[108] ^ bits[110] ^ bits[112] ^ bits[114] ^ bits[116] ^ bits[119] ^ bits[121] ^ bits[123] ^ bits[124] ^ bits[127] ^ bits[128] ^ bits[131] ^ bits[136] ^ bits[137] ^ bits[138] ^ bits[140] ^ bits[141] ^ bits[142] ^ bits[143] ^ bits[145] ^ bits[147] ^ bits[148] ^ bits[149] ^ bits[151] ^ bits[152] ^ bits[154] ^ bits[156] ^ bits[157] ^ bits[158] ^ bits[161] ^ bits[163] ^ bits[164] ^ bits[165] ^ bits[167] ^ bits[170] ^ bits[171] ^ bits[172] ^ bits[173] ^ bits[176] ^ bits[177] ^ bits[178] ^ bits[179] ^ bits[180] ^ bits[181] ^ bits[182] ^ bits[184] ^ bits[187] ^ bits[188] ^ bits[189] ^ bits[192] ^ bits[193] ^ bits[194] ^ bits[198] ^ bits[201] ^ bits[202] ^ bits[204] ^ bits[206] ^ bits[209] ^ bits[210] ^ bits[215] ^ bits[218] ^ bits[220] ^ bits[222] ^ bits[223] ^ bits[224] ^ bits[225] ^ bits[228] ^ bits[230] ^ bits[235] ^ bits[237] ^ bits[238];
            codeword[245] <= bits[0] ^ bits[1] ^ bits[2] ^ bits[5] ^ bits[6] ^ bits[8] ^ bits[9] ^ bits[12] ^ bits[15] ^ bits[19] ^ bits[23] ^ bits[24] ^ bits[27] ^ bits[30] ^ bits[31] ^ bits[32] ^ bits[35] ^ bits[37] ^ bits[39] ^ bits[40] ^ bits[42] ^ bits[43] ^ bits[44] ^ bits[45] ^ bits[46] ^ bits[48] ^ bits[49] ^ bits[56] ^ bits[57] ^ bits[61] ^ bits[62] ^ bits[65] ^ bits[67] ^ bits[69] ^ bits[70] ^ bits[73] ^ bits[75] ^ bits[76] ^ bits[79] ^ bits[80] ^ bits[82] ^ bits[83] ^ bits[84] ^ bits[85] ^ bits[86] ^ bits[90] ^ bits[91] ^ bits[94] ^ bits[95] ^ bits[98] ^ bits[101] ^ bits[103] ^ bits[104] ^ bits[105] ^ bits[106] ^ bits[108] ^ bits[111] ^ bits[115] ^ bits[116] ^ bits[118] ^ bits[119] ^ bits[121] ^ bits[122] ^ bits[123] ^ bits[125] ^ bits[126] ^ bits[130] ^ bits[135] ^ bits[137] ^ bits[142] ^ bits[149] ^ bits[152] ^ bits[156] ^ bits[157] ^ bits[158] ^ bits[162] ^ bits[164] ^ bits[166] ^ bits[167] ^ bits[168] ^ bits[169] ^ bits[171] ^ bits[172] ^ bits[173] ^ bits[176] ^ bits[178] ^ bits[179] ^ bits[180] ^ bits[182] ^ bits[183] ^ bits[184] ^ bits[186] ^ bits[187] ^ bits[188] ^ bits[190] ^ bits[193] ^ bits[194] ^ bits[195] ^ bits[198] ^ bits[199] ^ bits[201] ^ bits[202] ^ bits[204] ^ bits[209] ^ bits[210] ^ bits[212] ^ bits[213] ^ bits[214] ^ bits[216] ^ bits[218] ^ bits[220] ^ bits[221] ^ bits[225] ^ bits[226] ^ bits[227] ^ bits[228] ^ bits[230] ^ bits[235] ^ bits[237];
            codeword[246] <= bits[1] ^ bits[2] ^ bits[3] ^ bits[6] ^ bits[7] ^ bits[9] ^ bits[10] ^ bits[13] ^ bits[16] ^ bits[20] ^ bits[24] ^ bits[25] ^ bits[28] ^ bits[31] ^ bits[32] ^ bits[33] ^ bits[36] ^ bits[38] ^ bits[40] ^ bits[41] ^ bits[43] ^ bits[44] ^ bits[45] ^ bits[46] ^ bits[47] ^ bits[49] ^ bits[50] ^ bits[57] ^ bits[58] ^ bits[62] ^ bits[63] ^ bits[66] ^ bits[68] ^ bits[70] ^ bits[71] ^ bits[74] ^ bits[76] ^ bits[77] ^ bits[80] ^ bits[81] ^ bits[83] ^ bits[84] ^ bits[85] ^ bits[86] ^ bits[87] ^ bits[91] ^ bits[92] ^ bits[95] ^ bits[96] ^ bits[99] ^ bits[102] ^ bits[104] ^ bits[105] ^ bits[106] ^ bits[107] ^ bits[109] ^ bits[112] ^ bits[116] ^ bits[117] ^ bits[119] ^ bits[120] ^ bits[122] ^ bits[123] ^ bits[124] ^ bits[126] ^ bits[127] ^ bits[131] ^ bits[136] ^ bits[138] ^ bits[143] ^ bits[150] ^ bits[153] ^ bits[157] ^ bits[158] ^ bits[159] ^ bits[163] ^ bits[165] ^ bits[167] ^ bits[168] ^ bits[169] ^ bits[170] ^ bits[172] ^ bits[173] ^ bits[174] ^ bits[177] ^ bits[179] ^ bits[180] ^ bits[181] ^ bits[183] ^ bits[184] ^ bits[185] ^ bits[187] ^ bits[188] ^ bits[189] ^ bits[191] ^ bits[194] ^ bits[195] ^ bits[196] ^ bits[199] ^ bits[200] ^ bits[202] ^ bits[203] ^ bits[205] ^ bits[210] ^ bits[211] ^ bits[213] ^ bits[214] ^ bits[215] ^ bits[217] ^ bits[219] ^ bits[221] ^ bits[222] ^ bits[226] ^ bits[227] ^ bits[228] ^ bits[229] ^ bits[231] ^ bits[236] ^ bits[238];
            codeword[247] <= bits[0] ^ bits[5] ^ bits[6] ^ bits[7] ^ bits[10] ^ bits[11] ^ bits[13] ^ bits[14] ^ bits[15] ^ bits[16] ^ bits[20] ^ bits[22] ^ bits[23] ^ bits[30] ^ bits[32] ^ bits[33] ^ bits[36] ^ bits[37] ^ bits[39] ^ bits[45] ^ bits[46] ^ bits[47] ^ bits[48] ^ bits[52] ^ bits[53] ^ bits[54] ^ bits[56] ^ bits[58] ^ bits[59] ^ bits[60] ^ bits[61] ^ bits[62] ^ bits[65] ^ bits[66] ^ bits[67] ^ bits[71] ^ bits[74] ^ bits[78] ^ bits[80] ^ bits[81] ^ bits[82] ^ bits[90] ^ bits[92] ^ bits[93] ^ bits[100] ^ bits[103] ^ bits[104] ^ bits[105] ^ bits[108] ^ bits[109] ^ bits[110] ^ bits[116] ^ bits[119] ^ bits[125] ^ bits[126] ^ bits[127] ^ bits[129] ^ bits[130] ^ bits[135] ^ bits[137] ^ bits[138] ^ bits[141] ^ bits[143] ^ bits[146] ^ bits[148] ^ bits[150] ^ bits[151] ^ bits[153] ^ bits[154] ^ bits[155] ^ bits[156] ^ bits[158] ^ bits[160] ^ bits[164] ^ bits[165] ^ bits[166] ^ bits[167] ^ bits[168] ^ bits[170] ^ bits[171] ^ bits[173] ^ bits[175] ^ bits[176] ^ bits[177] ^ bits[178] ^ bits[180] ^ bits[182] ^ bits[187] ^ bits[188] ^ bits[190] ^ bits[192] ^ bits[195] ^ bits[196] ^ bits[197] ^ bits[198] ^ bits[200] ^ bits[205] ^ bits[206] ^ bits[207] ^ bits[209] ^ bits[213] ^ bits[215] ^ bits[216] ^ bits[219] ^ bits[222] ^ bits[224] ^ bits[231] ^ bits[232] ^ bits[235] ^ bits[236] ^ bits[238];
            codeword[248] <= bits[0] ^ bits[1] ^ bits[2] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[7] ^ bits[11] ^ bits[12] ^ bits[13] ^ bits[14] ^ bits[20] ^ bits[22] ^ bits[24] ^ bits[25] ^ bits[26] ^ bits[29] ^ bits[30] ^ bits[31] ^ bits[33] ^ bits[36] ^ bits[37] ^ bits[38] ^ bits[40] ^ bits[41] ^ bits[42] ^ bits[44] ^ bits[46] ^ bits[47] ^ bits[48] ^ bits[49] ^ bits[50] ^ bits[51] ^ bits[52] ^ bits[55] ^ bits[56] ^ bits[57] ^ bits[59] ^ bits[64] ^ bits[65] ^ bits[67] ^ bits[68] ^ bits[69] ^ bits[74] ^ bits[77] ^ bits[79] ^ bits[80] ^ bits[81] ^ bits[82] ^ bits[83] ^ bits[84] ^ bits[85] ^ bits[86] ^ bits[87] ^ bits[88] ^ bits[90] ^ bits[91] ^ bits[93] ^ bits[94] ^ bits[96] ^ bits[97] ^ bits[101] ^ bits[105] ^ bits[107] ^ bits[110] ^ bits[111] ^ bits[113] ^ bits[116] ^ bits[118] ^ bits[119] ^ bits[121] ^ bits[123] ^ bits[124] ^ bits[127] ^ bits[129] ^ bits[131] ^ bits[132] ^ bits[135] ^ bits[136] ^ bits[141] ^ bits[142] ^ bits[143] ^ bits[146] ^ bits[147] ^ bits[148] ^ bits[149] ^ bits[150] ^ bits[151] ^ bits[152] ^ bits[153] ^ bits[154] ^ bits[157] ^ bits[161] ^ bits[166] ^ bits[168] ^ bits[171] ^ bits[172] ^ bits[178] ^ bits[179] ^ bits[183] ^ bits[184] ^ bits[185] ^ bits[186] ^ bits[187] ^ bits[188] ^ bits[191] ^ bits[193] ^ bits[196] ^ bits[197] ^ bits[199] ^ bits[203] ^ bits[204] ^ bits[205] ^ bits[206] ^ bits[208] ^ bits[209] ^ bits[210] ^ bits[211] ^ bits[212] ^ bits[213] ^ bits[216] ^ bits[217] ^ bits[218] ^ bits[219] ^ bits[224] ^ bits[225] ^ bits[227] ^ bits[228] ^ bits[229] ^ bits[230] ^ bits[231] ^ bits[232] ^ bits[233] ^ bits[235] ^ bits[238];
            codeword[249] <= bits[0] ^ bits[1] ^ bits[12] ^ bits[14] ^ bits[16] ^ bits[17] ^ bits[20] ^ bits[22] ^ bits[27] ^ bits[29] ^ bits[31] ^ bits[32] ^ bits[36] ^ bits[37] ^ bits[38] ^ bits[39] ^ bits[43] ^ bits[44] ^ bits[45] ^ bits[47] ^ bits[48] ^ bits[49] ^ bits[54] ^ bits[57] ^ bits[58] ^ bits[61] ^ bits[62] ^ bits[63] ^ bits[64] ^ bits[68] ^ bits[70] ^ bits[72] ^ bits[74] ^ bits[77] ^ bits[78] ^ bits[81] ^ bits[82] ^ bits[83] ^ bits[89] ^ bits[90] ^ bits[91] ^ bits[92] ^ bits[94] ^ bits[95] ^ bits[96] ^ bits[98] ^ bits[102] ^ bits[104] ^ bits[107] ^ bits[108] ^ bits[109] ^ bits[111] ^ bits[112] ^ bits[113] ^ bits[114] ^ bits[116] ^ bits[118] ^ bits[121] ^ bits[122] ^ bits[123] ^ bits[125] ^ bits[126] ^ bits[129] ^ bits[133] ^ bits[135] ^ bits[136] ^ bits[137] ^ bits[138] ^ bits[139] ^ bits[141] ^ bits[142] ^ bits[146] ^ bits[147] ^ bits[149] ^ bits[151] ^ bits[152] ^ bits[154] ^ bits[156] ^ bits[158] ^ bits[159] ^ bits[162] ^ bits[165] ^ bits[172] ^ bits[173] ^ bits[174] ^ bits[176] ^ bits[177] ^ bits[179] ^ bits[180] ^ bits[181] ^ bits[188] ^ bits[192] ^ bits[194] ^ bits[197] ^ bits[200] ^ bits[201] ^ bits[203] ^ bits[206] ^ bits[210] ^ bits[217] ^ bits[223] ^ bits[224] ^ bits[225] ^ bits[226] ^ bits[227] ^ bits[232] ^ bits[233] ^ bits[234] ^ bits[235] ^ bits[237] ^ bits[238];
            codeword[250] <= bits[0] ^ bits[1] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[6] ^ bits[8] ^ bits[16] ^ bits[18] ^ bits[20] ^ bits[22] ^ bits[25] ^ bits[26] ^ bits[28] ^ bits[29] ^ bits[32] ^ bits[33] ^ bits[34] ^ bits[36] ^ bits[37] ^ bits[38] ^ bits[39] ^ bits[40] ^ bits[41] ^ bits[42] ^ bits[45] ^ bits[46] ^ bits[48] ^ bits[49] ^ bits[51] ^ bits[52] ^ bits[53] ^ bits[54] ^ bits[55] ^ bits[56] ^ bits[58] ^ bits[59] ^ bits[60] ^ bits[61] ^ bits[66] ^ bits[71] ^ bits[72] ^ bits[73] ^ bits[74] ^ bits[77] ^ bits[78] ^ bits[79] ^ bits[80] ^ bits[82] ^ bits[83] ^ bits[85] ^ bits[86] ^ bits[87] ^ bits[88] ^ bits[91] ^ bits[92] ^ bits[93] ^ bits[95] ^ bits[99] ^ bits[103] ^ bits[104] ^ bits[105] ^ bits[106] ^ bits[107] ^ bits[108] ^ bits[110] ^ bits[112] ^ bits[114] ^ bits[115] ^ bits[116] ^ bits[118] ^ bits[120] ^ bits[121] ^ bits[122] ^ bits[127] ^ bits[128] ^ bits[129] ^ bits[132] ^ bits[134] ^ bits[135] ^ bits[136] ^ bits[137] ^ bits[140] ^ bits[141] ^ bits[142] ^ bits[144] ^ bits[146] ^ bits[147] ^ bits[152] ^ bits[156] ^ bits[157] ^ bits[160] ^ bits[163] ^ bits[165] ^ bits[166] ^ bits[167] ^ bits[169] ^ bits[173] ^ bits[175] ^ bits[176] ^ bits[178] ^ bits[180] ^ bits[182] ^ bits[184] ^ bits[185] ^ bits[186] ^ bits[187] ^ bits[193] ^ bits[195] ^ bits[202] ^ bits[203] ^ bits[205] ^ bits[209] ^ bits[212] ^ bits[213] ^ bits[214] ^ bits[219] ^ bits[220] ^ bits[223] ^ bits[225] ^ bits[226] ^ bits[229] ^ bits[230] ^ bits[231] ^ bits[233] ^ bits[234] ^ bits[237];
            codeword[251] <= bits[1] ^ bits[2] ^ bits[4] ^ bits[5] ^ bits[6] ^ bits[7] ^ bits[9] ^ bits[17] ^ bits[19] ^ bits[21] ^ bits[23] ^ bits[26] ^ bits[27] ^ bits[29] ^ bits[30] ^ bits[33] ^ bits[34] ^ bits[35] ^ bits[37] ^ bits[38] ^ bits[39] ^ bits[40] ^ bits[41] ^ bits[42] ^ bits[43] ^ bits[46] ^ bits[47] ^ bits[49] ^ bits[50] ^ bits[52] ^ bits[53] ^ bits[54] ^ bits[55] ^ bits[56] ^ bits[57] ^ bits[59] ^ bits[60] ^ bits[61] ^ bits[62] ^ bits[67] ^ bits[72] ^ bits[73] ^ bits[74] ^ bits[75] ^ bits[78] ^ bits[79] ^ bits[80] ^ bits[81] ^ bits[83] ^ bits[84] ^ bits[86] ^ bits[87] ^ bits[88] ^ bits[89] ^ bits[92] ^ bits[93] ^ bits[94] ^ bits[96] ^ bits[100] ^ bits[104] ^ bits[105] ^ bits[106] ^ bits[107] ^ bits[108] ^ bits[109] ^ bits[111] ^ bits[113] ^ bits[115] ^ bits[116] ^ bits[117] ^ bits[119] ^ bits[121] ^ bits[122] ^ bits[123] ^ bits[128] ^ bits[129] ^ bits[130] ^ bits[133] ^ bits[135] ^ bits[136] ^ bits[137] ^ bits[138] ^ bits[141] ^ bits[142] ^ bits[143] ^ bits[145] ^ bits[147] ^ bits[148] ^ bits[153] ^ bits[157] ^ bits[158] ^ bits[161] ^ bits[164] ^ bits[166] ^ bits[167] ^ bits[168] ^ bits[170] ^ bits[174] ^ bits[176] ^ bits[177] ^ bits[179] ^ bits[181] ^ bits[183] ^ bits[185] ^ bits[186] ^ bits[187] ^ bits[188] ^ bits[194] ^ bits[196] ^ bits[203] ^ bits[204] ^ bits[206] ^ bits[210] ^ bits[213] ^ bits[214] ^ bits[215] ^ bits[220] ^ bits[221] ^ bits[224] ^ bits[226] ^ bits[227] ^ bits[230] ^ bits[231] ^ bits[232] ^ bits[234] ^ bits[235] ^ bits[238]; 
            codeword[252] <= bits[0] ^ bits[4] ^ bits[7] ^ bits[10] ^ bits[13] ^ bits[15] ^ bits[16] ^ bits[17] ^ bits[18] ^ bits[21] ^ bits[23] ^ bits[24] ^ bits[25] ^ bits[26] ^ bits[27] ^ bits[28] ^ bits[29] ^ bits[31] ^ bits[35] ^ bits[38] ^ bits[39] ^ bits[40] ^ bits[43] ^ bits[47] ^ bits[48] ^ bits[52] ^ bits[55] ^ bits[57] ^ bits[58] ^ bits[64] ^ bits[65] ^ bits[66] ^ bits[68] ^ bits[69] ^ bits[72] ^ bits[73] ^ bits[76] ^ bits[77] ^ bits[79] ^ bits[81] ^ bits[82] ^ bits[86] ^ bits[89] ^ bits[93] ^ bits[94] ^ bits[95] ^ bits[96] ^ bits[101] ^ bits[104] ^ bits[105] ^ bits[108] ^ bits[110] ^ bits[112] ^ bits[113] ^ bits[114] ^ bits[119] ^ bits[121] ^ bits[122] ^ bits[126] ^ bits[128] ^ bits[131] ^ bits[132] ^ bits[134] ^ bits[135] ^ bits[136] ^ bits[137] ^ bits[141] ^ bits[142] ^ bits[149] ^ bits[150] ^ bits[153] ^ bits[154] ^ bits[155] ^ bits[156] ^ bits[158] ^ bits[162] ^ bits[168] ^ bits[171] ^ bits[174] ^ bits[175] ^ bits[176] ^ bits[178] ^ bits[180] ^ bits[181] ^ bits[182] ^ bits[185] ^ bits[188] ^ bits[195] ^ bits[197] ^ bits[198] ^ bits[201] ^ bits[203] ^ bits[209] ^ bits[212] ^ bits[213] ^ bits[215] ^ bits[216] ^ bits[218] ^ bits[219] ^ bits[220] ^ bits[221] ^ bits[222] ^ bits[223] ^ bits[224] ^ bits[225] ^ bits[229] ^ bits[230] ^ bits[232] ^ bits[233] ^ bits[237] ^ bits[238]; 
            codeword[253] <= bits[0] ^ bits[1] ^ bits[2] ^ bits[3] ^ bits[4] ^ bits[6] ^ bits[11] ^ bits[13] ^ bits[14] ^ bits[15] ^ bits[18] ^ bits[19] ^ bits[20] ^ bits[21] ^ bits[23] ^ bits[24] ^ bits[27] ^ bits[28] ^ bits[32] ^ bits[34] ^ bits[39] ^ bits[40] ^ bits[42] ^ bits[48] ^ bits[49] ^ bits[50] ^ bits[51] ^ bits[52] ^ bits[54] ^ bits[58] ^ bits[59] ^ bits[60] ^ bits[61] ^ bits[62] ^ bits[63] ^ bits[64] ^ bits[67] ^ bits[70] ^ bits[72] ^ bits[73] ^ bits[75] ^ bits[78] ^ bits[82] ^ bits[83] ^ bits[84] ^ bits[85] ^ bits[86] ^ bits[88] ^ bits[94] ^ bits[95] ^ bits[102] ^ bits[104] ^ bits[105] ^ bits[107] ^ bits[111] ^ bits[114] ^ bits[115] ^ bits[116] ^ bits[117] ^ bits[118] ^ bits[119] ^ bits[121] ^ bits[122] ^ bits[124] ^ bits[126] ^ bits[127] ^ bits[128] ^ bits[130] ^ bits[133] ^ bits[136] ^ bits[137] ^ bits[139] ^ bits[141] ^ bits[142] ^ bits[144] ^ bits[146] ^ bits[148] ^ bits[151] ^ bits[153] ^ bits[154] ^ bits[157] ^ bits[163] ^ bits[165] ^ bits[167] ^ bits[172] ^ bits[174] ^ bits[175] ^ bits[179] ^ bits[182] ^ bits[183] ^ bits[184] ^ bits[185] ^ bits[187] ^ bits[196] ^ bits[199] ^ bits[201] ^ bits[202] ^ bits[203] ^ bits[205] ^ bits[207] ^ bits[209] ^ bits[210] ^ bits[211] ^ bits[212] ^ bits[216] ^ bits[217] ^ bits[218] ^ bits[221] ^ bits[222] ^ bits[225] ^ bits[226] ^ bits[227] ^ bits[228] ^ bits[229] ^ bits[233] ^ bits[234] ^ bits[235] ^ bits[236] ^ bits[237];
            codeword[254] <= bits[1] ^ bits[2] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[7] ^ bits[12] ^ bits[14] ^ bits[15] ^ bits[16] ^ bits[19] ^ bits[20] ^ bits[21] ^ bits[22] ^ bits[24] ^ bits[25] ^ bits[28] ^ bits[29] ^ bits[33] ^ bits[35] ^ bits[40] ^ bits[41] ^ bits[43] ^ bits[49] ^ bits[50] ^ bits[51] ^ bits[52] ^ bits[53] ^ bits[55] ^ bits[59] ^ bits[60] ^ bits[61] ^ bits[62] ^ bits[63] ^ bits[64] ^ bits[65] ^ bits[68] ^ bits[71] ^ bits[73] ^ bits[74] ^ bits[76] ^ bits[79] ^ bits[83] ^ bits[84] ^ bits[85] ^ bits[86] ^ bits[87] ^ bits[89] ^ bits[95] ^ bits[96] ^ bits[103] ^ bits[105] ^ bits[106] ^ bits[108] ^ bits[112] ^ bits[115] ^ bits[116] ^ bits[117] ^ bits[118] ^ bits[119] ^ bits[120] ^ bits[122] ^ bits[123] ^ bits[125] ^ bits[127] ^ bits[128] ^ bits[129] ^ bits[131] ^ bits[134] ^ bits[137] ^ bits[138] ^ bits[140] ^ bits[142] ^ bits[143] ^ bits[145] ^ bits[147] ^ bits[149] ^ bits[152] ^ bits[154] ^ bits[155] ^ bits[158] ^ bits[164] ^ bits[166] ^ bits[168] ^ bits[173] ^ bits[175] ^ bits[176] ^ bits[180] ^ bits[183] ^ bits[184] ^ bits[185] ^ bits[186] ^ bits[188] ^ bits[197] ^ bits[200] ^ bits[202] ^ bits[203] ^ bits[204] ^ bits[206] ^ bits[208] ^ bits[210] ^ bits[211] ^ bits[212] ^ bits[213] ^ bits[217] ^ bits[218] ^ bits[219] ^ bits[222] ^ bits[223] ^ bits[226] ^ bits[227] ^ bits[228] ^ bits[229] ^ bits[230] ^ bits[234] ^ bits[235] ^ bits[236] ^ bits[237] ^ bits[238];
            
            codeword[255] <= bits[0] ^ bits[1] ^ bits[3] ^ bits[5] ^ bits[8] ^ bits[9] ^ bits[10] ^ bits[11] ^ bits[12] ^ bits[15] ^ bits[17] ^ bits[18] ^ bits[19] ^ bits[21] ^ bits[23] ^ bits[24] ^ bits[26] ^ bits[27] ^ bits[28] ^ bits[30] ^ bits[31] ^ bits[32] ^ bits[33] ^ bits[36] ^ bits[37] ^ bits[38] ^ bits[39] ^ bits[40] ^ bits[42] ^ bits[43] ^ bits[50] ^ bits[52] ^ bits[54] ^ bits[55] ^ bits[60] ^ bits[62] ^ bits[64] ^ bits[66] ^ bits[67] ^ bits[68] ^ bits[72] ^ bits[73] ^ bits[75] ^ bits[76] ^ bits[80] ^ bits[81] ^ bits[82] ^ bits[83] ^ bits[85] ^ bits[87] ^ bits[90] ^ bits[91] ^ bits[92] ^ bits[93] ^ bits[94] ^ bits[95] ^ bits[97] ^ bits[98] ^ bits[99] ^ bits[100] ^ bits[101] ^ bits[102] ^ bits[103] ^ bits[106] ^ bits[109] ^ bits[110] ^ bits[111] ^ bits[112] ^ bits[116] ^ bits[118] ^ bits[120] ^ bits[123] ^ bits[126] ^ bits[127] ^ bits[129] ^ bits[132] ^ bits[133] ^ bits[134] ^ bits[138] ^ bits[141] ^ bits[142] ^ bits[144] ^ bits[145] ^ bits[148] ^ bits[149] ^ bits[153] ^ bits[154] ^ bits[156] ^ bits[157] ^ bits[158] ^ bits[165] ^ bits[166] ^ bits[169] ^ bits[170] ^ bits[171] ^ bits[172] ^ bits[173] ^ bits[176] ^ bits[181] ^ bits[182] ^ bits[183] ^ bits[185] ^ bits[187] ^ bits[188] ^ bits[198] ^ bits[199] ^ bits[200] ^ bits[203] ^ bits[205] ^ bits[206] ^ bits[209] ^ bits[210] ^ bits[212] ^ bits[214] ^ bits[215] ^ bits[216] ^ bits[217] ^ bits[219] ^ bits[223] ^ bits[227] ^ bits[229] ^ bits[231] ^ bits[232] ^ bits[233] ^ bits[234] ^ bits[236] ^ bits[238];
            
        end
    end
    
    
endmodule


