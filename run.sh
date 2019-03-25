#cp gpgpusim.config_l100 gpgpusim.config
#./mnistCUDNN |tee xx10_l100

cp gpgpusim.config_l200 gpgpusim.config
./mnistCUDNN |tee xx10_l200

cp gpgpusim.config_l400 gpgpusim.config
./mnistCUDNN |tee xx10_l400

cp gpgpusim.config_l800 gpgpusim.config
./mnistCUDNN |tee xx10_l800

