FROM nesneros/kibana-auth:5.3.0

USER root
RUN echo "xpack.security.enabled: false" >> /etc/kibana/kibana.yml
USER kibana

# See https://github.com/elastic/kibana/issues/6057
# This step might take a few minutes
#RUN /usr/share/kibana/bin/kibana 2>&1 | grep -m 1 "Optimization of .* complete in .* seconds"


