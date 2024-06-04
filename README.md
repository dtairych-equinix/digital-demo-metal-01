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

PLEASE NOTE: this repo creates an SSH key for simplicity.  This should never be done in production as it exposes the key credentials as plain text in the TF state file.  

