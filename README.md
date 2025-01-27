# RFSoC-4x2-FPGA-implementation-of-Product-Codes

The basic structure of Bose–Chaudhuri–Hocquenghem (BCH) codes is defined in the following figure.
![bch](https://github.com/user-attachments/assets/8ea7196b-6524-4592-8615-7c989665ecdd)
The final implementation for eBCH(256,239,2) product codes reached a data rate of 76 Gbps. The implementation is fully pipelined and consists of four main stages.
1. Codeword generation
2. Encoding block
3. Binary Symmetric Channel
4. Decoding block

The implementation is done on RFSoC 4x2 FPGA board and the PYNQ interface is used to communicate with the FPGA board in a virtual manner. [a link](https://pynq.readthedocs.io/en/v2.0/overlay_design_methodology/overlay_tutorial.html)
![bch_matlab](https://github.com/user-attachments/assets/51ddba50-237d-4fd0-b7a4-9cc627a8bc76)
