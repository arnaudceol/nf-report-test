nextflow.enable.dsl=2

process foo {

    publishDir 'reports/' 

    output:
      path 'report.txt'

    script:
      """
      echo "This is my report" > report.txt
      """
}


workflow {
    foo()
}
