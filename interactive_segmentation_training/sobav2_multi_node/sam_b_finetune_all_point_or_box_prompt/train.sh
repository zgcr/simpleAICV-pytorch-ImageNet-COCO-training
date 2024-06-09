# master node
NCCL_SOCKET_IFNAME=eth0 NCCL_IB_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.run --nproc_per_node=2 --nnodes=2 --node_rank=0 --master_addr=172.17.0.6 --master_port=10000 ../../../tools/train_interactive_segmentation_model_multi_node.py --work-dir ./
# # worker node1
# NCCL_SOCKET_IFNAME=eth0 NCCL_IB_DISABLE=1 CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.run --nproc_per_node=2 --nnodes=2 --node_rank=1 --master_addr=172.17.0.6 --master_port=10000 ../../../tools/train_interactive_segmentation_model_multi_node.py --work-dir ./