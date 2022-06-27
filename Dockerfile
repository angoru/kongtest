from kong/deck

COPY kong.yaml kong.yaml

ENTRYPOINT ["deck sync"]