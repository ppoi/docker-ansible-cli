FROM alpine:3.11
RUN apk add --no-cache ansible
ENV PLAYBOOK=playbook.yml \
    INVENTORY=inventory
VOLUME /workspace
WORKDIR /workspace
CMD /usr/bin/ansible-playbook ${PLAYBOOK} -i ${INVENTORY}