#!/usr/bin/env nextflow

nextflow.enable.dsl=2

process {
    container = 'ghcr.io/rwtaylor/nf-nanoporeits:latest'
}

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
    // Use $projectDir to reference the file relative to the script's location
    Channel.fromPath("${projectDir}/dummy.txt") | SIMPLE_TEST
}
