# RFSoC-4x2-FPGA-implementation-of-Product-Codes

the implementation of an eBCH(256,239,2) product code encoder and a decoder on an RFSoC4x2 FPGA board is presented. The implementation is optimized to get a low BER rate of 10<sup>-14</sup>, while achieving a high data rate of 76 Gbps.

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

The following figure shows the output compared with the MATLAB simulation and the FPGA implementation for eBCH(256,239,2).

<p align="center">
  <img src="https://github.com/user-attachments/assets/51ddba50-237d-4fd0-b7a4-9cc627a8bc76" alt="Alt Text" style="width:50%; height:auto;">
</p>
