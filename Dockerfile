# Use the Nextflow image as the base
FROM nextflow/nextflow:24.04.4

# copy sh file
COPY run-nextflow.sh /usr/local/bin/entry.sh


# download runtime
RUN chmod 755 /usr/local/bin/entry.sh \
 && nextflow info

# define the entry point
ENTRYPOINT ["/usr/local/bin/entry.sh"]