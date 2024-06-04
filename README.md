# Performant infrastructure in close proximity to users

Equinix Metal lives in the heart of the internet, combining a high-performant compute platform with incredibly low latency network to end users.  This makes it the perfect foundation to launch distributed applications where user experience is key.

Equinix Metal achieves this network performance by optimising traffic leaving the environment, through a combination of:
- Offloading to Internet Exchanges, both Equinix and 3rd party
- Establishing direct, bilateral peers with high traffic targets
- Aggregating multiple tier 1 carriers upstream
- Operating a dedicated global backbone

Visually, this can be represented as follows:

| ![Equinix Metal Network Diagram](https://deploy.equinix.com/developers/docs/metal/images/layer3-networking/metal-network-diagram.png) | 
|:--:| 
| *Equinix Metal Network Diagram* |

You can read more about the global connectivity that Equinix Metal maintains on PeeringDB: https://www.peeringdb.com/net/5230

Through the combination of these services, Equinix Metal can intelligently steer traffic to a destination using the most appropriate path.

This repo creates an Equinix Metal project, an SSH key and a server that allows users to test this network and showcase the performance of the network that has been built.

*create image of topology*

## Using this repo

To start, clone this repo to a local directory.  

Copy the tfvars.example file and populate with the appropriate values.  The most important values here are the API keys and Organisation ID.  Save this file as terraform.tfvars

```
cp ./tfvars.example ./terraform.tfvars
```

With the variables updated, initialise the repo:

```
terraform init
```

Now that the required providers have been installed.  You can plan the deployment, otherwise, you can just apply it directly:

```
terraform apply --auto-approve
```

Once Terraform completes its deloyment, the output string will allow for a simple way to connect to the server

```
Apply complete! Resources: 6 added, 0 changed, 0 destroyed.

Outputs:

ssh_string = "ssh -i ./private_key root@147.75.82.91"
```

You can copy the quoted string and run it from a terminal in the same directory to connect to the generated server.

Once logged into the Equinix Metal server, you can simply verify the connectivity and latency to a common internet destination, such as Google DNS:

```
ping 8.8.8.8
```

With the successful demonstration of Equinix Metal's native networking capabilities, the environment can be destroyed:

```
terraform destroy --auto-approve
```



PLEASE NOTE: this repo creates an SSH key for simplicity.  This should never be done in production as it exposes the key credentials as plain text in the TF state file.  

