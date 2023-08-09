---
ghost_user: dewittn
ghost_installs:
  - name: Ghost Test Site2
    dir: /Users/dewittn/Programing/dewittn/Ghost/ghost-test-site2
    type: local
    server:
      port: 2368
    themes_dev:
      - name: writer
        src: ~/Programing/dewittn/Ghost/nr-ghost
      - name: dandelion
        src: ~/Programing/dewittn/Ghost/dandelion
    database:
      client: "mysql2"
      connection:
        host: "localhost"
        user: "op://dev/Ghost Blog/username"
        priv: "*.*:ALL"
        password: "op://dev/Ghost Blog/password"
        database: "ghost_test_site2"
    storage:
      npm_package: "ghost-storage-adapter-s3"
      npm_package_version: "2.8"
      accessKeyId: "op://dev/Ghost Blog/Object Storage/Access Key"
      secretAccessKey: "op://dev/Ghost Blog/Object Storage/Secret Key"
      bucket: "ghost-test-site2"
      endpoint: "op://dev/Ghost Blog/Object Storage/End Point"
    # mail:
    #   transport: "SMTP"
    #   options:
    #     service: "mailgun"
    #     host: "smtp.mailgun.com"
    #     port: 465
    #     secure: "true"
    #     auth:
    #       user: "op://dev/Ghost Blog/SMTP-nr.com/username"
    #       pass: "op://dev/Ghost Blog/SMTP-nr.com/password"
