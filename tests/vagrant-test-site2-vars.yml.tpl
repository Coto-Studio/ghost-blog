---
ansible_common_remote_group: vagrant

nodejs_version: "18.x"
nodejs_npm_global_packages:
  - ghost-cli

mysql_user_name: root
mysql_user_password: root
mysql_root_password_update: true

mysql_users:
  - name: "op://dev/Ghost Blog/username"
    host: "localhost"
    password: "op://dev/Ghost Blog/password"
    priv: "*.*:ALL"
    state: present

ghost_user: guser
ghost_user_groups:
  - ghost
  - vagrant

ghost_base_dir: /var/www/ghost
ghost_installs:
  - name: Ghost Test Site2
    id: "ghost-test-site2"
    state: started
    database:
      client: "mysql"
      connection:
        user: "op://dev/Ghost Blog/username"
        password: "op://dev/Ghost Blog/password"
    storage:
      npm_package: "ghost-storage-adapter-s3"
      npm_package_version: "2.8"
      accessKeyId: "op://dev/Ghost Blog/Object Storage/Access Key"
      secretAccessKey: "op://dev/Ghost Blog/Object Storage/Secret Key"
      endpoint: "op://dev/Ghost Blog/Object Storage/End Point"
