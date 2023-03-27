#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { BRACKENBUILD } from '../../../../modules/nf-core/brackenbuild/main.nf'

workflow test_brackenbuild {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    BRACKENBUILD ( input )
}
