# RFSoC-4x2-FPGA-implementation-of-Product-Codes

In this repository, the implementation of an eBCH(256,239,2) product code encoder and a decoder on an RFSoC4x2 FPGA board is presented. The implementation is optimized to get a low BER rate of 10<sup>-14</sup>, while achieving a high data rate of 76 Gbps.

Forward Error Correction (FEC) techniques, such as block codes, and convolutional codes, make data transmission more efficient by allowing correct errors at the receiver. Bose–Chaudhuri–Hocquenghem (BCH) codes are used in many applications as an FEC technique, due to their lower complexity. The target of the project is achieving a BER of 10<sup>-14</sup> during data transmission. In this project, a high speed FPGA implementation is used to obtain such a low BER value. The FPGA implementation of product codes using extended BCH (eBCH) codes has a code rate of 0.879, and a minimum hamming distance of 36.

Random codewords are generated and fed to the eBCH (256,239) encoder, and a product code is obtained by doing both row encoding and column encoding. The encoded product code is then passed through a Binary Symmetric Channel (BSC) under a defined cross-over probability. The received product code is then fed to the decoder to do iterative Bounded Distance Decoding (iBDD) using the Berlekamp–Massey algorithm. The BER of the transmission is then calculated and given as the output.

The RFSoC 4x2 board can be easily managed using the PYNQ architecture, which allows to define inputs and obtain outputs using the PYNQ interface. Vivado 2023.1 is used as the main software application for the implementation process. To obtain a BER of 10<sup>-14</sup>, "insert the number of product codes" product codes have been used.

The basic structure of Bose–Chaudhuri–Hocquenghem (BCH) codes is defined in the following figure.

<p align="center">
  <img src="https://github.com/user-attachments/assets/8ea7196b-6524-4592-8615-7c989665ecdd" alt="Alt Text" style="width:50%; height:auto;">
</p>

The implementation is fully pipelined and consists of four main stages.

1. Codeword generation
2. Encoding block
3. Binary Symmetric Channel
4. Decoding block

The implementation is done on [RFSoC 4x2](https://www.rfsoc-pynq.io/rfsoc_4x2_overview.html) FPGA board and the [PYNQ interface](https://pynq.readthedocs.io/en/v2.0/overlay_design_methodology/overlay_tutorial.html) is used to communicate with the FPGA board in a virtual manner.

<p align="center">
  <img src="https://github.com/user-attachments/assets/2fa3c144-2a20-47ac-8bd4-1406fd33c2c4" alt="Alt Text" style="width:50%; height:auto;">
</p>


The following figure shows the output compared with the MATLAB simulation and the FPGA implementation for eBCH(256,239,2).

<p align="center">
  <img src="https://github.com/user-attachments/assets/51ddba50-237d-4fd0-b7a4-9cc627a8bc76" alt="Alt Text" style="width:50%; height:auto;">
</p>
