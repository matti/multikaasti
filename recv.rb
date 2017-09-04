$stdout.sync = true
require "socket"
require "ipaddr"

MULTICAST_ADDR = "224.0.2.1"
BIND_ADDR = "0.0.0.0"
PORT = 3000

socket = UDPSocket.new
membership = IPAddr.new(MULTICAST_ADDR).hton + IPAddr.new(BIND_ADDR).hton

socket.setsockopt(:IPPROTO_IP, :IP_ADD_MEMBERSHIP, membership)
socket.setsockopt(:SOL_SOCKET, :SO_REUSEPORT, 1)

socket.bind(BIND_ADDR, PORT)

Socket.udp_server_loop_on([socket]) do |msg, source_addr|
  puts msg.inspect
  puts source_addr.inspect
end
