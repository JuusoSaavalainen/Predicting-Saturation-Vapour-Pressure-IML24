# IML24
DATA11002 Introduction to Machine Learning (Autumn 2024) ~ Kaggle competition

[Solution report](https://github.com/JuusoSaavalainen/IML24/blob/main/reports/final_report_group74.pdf)

## Overview

The term project is on the GeckoQ dataset, which has the atomic structures of 31,637 atmospherically relevant molecules resulting from pinene, toluene, and decane oxidation. The training set used in this competition is a subset of 26,637 molecules from the GeckoQ dataset. The test set in this competition is previously unpublished data, fresh from the **LUMI** supercomputer.

The GeckoQ dataset is built to complement data-driven research in atmospheric science. It provides molecular data pertinent to aerosol particle growth and new particle formation (NPF). A critical molecular property related to aerosol particle growth is the saturation vapour pressure (pSat), a measure of a molecule's ability to condense to the liquid phase. Molecules with low pSat and low-volatile organic compounds (LVOCs) are particularly interesting for NPF research; low saturation vapour pressure means a molecule is "sticky" and condenses easily. All the data in GeckoQ pertains to LVOCs. For more information, read:

    Besel V, Todorović M, Kurtén T, Rinke P, Vehkamäki H. Atomic structures, conformers and thermodynamic properties of 32k atmospheric molecules. Sci Data. 2023 Jul 12;10(1):450 https://doi.org/10.1038/s41597-023-02366-x

GeckoQ features important thermodynamic properties for each molecule, computed by time-consuming quantum chemistry simulations: saturation vapour pressures [Pa], the chemical potential [kJ/mol], the free energy of the molecule in the mixture [kJ/mol], and the heat of vaporisation [kJ/mol]. Of these four, the saturation vapour pressures will be the focus of your term project.

### WHY IS THE PROBLEM SIGNIFICANT?
About half of the aerosol particles in the atmosphere are created by the NPF formation process, where vapours condense into atmospheric aerosol particles. Understanding NPF is essential for health and the climate's warming. Aerosols are closely related to air pollution, a significant health problem from which almost all of the earth's population suffers, according to WHO. According to the IPCC report (Section 2.1.1), human drivers (principally aerosols) contribute to global cooling of 0.0°C to 0.8°C (also see IPCC AR6, Fig. 6.12); however, the uncertainties are significant partly due to difficulties in modelling NPF. Molecular properties relevant to NPF, such as saturation vapour pressure, can be computed using computationally expensive quantum chemistry simulations with supercomputers. However, the number of atmospherically relevant molecules is so large that faster methods, such as the regression models you study in this competition, are needed for better NPF models.

We study these topics in our Virtual Laboratory for Molecular Level Atmospheric Transformations (VILMA) Centre of Excellence.
