nextflow.enable.dsl=2

process foo {
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
