#!/opt/gridview/slurm/bin/sbatch

#SBATCH --account=lchen
#SBATCH --job-name=lchen_FoR_gsm8k
#SBATCH --partition=A100             # 指定分区
#SBATCH --nodes=1                        # 申请一个节点
#SBATCH --ntasks-per-node=1              # 每个节点的任务数
#SBATCH --cpus-per-task=16               # 每个进程使用的CPU数目
#SBATCH --gres=gpu:1                     # 使用一块GPU，如需两块GPU则改为gres=gpu:2
#SBATCH --mail-type=end                  # 邮件通知类型，可选值有：begin, end, fail
#SBATCH --mail-user=chenlin114514@sjtu.edu.cn  # 邮件通知地址
#SBATCH --output=/home/lchen/home/FoR/lchen_run/gsm8k.out  # 设置标准输出的文件路径
#SBATCH --error=/home/lchen/home/FoR/lchen_run/gsm8k.err   # 设置标准错误的文件路径

# 执行的命令
source /home/lchen/miniconda3/etc/profile.d/conda.sh
conda activate FoR

cd /home/lchen/home/FoR/GSM8K
bash bash.sh
