`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 11:01:30 AM
// Design Name: 
// Module Name: bit_gen_11
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


module bit_gen_239#(
    parameter len = 256,
    parameter k = 239
    )(
    input wire clk,
    input wire reset,
    input wire [len-1:0] seed,
    output reg [k-1:0] bits
    );
    reg [len-1:0] lfsr; 
    reg feedback;
    
    always @(posedge clk) begin
        //taps at 32, 30, 26, 25
        //taps at 512, 510, 507, 504
        //taps at 2048, 2035, 2034, 2029
        //taps at 256, 254, 251, 246
        if(reset) begin
            feedback = lfsr[0]; //((lfsr ^ lfsr[0]) &&
            lfsr[255] = feedback ^ lfsr[255];
            lfsr[253] = feedback ^ lfsr[253];
            lfsr[250] = feedback ^ lfsr[250];
            lfsr[245] = feedback ^ lfsr[245]; 
            lfsr = (lfsr >> 1);
            lfsr[255] = feedback;
              
            bits[0] <= lfsr[24]; 
            bits[1] <= lfsr[69]; 
            bits[2] <= lfsr[243]; 
            bits[3] <= lfsr[13]; 
            bits[4] <= lfsr[221]; 
            bits[5] <= lfsr[123]; 
            bits[6] <= lfsr[217]; 
            bits[7] <= lfsr[197]; 
            bits[8] <= lfsr[126]; 
            bits[9] <= lfsr[40]; 
            bits[10] <= lfsr[20]; 
            bits[11] <= lfsr[34]; 
            bits[12] <= lfsr[230]; 
            bits[13] <= lfsr[189]; 
            bits[14] <= lfsr[205]; 
            bits[15] <= lfsr[228]; 
            bits[16] <= lfsr[55]; 
            bits[17] <= lfsr[54]; 
            bits[18] <= lfsr[75]; 
            bits[19] <= lfsr[222]; 
            bits[20] <= lfsr[121]; 
            bits[21] <= lfsr[88]; 
            bits[22] <= lfsr[191]; 
            bits[23] <= lfsr[119]; 
            bits[24] <= lfsr[37]; 
            bits[25] <= lfsr[125]; 
            bits[26] <= lfsr[223]; 
            bits[27] <= lfsr[249]; 
            bits[28] <= lfsr[77]; 
            bits[29] <= lfsr[127]; 
            bits[30] <= lfsr[100]; 
            bits[31] <= lfsr[25]; 
            bits[32] <= lfsr[204]; 
            bits[33] <= lfsr[51]; 
            bits[34] <= lfsr[183]; 
            bits[35] <= lfsr[83]; 
            bits[36] <= lfsr[43]; 
            bits[37] <= lfsr[251]; 
            bits[38] <= lfsr[11]; 
            bits[39] <= lfsr[128]; 
            bits[40] <= lfsr[57]; 
            bits[41] <= lfsr[31]; 
            bits[42] <= lfsr[90]; 
            bits[43] <= lfsr[151]; 
            bits[44] <= lfsr[89]; 
            bits[45] <= lfsr[29]; 
            bits[46] <= lfsr[97]; 
            bits[47] <= lfsr[110]; 
            bits[48] <= lfsr[111]; 
            bits[49] <= lfsr[140]; 
            bits[50] <= lfsr[103]; 
            bits[51] <= lfsr[80]; 
            bits[52] <= lfsr[81]; 
            bits[53] <= lfsr[235]; 
            bits[54] <= lfsr[98]; 
            bits[55] <= lfsr[130]; 
            bits[56] <= lfsr[117]; 
            bits[57] <= lfsr[169]; 
            bits[58] <= lfsr[206]; 
            bits[59] <= lfsr[216]; 
            bits[60] <= lfsr[129]; 
            bits[61] <= lfsr[65]; 
            bits[62] <= lfsr[36]; 
            bits[63] <= lfsr[201]; 
            bits[64] <= lfsr[4]; 
            bits[65] <= lfsr[218]; 
            bits[66] <= lfsr[46]; 
            bits[67] <= lfsr[109]; 
            bits[68] <= lfsr[211]; 
            bits[69] <= lfsr[214]; 
            bits[70] <= lfsr[56]; 
            bits[71] <= lfsr[66]; 
            bits[72] <= lfsr[18]; 
            bits[73] <= lfsr[94]; 
            bits[74] <= lfsr[224]; 
            bits[75] <= lfsr[167]; 
            bits[76] <= lfsr[172]; 
            bits[77] <= lfsr[72]; 
            bits[78] <= lfsr[28]; 
            bits[79] <= lfsr[193]; 
            bits[80] <= lfsr[16]; 
            bits[81] <= lfsr[120]; 
            bits[82] <= lfsr[181]; 
            bits[83] <= lfsr[168]; 
            bits[84] <= lfsr[113]; 
            bits[85] <= lfsr[209]; 
            bits[86] <= lfsr[92]; 
            bits[87] <= lfsr[63]; 
            bits[88] <= lfsr[2]; 
            bits[89] <= lfsr[26]; 
            bits[90] <= lfsr[30]; 
            bits[91] <= lfsr[231]; 
            bits[92] <= lfsr[84]; 
            bits[93] <= lfsr[236]; 
            bits[94] <= lfsr[108]; 
            bits[95] <= lfsr[17]; 
            bits[96] <= lfsr[248]; 
            bits[97] <= lfsr[139]; 
            bits[98] <= lfsr[215]; 
            bits[99] <= lfsr[144]; 
            bits[100] <= lfsr[180]; 
            bits[101] <= lfsr[247]; 
            bits[102] <= lfsr[48]; 
            bits[103] <= lfsr[198]; 
            bits[104] <= lfsr[179]; 
            bits[105] <= lfsr[131]; 
            bits[106] <= lfsr[147]; 
            bits[107] <= lfsr[229]; 
            bits[108] <= lfsr[184]; 
            bits[109] <= lfsr[91]; 
            bits[110] <= lfsr[237]; 
            bits[111] <= lfsr[118]; 
            bits[112] <= lfsr[242]; 
            bits[113] <= lfsr[158]; 
            bits[114] <= lfsr[67]; 
            bits[115] <= lfsr[161]; 
            bits[116] <= lfsr[185]; 
            bits[117] <= lfsr[134]; 
            bits[118] <= lfsr[0]; 
            bits[119] <= lfsr[68]; 
            bits[120] <= lfsr[153]; 
            bits[121] <= lfsr[50]; 
            bits[122] <= lfsr[187]; 
            bits[123] <= lfsr[6]; 
            bits[124] <= lfsr[203]; 
            bits[125] <= lfsr[212]; 
            bits[126] <= lfsr[133]; 
            bits[127] <= lfsr[146]; 
            bits[128] <= lfsr[39]; 
            bits[129] <= lfsr[233]; 
            bits[130] <= lfsr[148]; 
            bits[131] <= lfsr[93]; 
            bits[132] <= lfsr[61]; 
            bits[133] <= lfsr[58]; 
            bits[134] <= lfsr[176]; 
            bits[135] <= lfsr[150]; 
            bits[136] <= lfsr[165]; 
            bits[137] <= lfsr[136]; 
            bits[138] <= lfsr[157]; 
            bits[139] <= lfsr[85]; 
            bits[140] <= lfsr[115]; 
            bits[141] <= lfsr[202]; 
            bits[142] <= lfsr[52]; 
            bits[143] <= lfsr[200]; 
            bits[144] <= lfsr[79]; 
            bits[145] <= lfsr[8]; 
            bits[146] <= lfsr[104]; 
            bits[147] <= lfsr[59]; 
            bits[148] <= lfsr[244]; 
            bits[149] <= lfsr[192]; 
            bits[150] <= lfsr[22]; 
            bits[151] <= lfsr[208]; 
            bits[152] <= lfsr[225]; 
            bits[153] <= lfsr[14]; 
            bits[154] <= lfsr[213]; 
            bits[155] <= lfsr[10]; 
            bits[156] <= lfsr[239]; 
            bits[157] <= lfsr[162]; 
            bits[158] <= lfsr[188]; 
            bits[159] <= lfsr[182]; 
            bits[160] <= lfsr[87]; 
            bits[161] <= lfsr[175]; 
            bits[162] <= lfsr[194]; 
            bits[163] <= lfsr[101]; 
            bits[164] <= lfsr[137]; 
            bits[165] <= lfsr[227]; 
            bits[166] <= lfsr[82]; 
            bits[167] <= lfsr[12]; 
            bits[168] <= lfsr[124]; 
            bits[169] <= lfsr[45]; 
            bits[170] <= lfsr[160]; 
            bits[171] <= lfsr[246]; 
            bits[172] <= lfsr[74]; 
            bits[173] <= lfsr[102]; 
            bits[174] <= lfsr[170]; 
            bits[175] <= lfsr[232]; 
            bits[176] <= lfsr[49]; 
            bits[177] <= lfsr[152]; 
            bits[178] <= lfsr[99]; 
            bits[179] <= lfsr[195]; 
            bits[180] <= lfsr[252]; 
            bits[181] <= lfsr[60]; 
            bits[182] <= lfsr[241]; 
            bits[183] <= lfsr[159]; 
            bits[184] <= lfsr[47]; 
            bits[185] <= lfsr[32]; 
            bits[186] <= lfsr[173]; 
            bits[187] <= lfsr[3]; 
            bits[188] <= lfsr[156]; 
            bits[189] <= lfsr[174]; 
            bits[190] <= lfsr[163]; 
            bits[191] <= lfsr[219]; 
            bits[192] <= lfsr[135]; 
            bits[193] <= lfsr[1]; 
            bits[194] <= lfsr[76]; 
            bits[195] <= lfsr[19]; 
            bits[196] <= lfsr[240]; 
            bits[197] <= lfsr[254]; 
            bits[198] <= lfsr[149]; 
            bits[199] <= lfsr[145]; 
            bits[200] <= lfsr[255]; 
            bits[201] <= lfsr[234]; 
            bits[202] <= lfsr[154]; 
            bits[203] <= lfsr[15]; 
            bits[204] <= lfsr[86]; 
            bits[205] <= lfsr[250]; 
            bits[206] <= lfsr[141]; 
            bits[207] <= lfsr[177]; 
            bits[208] <= lfsr[171]; 
            bits[209] <= lfsr[41]; 
            bits[210] <= lfsr[190]; 
            bits[211] <= lfsr[44]; 
            bits[212] <= lfsr[199]; 
            bits[213] <= lfsr[238]; 
            bits[214] <= lfsr[9]; 
            bits[215] <= lfsr[38]; 
            bits[216] <= lfsr[107]; 
            bits[217] <= lfsr[33]; 
            bits[218] <= lfsr[23]; 
            bits[219] <= lfsr[53]; 
            bits[220] <= lfsr[178]; 
            bits[221] <= lfsr[64]; 
            bits[222] <= lfsr[132]; 
            bits[223] <= lfsr[5]; 
            bits[224] <= lfsr[7]; 
            bits[225] <= lfsr[96]; 
            bits[226] <= lfsr[245]; 
            bits[227] <= lfsr[73]; 
            bits[228] <= lfsr[122]; 
            bits[229] <= lfsr[186]; 
            bits[230] <= lfsr[112]; 
            bits[231] <= lfsr[138]; 
            bits[232] <= lfsr[35]; 
            bits[233] <= lfsr[226]; 
            bits[234] <= lfsr[95]; 
            bits[235] <= lfsr[207]; 
            bits[236] <= lfsr[21]; 
            bits[237] <= lfsr[71]; 
            bits[238] <= lfsr[196]; 
 
 
        end else begin
            lfsr = seed;
        end 
    end


endmodule
