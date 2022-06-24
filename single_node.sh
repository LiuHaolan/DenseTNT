OUTPUT_DIR=models.densetnt.node.single; \
GPU_NUM=0; \
python src/run.py --argoverse --future_frame_num 30 \
	  --do_train --data_dir ../data/train/data/ --output_dir ${OUTPUT_DIR} \
	  --reuse_temp_file  --hidden_size 128 --train_batch_size 64 --use_map --temp_file_dir models.densetnt.0 \
	      --core_num 32 --use_centerline --distributed_training ${GPU_NUM} \
	        --other_params \
		    semantic_lane direction l1_loss \
		        goals_2D enhance_global_graph subdivide lazy_points new laneGCN point_sub_graph \
			    stage_one stage_one_dynamic=0.95 laneGCN-4 point_level-4-3 complete_traj complete_traj-3 \
