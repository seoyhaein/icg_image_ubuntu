FROM icg_python_3.7.2 as base

FROM icg_java_1.8
COPY --from=base /usr/bin/ /usr/bin
COPY --from=base /usr/local/bin/ /usr/local/bin
COPY --from=base /usr/local/lib/python3.7 /usr/local/lib/python3.7

