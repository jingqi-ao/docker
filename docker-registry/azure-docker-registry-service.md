
# Login and logout

For simplicity, use subscription-level Service Principal (SP)

```
docker login REGISTRY_NAME.azurecr.io -u SP_APPLICATION_ID -p SP_SECRET

docker logout REGISTRY_NAME.azurecr.io
```