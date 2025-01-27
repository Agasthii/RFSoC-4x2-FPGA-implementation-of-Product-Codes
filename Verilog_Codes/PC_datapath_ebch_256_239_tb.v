`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 01:03:38 PM
// Design Name: 
// Module Name: PC_datapath_ebch_256_239_tb
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


module PC_datapath_ebch_256_239_tb();
    reg clk;
    reg reset;
    reg [8191:0] seed;
    reg [15:0] cross_prob;
    reg [4:0] iterations;
    wire [63:0] errs;
    wire [63:0] errs_u;
//    wire [63:0] errs_u;
    wire [63:0] sims;
    
    PC_datapath_testing PC_datapath_testing_d(
                    .clk(clk),
                    .reset(reset),
                    .seed(seed),
                    .cross_prob(cross_prob),
                    .iterations(iterations),
                    .errs(errs),
                    .errs_u(errs_u),
//                    .errs_u(errs_u),
                    .sims(sims)
                    );
    
    initial begin
        forever begin
            clk = 1'b1;
            #5;
            clk = 1'b0;
            #5;
        end
    end

    initial begin
        seed = {$urandom(1), $urandom(2), $urandom(3), $urandom(4), $urandom(5), $urandom(6), $urandom(7), $urandom(8), $urandom(9), $urandom(10), $urandom(11), $urandom(12), $urandom(13), $urandom(14), $urandom(15), $urandom(16), $urandom(17), $urandom(18), $urandom(19), $urandom(20), $urandom(21), $urandom(22), $urandom(23), $urandom(24), $urandom(25), $urandom(26), $urandom(27), $urandom(28), $urandom(29), $urandom(30), $urandom(31), $urandom(32), $urandom(33), $urandom(34), $urandom(35), $urandom(36), $urandom(37), $urandom(38), $urandom(39), $urandom(40), $urandom(41), $urandom(42), $urandom(43), $urandom(44), $urandom(45), $urandom(46), $urandom(47), $urandom(48), $urandom(49), $urandom(50), $urandom(51), $urandom(52), $urandom(53), $urandom(54), $urandom(55), $urandom(56), $urandom(57), $urandom(58), $urandom(59), $urandom(60), $urandom(61), $urandom(62), $urandom(63), $urandom(64), $urandom(65), $urandom(66), $urandom(67), $urandom(68), $urandom(69), $urandom(70), $urandom(71), $urandom(72), $urandom(73), $urandom(74), $urandom(75), $urandom(76), $urandom(77), $urandom(78), $urandom(79), $urandom(80), $urandom(81), $urandom(82), $urandom(83), $urandom(84), $urandom(85), $urandom(86), $urandom(87), $urandom(88), $urandom(89), $urandom(90), $urandom(91), $urandom(92), $urandom(93), $urandom(94), $urandom(95), $urandom(96), $urandom(97), $urandom(98), $urandom(99), $urandom(100), $urandom(101), $urandom(102), $urandom(103), $urandom(104), $urandom(105), $urandom(106), $urandom(107), $urandom(108), $urandom(109), $urandom(110), $urandom(111), $urandom(112), $urandom(113), $urandom(114), $urandom(115), $urandom(116), $urandom(117), $urandom(118), $urandom(119), $urandom(120), $urandom(121), $urandom(122), $urandom(123), $urandom(124), $urandom(125), $urandom(126), $urandom(127), $urandom(128), $urandom(129), $urandom(130), $urandom(131), $urandom(132), $urandom(133), $urandom(134), $urandom(135), $urandom(136), $urandom(137), $urandom(138), $urandom(139), $urandom(140), $urandom(141), $urandom(142), $urandom(143), $urandom(144), $urandom(145), $urandom(146), $urandom(147), $urandom(148), $urandom(149), $urandom(150), $urandom(151), $urandom(152), $urandom(153), $urandom(154), $urandom(155), $urandom(156), $urandom(157), $urandom(158), $urandom(159), $urandom(160), $urandom(161), $urandom(162), $urandom(163), $urandom(164), $urandom(165), $urandom(166), $urandom(167), $urandom(168), $urandom(169), $urandom(170), $urandom(171), $urandom(172), $urandom(173), $urandom(174), $urandom(175), $urandom(176), $urandom(177), $urandom(178), $urandom(179), $urandom(180), $urandom(181), $urandom(182), $urandom(183), $urandom(184), $urandom(185), $urandom(186), $urandom(187), $urandom(188), $urandom(189), $urandom(190), $urandom(191), $urandom(192), $urandom(193), $urandom(194), $urandom(195), $urandom(196), $urandom(197), $urandom(198), $urandom(199), $urandom(200), $urandom(201), $urandom(202), $urandom(203), $urandom(204), $urandom(205), $urandom(206), $urandom(207), $urandom(208), $urandom(209), $urandom(210), $urandom(211), $urandom(212), $urandom(213), $urandom(214), $urandom(215), $urandom(216), $urandom(217), $urandom(218), $urandom(219), $urandom(220), $urandom(221), $urandom(222), $urandom(223), $urandom(224), $urandom(225), $urandom(226), $urandom(227), $urandom(228), $urandom(229), $urandom(230), $urandom(231), $urandom(232), $urandom(233), $urandom(234), $urandom(235), $urandom(236), $urandom(237), $urandom(238), $urandom(239), $urandom(240), $urandom(241), $urandom(242), $urandom(243), $urandom(244), $urandom(245), $urandom(246), $urandom(247), $urandom(248), $urandom(249), $urandom(250), $urandom(251), $urandom(252), $urandom(253), $urandom(254), $urandom(255), $urandom(256)};
        reset = 1'b0;
//        cross_prob = 16'd65535;
//        cross_prob = 16'b1111111111111111;
//        cross_prob = 16'b0;
        cross_prob = 16'b0000000000000000;
        iterations = 5'b1;
        #20;
        reset = 1'b1;
        #2600
        $finish;
    end
endmodule

