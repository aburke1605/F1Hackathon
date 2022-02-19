if [ ! -f "setup/miniconda.sh" ]; then
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O setup/miniconda.sh
fi

bash setup/miniconda.sh -b -p setup/envs &&
(
    source setup/envs/bin/activate
    conda env create -f setup/env.yaml -n base
)