## Initial setup
### make up the docker compose
Pull the repose
```
git clone <repo-name>
cd vault-config
docker compose pull
docker compose up -d
```

### login and configure authentication for the vault

step 1:  open (http://localhost:8200)[http://localhost:8200] (* 8200 port by default is used you can changes as per your need*)
    if you are using in vm or remote host then (http://<remote-ip>:8200)[http://<remote-ip>:8200]
![login-dashboard](manual-screenshots/1.0-dasboard-login.png)

step 2: Download your key

![down-load-key](manual-screenshots/1.1-generating-key.png)

step -3 : unseal your key
use the base64 key from downloaded json
![unsealing-key](manual-screenshots/1.2-unsealing-vault.png)

step -4 : login via token
![login-via-token](manual-screenshots/1.3-login-via-token.png)

step -5 : Access the dashboard
![dashboard-tour](manual-screenshots/1.4-dashboard-tour.png)

## Customizing the configuration
## initializing secrets for many environemnt
step -1 : here is the list of custom created environment. To add or creat click on **enable new-engine**
![alt text](manual-screenshots/2.1-creating-multiple-environment.png) 


step -2 : select KV
![alt text](manual-screenshots/2.2-selecting-kv.png) 

step -3 : write your environment name
![alt text](manual-screenshots/2.3-configuiring-env-name.png)

## creating custom policy

[polic-tenplate](policy-template)

there are many policy-template which are given on ```docker-config/policy-template/```

step-1 : creating policy
![list-of-policy](manual-screenshots/3.0-admin-policy.png)

step-2: you can copy paste the policy some tempaltes are given on repoisotry. Edit names **staging,development or production** based on your condition or requirement
 ![pasting-config](manual-screenshots/3.1-admin-policy.png) 
stpe-2.1 : your can also upload via-file
 ![upload-via-file](manual-screenshots/3.1.1-admin-policy-file-upload.png) 
 
 step-3 : finalizing the changes
 ![checking-configured-policy](manual-screenshots/3.2-admin-polic-lists.png)

 ### configuring users

step -1 : enable userpass logi9n so that we can login via username and password
 ![alt text](manual-screenshots/4.0-user-access.png)
  ![alt text](manual-screenshots/4.1-user-name-and-password.png) 
  ![alt text](manual-screenshots/4.2-enable-userpass.png) 

step -2 :  creating users and attaching policy accordingly
  ![alt text](manual-screenshots/4.3-list-of-authentication.png)
   ![alt text](manual-screenshots/4.4-creating-user-adding-policy.png) 

step-3 : testing users login
   ![alt text](manual-screenshots/4.5-testing-created-user-login.png) 
   ![alt text](manual-screenshots/4.6-login-usera.png)