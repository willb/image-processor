FROM quay.io/willbenton/image-processor:two-topics

ADD app.py /opt/app-root
WORKDIR /opt/app-root

EXPOSE 8080

LABEL io.k8s.description="image processor" \
      io.k8s.display-name="image-processor-service" \
      io.openshift.expose-services="8080:http" 

USER 185

ENTRYPOINT ["python3"]

CMD ["./app.py"]