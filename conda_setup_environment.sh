ENV_NAME="test_env"

conda config --add channels conda-forge
conda config --set channel_priority strict
conda update -y conda
conda install mamba --yes
conda create --yes --quiet --name $ENV_NAME
mamba install --name $ENV_NAME python=$PYTHON_VERSION --yes
mamba env update --name $ENV_NAME --file conda_environment.yml
mamba env update --name $ENV_NAME --file conda_environment_dev.yml
conda info
conda list -n $ENV_NAME
