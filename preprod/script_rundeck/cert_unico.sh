#!/bin/bash
QAADM_KEY=/opt/web/ansible/production/clone/.key/teste2.pem
ANSIBLE="sudo docker exec -it ansible2.3 ansible-playbook -i"
ESTEIRA="preprod"
YML_DIR="playbooks"
DOMAIN="/opt/web/ansible/production/certificado/${ESTEIRA}/${YML_DIR}/"
ADM="playbook_Cert_unico.yml"
INV="inv"

${ANSIBLE} ${DOMAIN}${INV} ${DOMAIN}${ADM} --private-key=${QAADM_KEY} 
