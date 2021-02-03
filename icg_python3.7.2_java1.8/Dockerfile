FROM icg_python_3.7.2 as python_images

FROM icg_java_1.8
COPY --from=python_images /usr/bin/ /usr/bin
COPY --from=python_images /usr/local/bin/ /usr/local/bin
COPY --from=python_images /usr/local/lib/python3.7 /usr/local/lib/python3.7

RUN apt-get clean
