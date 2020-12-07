FROM ibmcom/websphere-traditional
#Copy local data to local tWAS image
# This is a comment in file
RUN echo "This is a comment to terminal"
COPY app.ear /work/config/app.ear
COPY install_app.py /work/config/install_app.py
COPY was-config.props /work/config/was-config.props
#Script that starts the magic of deploy and config in the docker image
RUN env JVM_EXTRA_CMD_ARGS=-Xnoloa /work/configure.sh
