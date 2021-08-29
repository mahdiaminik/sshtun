FROM alpine:3
RUN apk add --update --no-cache openssh-client sshpass
ENV SSH_PORT=22
CMD sshpass sshpass -p "$SSH_PASS" ssh -o "StrictHostKeyChecking no" -o ServerAliveInterval=60 -p $SSH_PORT -D 0.0.0.0:$LOCAL_PORT $SSH_USER@$SSH_IP