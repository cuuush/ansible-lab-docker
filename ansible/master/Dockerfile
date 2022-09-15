# MASTER image - used to create the master container to manage hosts

# use builded ansible_base (defined in ../base/Dockerfile) as a starting point
FROM ansible_base:latest

RUN pip3 install ansible

COPY inventory /etc/ansible/hosts/inventory

WORKDIR /var/ans/

# generate RSA key pair to allow master to communicate with managed nodes
RUN ssh-keygen -t rsa -N 12345 -C "master key" -f master_key


COPY entrypoint.sh /var/

RUN chmod 755 /var/entrypoint.sh

ENTRYPOINT /var/entrypoint.sh


