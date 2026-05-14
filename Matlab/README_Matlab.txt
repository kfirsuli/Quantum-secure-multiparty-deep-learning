Matlab Files for Sulimany, Kfir, et al. "Quantum-Secure Multiparty Deep Learning." Phys. Rev. X 15, 041056 (2025) / arXiv:2408.05629:

Fitting_sigmoid.m: This file contains hardcoded results from the PyTorch simulation. It plots Figure 5 and generates an analytical approximation of the simulation results.

Leak.m: Calculates the Holevo bound (Eq. 2).

CCRB1.m: Calculates the Cramér-Rao bound (Eq. 3).

Maps.m: Generates Figures 2 and 6 using Leak.m and CCRB1.m. The main-text 2D map includes the 95% accuracy contour and a red marker at the (I_w, I_x) = (0.1, 0.1) reference point.

neurons_and_loss.m: Generates Figure 5 using Leak.m and CCRB1.m. Three-panel tiledlayout.

Save_PDF.m: Figure-export driver. Run after Maps.m / neurons_and_loss.m to produce Map.pdf, Supp_Map.pdf, and neurons_and_loss_2.pdf in the working directory.
