#To run bash script

bash_execute:
    script:
        - mkdir myfolder
        - cp ./basic.sh myfolder/
        - cd myfolder
        - bash ./basic.sh
        - touch newfile
    artifacts:
        paths:
            - "./myfolder"
        when: on_success
        access: all
        expire_in: 30 days
