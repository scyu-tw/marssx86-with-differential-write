#PBS -l nodes=1:ppn=1:marss
cd /home/phd/liurs/task/MarssDramsim/marss.dramsim;
if [ ! -d "/tmp2/MarssPower_mx/" ]; then
	mkdir /tmp2/MarssPower_mx/
fi
cp /home/phd/liurs/Image/8g/470.lbm.qcow /tmp2/MarssPower_mx/470.lbm.w80.r80.b32.qcow;
./script/exedir/470.lbm.w80.r80.b32.sh;
unlink /tmp2/MarssPower_mx/470.lbm.w80.r80.b32.qcow; 