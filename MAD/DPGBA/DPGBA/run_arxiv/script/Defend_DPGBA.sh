##models=(GCN GraphSage GAT)
models=(GCN)
## isolate means the Prune+LD defense method
#defense_modes=(none MAD_feature MAD_embedding MAD_confidence MAD)
defense_modes=(MAD)

## # OGBN-Arixv
 for defense_mode in ${defense_modes[@]};
 do
         python -u run_adaptive.py \
             --dist_thrd=1.5\
             --fluctuation_thrd=0.3\
             --dataset=ogbn-arxiv\
             --homo_loss_weight=500\
             --vs_number=565\
             --hidden=32\
             --test_model=GCN\
             --defense_mode=${defense_mode}\
             --weight_targetclass=1\
             --weight_target=50\
             --epochs=500\
             --k=10\
             --trigger_size=3\
             --weight_ood=50\
             --rec_epochs=300\
             --range=0.1\
             --trojan_epochs=81\
             --defense_thrd=1\
             --bkd_model=DPGBA
 done