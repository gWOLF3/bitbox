# bitbox

<kbd><img src="./assets/tesseract.png" width=200/></kbd>

### a portable desktop interface for the metanet


### What is this?
Bitbox puts the bitcoin blockchain at your fingertips, or more aptly, in your filesystem. As a user, you can now interact with on chain data in a completely familiar way. 

### How? 
Bitbox is designed around _unwriter's [Bitwork](https://www.bitwork.network/#/), which enables hosts to listen and selectively filter data directly from the Bitcoin P2P network. In turn, using containerization with Kubernetes, it provides a simple mechanism to allow many users to mount on chain data on a native operating system securely.  

### Try it:

<img src="./assets/bitboxv1.gif" alt="bitbox.gif" style="width:400px"/>

**What You'll Need:**
- kubernetes installed on host (minikube recommended for local)
- accessable connection to Bitcoin node for P2P

**Quickstart Commands:**

```
cd charts
kubectl apply -f namespace.yaml
kubectl apply -f bitwork.yaml
kubectl apply -f bitbox.yaml
kubectl get pods -A
minikube service bitbox-http --namespace bitbox
```

*(the last command could change, depending on your hosting platform)*

**Customization:**

Login password can be set with `VNC_PASS` env variable. (default: satoshi) However, in the future login will be done through bitkey/moneybutton integration.

Try changing the `BITCOM` environment variable in the `charts/bitwork.yaml`to your own. You can also unset it alltogether to get the full mempool stream. 

### What's Next?
While this is only a simple demo, it show the potential power of how many users could natively mount bitcoin as a filesystem, and interact with a familiar operating environment; another possible way for full nodes to extract value from the cost of storing data. 




