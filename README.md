### Aug 15, 2016:
* not working on MacBook Pro OS X version 10.9.5
* try another Mac
* why is QEMU always a pain ?
* it sure would be nice if Nerves left these applets in Busybox:
  * ```ping, ifconfig, hostname, ps, df, du``` and so on
  * at least during dev/test
  * they seem aware that developers are on OS X or Linux
* network setup info:
  * [nerves_system_qemu_arm](https://github.com/nerves-project/nerves_system_qemu_arm)
  * [setup-nat-network-for-qemu-macosx](https://blog.san-ss.com.ar/2016/04/setup-nat-network-for-qemu-macosx)

***

# HelloNetwork

Configures the primary network interface using [DHCP] and announces itself
on the network using [SSDP].

You can start this example and then find your device on the network using the
`cell` command-line tool (see the [`cell-tool`] project).

## Usage

### Testing DNS name resolution

There is a `HelloNetwork.test_dns` function that you can call in the IEx
console to check that your Nerves device indeed has successfully established
network connectivity and that DNS name resolution works. The expected output
when DNS resolution is available is something like this:

    iex(1)> HelloNetwork.test_dns
    {:ok,
     {:hostent, 'nerves-project.org', [], :inet, 4,
      [{192, 30, 252, 154}, {192, 30, 252, 153}]}}

## Limitations

Supports only [IPv4LL] and DHCP addressing (no interface for static IPv4
configuration yet).

## Roadmap

- [ ] Add documentation.
- [ ] Add support for static IPv4 configuration.
- [ ] Add test cases.

[DHCP]:        https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol
[SSDP]:        https://en.wikipedia.org/wiki/Simple_Service_Discovery_Protocol
[`cell-tool`]: https://github.com/nerves-project/cell-tool
[IPv4LL]:      https://en.wikipedia.org/wiki/Zero-configuration_networking#Link-local_IPv4_addresses
