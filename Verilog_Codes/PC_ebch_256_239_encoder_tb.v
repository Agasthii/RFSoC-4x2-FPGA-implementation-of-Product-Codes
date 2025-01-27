`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2024 05:46:40 AM
// Design Name: 
// Module Name: PC_ebch_256_239_encoder_tb
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


module PC_ebch_256_239_encoder_tb();
    parameter n = 256;
    reg clk;
    reg reset;
    reg [4095:0] seed;
    reg hold_enc;    // Signal from the decoder to start encoding
    wire store;       // Signal to the datapath to store the encoded codewords in the buffer
    wire new1;        // Signal to the decoder that a new encoded codeword set is released
    wire [n-1:0] out_codeword1;
    wire [n-1:0] out_codeword2;
    wire [n-1:0] out_codeword3;
    wire [n-1:0] out_codeword4;
    wire [n-1:0] out_codeword5;
    wire [n-1:0] out_codeword6;
    wire [n-1:0] out_codeword7;
    wire [n-1:0] out_codeword8;
    wire [n-1:0] out_codeword9;
    wire [n-1:0] out_codeword10;
    wire [n-1:0] out_codeword11;
    wire [n-1:0] out_codeword12;
    wire [n-1:0] out_codeword13;
    wire [n-1:0] out_codeword14;
    wire [n-1:0] out_codeword15;
    wire [n-1:0] out_codeword16;
    
    reg sequence = 256'd1024;
    
    PC_encoding_block_ebch_256_239 d(
        .clk(clk),
        .seed(seed),
        .hold_enc(hold_enc),    
        .store(store), 
        .new1(new1),    
        .out_codeword1(out_codeword1),
        .out_codeword2(out_codeword2),
        .out_codeword3(out_codeword3),
        .out_codeword4(out_codeword4),
        .out_codeword5(out_codeword5),
        .out_codeword6(out_codeword6),
        .out_codeword7(out_codeword7),
        .out_codeword8(out_codeword8),
        .out_codeword9(out_codeword9),
        .out_codeword10(out_codeword10),
        .out_codeword11(out_codeword11),
        .out_codeword12(out_codeword12),
        .out_codeword13(out_codeword13),
        .out_codeword14(out_codeword14),
        .out_codeword15(out_codeword15),
        .out_codeword16(out_codeword16)
    );
    
    initial begin
        #10 clk = 1'b0;
        forever begin
            #5 clk = ~clk;
        end
    end
    
    initial begin 
        reset = 1'b0;
        sequence = 256'd1024;
        seed = { sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence, sequence};
        hold_enc = 1'b1;
        #20
        reset = 1'b1;
        #2000
        $finish;
    end
endmodule
