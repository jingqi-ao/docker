# Docker host

Use init_script.sh to perform basic configurations:
- Install Ansible

```
ssh -i key.pm ubuntu@1.2.3.4 -C "rm -rf ~/init_script.sh"
scp -i key.pm init_script.sh ubuntu@1.2.3.4:~
ssh -i key.pm ubuntu@1.2.3.4 -C "sudo ~/init_script.sh"
```

Use Ansible to further configure the VM to the final "Ready to use" state
