# Use an official Python image
FROM python:3-alpine

# Install the Linode CLI
RUN pip3 install linode-cli boto3 --upgrade

RUN mkdir -p /backup/mongo /backup/mariadb /var/opt/mssql/backup/

# Install the boto library for Linode's Object Storage service
# RUN pip3 install 

# Set the entry point to the Linode CLI help command
# ENTRYPOINT ["linode-cli", "--help"]