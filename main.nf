nextflow.enable.dsl=2

process foo {

    publishDir '/hpcscratch/ieo/ieo3004/' 

    output:
      path 'report.txt'

    script:
      """
      echo "done!!!" > report.txt
      """
}


workflow {
    foo()
}
