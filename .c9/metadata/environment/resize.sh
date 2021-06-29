{"filter":false,"title":"resize.sh","tooltip":"/resize.sh","ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":29},"end":{"row":6,"column":29},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"87a2ed7b3350a66b49fe2e825cd8ab96c403252a","mime":"application/x-sh","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["#!/bin/bash","","# Specify the desired volume size in GiB as a command line argument. If not specified, default to 20 GiB.","SIZE=${1:-20}","","# Get the ID of the environment host Amazon EC2 instance.","INSTANCEID=$(curl http://169.254.169.254/latest/meta-data/instance-id)","","# Get the ID of the Amazon EBS volume associated with the instance.","VOLUMEID=$(aws ec2 describe-instances \\","  --instance-id $INSTANCEID \\","  --query \"Reservations[0].Instances[0].BlockDeviceMappings[0].Ebs.VolumeId\" \\","  --output text)","","# Resize the EBS volume.","aws ec2 modify-volume --volume-id $VOLUMEID --size $SIZE","","# Wait for the resize to finish.","while [ \\","  \"$(aws ec2 describe-volumes-modifications \\","    --volume-id $VOLUMEID \\","    --filters Name=modification-state,Values=\"optimizing\",\"completed\" \\","    --query \"length(VolumesModifications)\"\\","    --output text)\" != \"1\" ]; do","sleep 1","done","","#Check if we're on an NVMe filesystem","if [ $(readlink -f /dev/xvda) = \"/dev/xvda\" ]","then","  # Rewrite the partition table so that the partition takes up all the space that it can.","  sudo growpart /dev/xvda 1","","  # Expand the size of the file system.","  # Check if we are on AL2","  STR=$(cat /etc/os-release)","  SUB=\"VERSION_ID=\\\"2\\\"\"","  if [[ \"$STR\" == *\"$SUB\"* ]]","  then","    sudo xfs_growfs -d /","  else","    sudo resize2fs /dev/xvda1","  fi","","else","  # Rewrite the partition table so that the partition takes up all the space that it can.","  sudo growpart /dev/nvme0n1 1","","  # Expand the size of the file system.","  # Check if we're on AL2","  STR=$(cat /etc/os-release)","  SUB=\"VERSION_ID=\\\"2\\\"\"","  if [[ \"$STR\" == *\"$SUB\"* ]]","  then","    sudo xfs_growfs -d /","  else","    sudo resize2fs /dev/nvme0n1p1","  fi","fi"],"id":1}]]},"timestamp":1624477210659}