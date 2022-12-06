
hostname_or_ip_address=$1
if ping -q -c 1 -W 1 wind2 >/dev/null 2>&1; then
    echo "$hostname_or_ip_address is alive"
else
    echo "$hostname_or_ip_address is pining for the fjords"
fi
