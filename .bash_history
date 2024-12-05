ls
cd keys
ls -lrt
rm keys
exit
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
ansible --version
cd /etc/ansible
ls -lrt
vim hosts
sudo vim hosts
cd
ls
mkdir keys
ls lrt
cd keys
ls
chmod 40 devops_ansible.pem
chmod 400 devops_ansible.pem
ansible servers -m ping
cd ..
mkdir proj1
cd prj1
cd proj1
git clone https://github.com/iam-veeramalla/ansible-zero-to-hero/tree/main/Day-03/03-first-playbook
vim index.htl
vim index.html
ls
vim first-playbook.yaml
ls -lrt
vim inventory.ini
vim first-playbook.yaml
ls -lrt
ansible-playbook -i inventory.ini first-playbook.yaml 
ansible -i inventory.ini -m ping
sudo ansible -i inventory.ini -m ping
less inventory.ini
sudo vim /etc/ansible/hosts
ansible all -m ping
ansible-playbook first-playbook.yaml 
