
# Sanitizing Backdoored Graph Neural Network:A Multidimensional Approach (IJCAI 2025)
An official PyTorch implementation of "Sanitizing Backdoored Graph Neural Network:A Multidimensional Approach" (IJCAI 2025).
  

**ENVIRONMENTS**

  

The packages can be installed by directly run the commands in install.sh by

  


    bash install.sh

  

**RUN**

    bash script/Defend_GTA.sh
    bash script/Defend_UGBA.sh
    bash script/Defend_UGBA_C.sh
    bash script/Defend_DPGBA.sh

**NOTES**
1. Set **'defense_mode=MAD'** to enable the complete outlier detection method, which simultaneously activates feature outlier detection, embedding outlier detection, and probability prediction outlier detection.

2. Set **'defense_mode=MAD_feature'** to enable only feature outlier detection.

3. Set **'defense_mode=MAD_embedding'** to enable only embedding outlier detection.

4. Set **'defense_mode=MAD_confidence'** to enable only probability prediction outlier detection.

5. Set **'defense_mode=none'** to disable any defense method.

If you find this repository to be useful, please consider cite our [paper](). Thank you！

    ###

  

[//]: # (The code is built on [UGBA]&#40;https://github.com/ventr1c/UGBA&#41;.)
