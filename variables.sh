# Set values for variables
AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-us-east-1}
AWS_AVAIL_ZONE=${AWS_AVAIL_ZONE:-us-east-1b}
DOMAIN_NAME=${DOMAIN_NAME:-your-domain.com}
CLUSTER_MASTER_SIZE=${CLUSTER_MASTER_SIZE:-t2.medium}
CLUSTER_NODE_SIZE=${CLUSTER_NODE_SIZE:-t2.micro}

# Find and replace for variables in script files

sed -i \
    -e "s,\${AWS_DEFAULT_REGION\},$AWS_DEFAULT_REGION,g" \
    -e "s,\${AWS_AVAIL_ZONE\},$AWS_AVAIL_ZONE,g" \
    -e "s,\${DOMAIN_NAME\},$DOMAIN_NAME,g" \
    -e "s,\${CLUSTER_MASTER_SIZE\},$CLUSTER_MASTER_SIZE,g" \
    -e "s,\${CLUSTER_NODE_SIZE\},$CLUSTER_NODE_SIZE,g" /home/vagrant/jenkins-with-kubernetes-slaves/scripts/*.sh