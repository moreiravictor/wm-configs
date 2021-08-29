#colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[1;36m'
NC='\033[0m'
YELLOW='\033[1;33m'

echo "${CYAN} configuring redshift"

echo "${YELLOW}copying config file to ${CYAN}~/.config/redshift"
cp $PWD/redshift/redshift.conf ~/.config/redshift/redshift.conf

echo "${YELLOW}file copied${NC}"