#!/usr/bin/env nextflow

nextflow.enable.dsl=2

process SIMPLE_TEST {
    tag "hello_world"

    input:
    path x

    output:
    path "output.txt"

    script:
    """
    echo "Hello from inside the container!" > output.txt
    """
}

workflow {
    Channel.fromPath("dummy.txt") | SIMPLE_TEST
}
