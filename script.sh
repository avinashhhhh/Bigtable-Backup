#!/usr/bin/env bash

set -x
# trap read debug

# sudo apt-get install apt-transport-https ca-certificates gnupg
echo "sudo apt-get install apt-transport-https ca-certificates gnupg"
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
echo "curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -"
sudo apt-get update -y && sudo apt-get install google-cloud-sdk 
# status = $(sudo apt-get update && sudo apt-get install google-cloud-sdk )
#   if [[ -n $status ]]; then
#     echo "Installed the google-cloud-sdk"
#     exit 0
#   else
#     echo "google-cloud-sdk is previously installed on this system"
#   fi

gcloud config set account bigtable-backup-read-write@tour-de-sol.iam.gserviceaccount.com
echo "gcloud config set account bigtable-backup-read-write@tour-de-sol.iam.gserviceaccount.com"
gcloud config set project tour-de-sol
gcloud config configurations list

# # cd /home/
# # echo "$(file_path "$0")"
# declare file_path="$0"
# echo "file path is: "$file_path""
# cd file_path

# #declaring a variable to store the value of the vaiable from the .yml file
# # echo "$(snp "$TESTNET_SERVICE_ACCOUNT_JSON")"
# declare snp="$TESTNET_SERVICE_ACCOUNT_JSON"
# echo "snp is "$snp""
# pwd

#printing credentials inside the file
# cat << EOF >> testnet_bt_readwrite.json
# echo "$snp"
# EOF

 sudo ifconfig
sudo ls /var/lib/buildkite-agent/builds/metrics-solana-com-3/testing-bigtable/bigtable-backup/
sudo ls /var/lib/buildkite-agent/builds/metrics-solana-com-3/testing-bigtable/
sudo ls /var/lib/buildkite-agent/builds/metrics-solana-com-3/
sudo ls /var/lib/buildkite-agent/builds/
sudo ls /var/lib/buildkite-agent

sudo ls /home/anmesh/

# touch testnet_bt_readwrite.json
# cat <<< "$TESTNET_SERVICE_ACCOUNT_JSON" > testnet_bt_readwrite.json
# ls

touch testnet_bt_readwrite.txt
cat <<< "$TESTNET_SERVICE_ACCOUNT_JSON" > testnet_bt_readwrite.txt
ls

#reading the content of the file
cat testnet_bt_readwrite.json
head testnet_bt_readwrite.json

# cat testnet_bt_readwrite.txt
# head testnet_bt_readwrite.txt

#printing the pwd and also the content of the directory
# echo "pwd is: "pwd""
ls
export GOOGLE_APPLICATION_CREDENTIALS=/var/lib/buildkite-agent/testnet_bt_readwrite.json
sudo gcloud auth activate-service-account bigtable-backup-read-write@tour-de-sol.iam.gserviceaccount.com --key-file=/home/avnshrai40_gmail_com/read_write.json
echo Success
exit 0
