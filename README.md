# RFSoC-4x2-FPGA-implementation-of-Product-Codes

In this repository, the implementation of an eBCH(256,239,2) product code encoder and a decoder on an RFSoC4x2 FPGA board is presented. The implementation is optimized to get a low BER rate of 10<sup>-14</sup>, while achieving a high data rate of 76 Gbps. The implementation is done from scratch by implementing each and every block using Verilog.

Forward Error Correction (FEC) techniques, such as block codes, and convolutional codes, make data transmission more efficient by allowing correct errors at the receiver. Bose–Chaudhuri–Hocquenghem (BCH) codes are used in many applications as an FEC technique, due to their lower complexity. The target of the project is achieving a BER of 10<sup>-14</sup> during data transmission. In this project, a high speed FPGA implementation is used to obtain such a low BER value. The FPGA implementation of product codes using extended BCH (eBCH) codes has a code rate of 0.879, and a minimum hamming distance of 36.

Random codewords are generated and fed to the eBCH (256,239) encoder, and a product code is obtained by doing both row encoding and column encoding. The encoded product code is then passed through a Binary Symmetric Channel (BSC) under a defined cross-over probability. The received product code is then fed to the decoder to do iterative Bounded Distance Decoding (iBDD) using the Berlekamp–Massey algorithm. The BER of the transmission is then calculated and given as the output.

The RFSoC 4x2 board can be easily managed using the PYNQ architecture, which allows to define inputs and obtain outputs using the PYNQ interface. Vivado 2023.1 is used as the main software application for the implementation process.

### Encoding process

BCH codes are a type of block codes, which uses parity bits to encode the message codeword. BCH (255,239) codeword uses 16 parity bits to encode the 239 bit codeword, to make a 255 bit encoded codeword. After adding the extended parity bit, the minimum hamming distance of eBCH(256,239) is increased by 1. The encoding process is implemented in this design to be completed in a single clock cycle.

<p align="center">
  <img src="https://github.com/user-attachments/assets/8ea7196b-6524-4592-8615-7c989665ecdd" alt="Alt Text" style="width:50%; height:auto;">
</p>

A single eBCH codeword can be encoded using a single encoder within a single clock cycle. In this design, 32 parallel eBCH (256,239) encoders are used to encode 32 eBCH codewords in a single clock cycle. Therefore, for a product code with k\textsubscript{1} = k\textsubscript{2} = 239, the encoding can be done in 16 clock cycles. For the FPGA implementation with 100 MHz clock frequency, the encoding data rate is 357 Gbps approx.

### Channel

A Binary Symmetric Channel (BSC) is used as the channel, with a crossover probability which can be easily defined using the PYNQ interface.

In the FPGA implementation,LFSR blocks are used to generate a block of random noise, and 32 LFSRs' are implemented in parallel to generate 32 random noise vectors in a single clock cycle. Therefore, after each 16 clock cycles, a 256x256 noise matrix will be constructed using these noise vectors.

Each 16 clock cycle set, a product code will be encoded and passed to the channel, and the distorted product code will be ready to be fed into the decoder when required.

The encoding, and channel transmission can be done using pipe-lining. After encoding and passing the encoded product code to the channel, the encoder can start encoding the next product code.

The implementation is fully pipelined and consists of four main stages.

1. Codeword generation
2. Encoding block
3. Binary Symmetric Channel
4. Decoding block

The implementation is done on [RFSoC 4x2](https://www.rfsoc-pynq.io/rfsoc_4x2_overview.html) FPGA board and the [PYNQ interface](https://pynq.readthedocs.io/en/v2.0/overlay_design_methodology/overlay_tutorial.html) is used to communicate with the FPGA board in a virtual manner.

<p align="center">
  <img src="https://github.com/user-attachments/assets/36825195-58f6-492d-9a16-5ebcbb2aa249" alt="Alt Text" style="width:50%; height:auto;">
</p>

The following figure shows the output compared with the MATLAB simulation and the FPGA implementation for eBCH(256,239,2).

<p align="center">
  <img src="https://github.com/user-attachments/assets/51ddba50-237d-4fd0-b7a4-9cc627a8bc76" alt="Alt Text" style="width:50%; height:auto;">
</p>
