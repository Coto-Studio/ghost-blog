---
ghost_user: "" 

ghost_base_dir: ""
ghost_installs:
  - name: Ghost Test Site2
    id: ghost-test-site2
    local: true
    themes_dev: []
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
