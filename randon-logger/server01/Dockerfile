FROM alpine:3.12

#Set Timezone
#RUN apk add tzdata
#RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
#RUN echo "America/Sao_Paulo" >  /etc/timezone

RUN apk add --no-cache bc
COPY ./entrypoint.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "100", "5000" ]