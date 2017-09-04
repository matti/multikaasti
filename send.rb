require "socket"

MULTICAST_ADDR = "224.0.2.1"
PORT = 3000

socket = UDPSocket.open
#                                                 1: prevent forward outside of local (multicast ttl 1)
socket.setsockopt(:IPPROTO_IP, :IP_MULTICAST_TTL, 1)
socket.send(ARGV[0], 0, MULTICAST_ADDR, PORT)
socket.close
