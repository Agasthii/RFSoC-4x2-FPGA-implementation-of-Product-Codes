`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2024 04:51:08 PM
// Design Name: 
// Module Name: bchencoder_256_239_PC
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


module bchencoder_256_239_PC #(
    parameter k = 239,
    parameter n = 256
    )(
    input wire clk,
    input wire reset,
    input wire [k-1:0] bits1,
    input wire [k-1:0] bits2,
    input wire [k-1:0] bits3,
    input wire [k-1:0] bits4,
    input wire [k-1:0] bits5,
    input wire [k-1:0] bits6,
    input wire [k-1:0] bits7,
    input wire [k-1:0] bits8,
    input wire [k-1:0] bits9,
    input wire [k-1:0] bits10,
    input wire [k-1:0] bits11,
    input wire [k-1:0] bits12,
    input wire [k-1:0] bits13,
    input wire [k-1:0] bits14,
    input wire [k-1:0] bits15,
    input wire [k-1:0] bits16,
    output wire [n-1:0] codeword1,
    output wire [n-1:0] codeword2,
    output wire [n-1:0] codeword3,
    output wire [n-1:0] codeword4,
    output wire [n-1:0] codeword5,
    output wire [n-1:0] codeword6,
    output wire [n-1:0] codeword7,
    output wire [n-1:0] codeword8,
    output wire [n-1:0] codeword9,
    output wire [n-1:0] codeword10,
    output wire [n-1:0] codeword11,
    output wire [n-1:0] codeword12,
    output wire [n-1:0] codeword13,
    output wire [n-1:0] codeword14,
    output wire [n-1:0] codeword15,
    output wire [n-1:0] codeword16
    );
    
    bchencoder_256_239 enc1(
        .clk(clk),
        .reset(reset),
        .bits(bits1),
        .codeword(codeword1)
        );
    bchencoder_256_239 enc2(
        .clk(clk),
        .reset(reset),
        .bits(bits2),
        .codeword(codeword2)
        );
    bchencoder_256_239 enc3(
        .clk(clk),
        .reset(reset),
        .bits(bits3),
        .codeword(codeword3)
        );
    bchencoder_256_239 enc4(
        .clk(clk),
        .reset(reset),
        .bits(bits4),
        .codeword(codeword4)
        );
    bchencoder_256_239 enc5(
        .clk(clk),
        .reset(reset),
        .bits(bits5),
        .codeword(codeword5)
        );
    bchencoder_256_239 enc6(
        .clk(clk),
        .reset(reset),
        .bits(bits6),
        .codeword(codeword6)
        );
    bchencoder_256_239 enc7(
        .clk(clk),
        .reset(reset),
        .bits(bits7),
        .codeword(codeword7)
        );
    bchencoder_256_239 enc8(
        .clk(clk),
        .reset(reset),
        .bits(bits8),
        .codeword(codeword8)
        );
    bchencoder_256_239 enc9(
        .clk(clk),
        .reset(reset),
        .bits(bits9),
        .codeword(codeword9)
        );
    bchencoder_256_239 enc10(
        .clk(clk),
        .reset(reset),
        .bits(bits10),
        .codeword(codeword10)
        );
    bchencoder_256_239 enc11(
        .clk(clk),
        .reset(reset),
        .bits(bits11),
        .codeword(codeword11)
        );
    bchencoder_256_239 enc12(
        .clk(clk),
        .reset(reset),
        .bits(bits12),
        .codeword(codeword12)
        );
    bchencoder_256_239 enc13(
        .clk(clk),
        .reset(reset),
        .bits(bits13),
        .codeword(codeword13)
        );
    bchencoder_256_239 enc14(
        .clk(clk),
        .reset(reset),
        .bits(bits14),
        .codeword(codeword14)
        );
    bchencoder_256_239 enc15(
        .clk(clk),
        .reset(reset),
        .bits(bits15),
        .codeword(codeword15)
        );
    bchencoder_256_239 enc16(
        .clk(clk),
        .reset(reset),
        .bits(bits16),
        .codeword(codeword16)
        );
                            
endmodule
