# multikaasti experiments

```
sudo tcpdump -i en0 icmp
ping -c2 224.0.0.251

20:47:43.072218 IP 192.168.146.61 > 224.0.0.251: ICMP echo request, id 32551, seq 0, length 64
20:47:43.074505 IP 192.168.146.83 > 192.168.146.61: ICMP echo reply, id 32551, seq 0, length 64
20:47:43.183397 IP 192.168.146.63 > 192.168.146.61: ICMP echo reply, id 32551, seq 0, length 64
```
