# Dataset Description

Here are the files which you'll be using for the term project:
## Files

    train.csv - the training set
    test.csv - the test set
    sample_submission.csv - a sample submission file in the correct format

The following columns present a detailed picture of the interpretable features associated with each of the molecules that are present in the dataset:
Columns

    ID - A unique molecule index used in naming files. [Do not use ID as a covariate: ID is a random number for the test data!]
    log_pSat_Pa- Logarithmic saturation vapour pressure of the molecule calculated by COSMOtherm (Pa).
    MW - The molecule's molecular weight (g/mol).
    NumOfAtoms - The number of atoms in the molecule.
    NumOfC - The number of carbon atoms in the molecule.
    NumOfO- The number of oxygen atoms in the molecule.
    NumOfN- The number of nitrogen atoms in the molecule.
    NumHBondDonors - "The number of hydrogen bond donors in the molecule i.e. hydrogens bound to oxygen."
    parentspecies- Either “decane”, “toluene”, “apin” for α-pinene, or a combination of these connected by an underscore to indicate ambiguous descent. In 243 cases, the parent species is “None” because retrieving it was impossible.
    NumOfConf- The number of stable conformers found and successfully calculated by COSMOconf.
    NumOfConfUsed- The number of conformers used to calculate the thermodynamic properties.
    C = C (non-aromatic)- The number of non-aromatic C = C bounds found in the molecule.
    C = C-C = O in non-aromatic ring- The number of C = C-C = O structures found in non-aromatic rings in the molecule.
    hydroxyl (alkyl) - The number of the alkylic hydroxyl groups found in the molecule.
    aldehyde- The number of aldehyde groups in the molecule.
    ketone - The number of ketone groups in the molecule.
    carboxylic acid - The number of carboxylic acid groups in the molecule.
    ester - The number of ester groups in the molecule.
    ether (alicyclic)- The number of alicyclic ester groups in the molecule.
    nitrate - The number of alicyclic nitrate groups in the molecule.
    nitro - The number of nitro ester groups in the molecule.
    aromatic hydroxyl - The number of alicyclic aromatic hydroxyl groups in the molecule.
    carbonylperoxynitrate - The number of carbonylperoxynitrate groups in the molecule.
    peroxide - The number of peroxide groups in the molecule.
    hydroperoxide- The number of hydroperoxide groups in the molecule.
    carbonylperoxyacid- The number of carbonylperoxyacid groups found in the molecule
    nitroester- The number of nitroester groups found in the molecule

Target variable

    log_pSat_Pa- saturation vapour pressure.
