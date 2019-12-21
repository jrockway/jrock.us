package policy
import input.attributes as req

public_sites := {
    "jrock.us": true,
    "www.jrock.us": true,
    "registry.jrock.us": true,
    "ci.jrock.us": true,
}

privileged_sources := {
    "66.108.7.125",
    "192.168.1.5",
    "192.168.1.59",
}

default decision = false

decision {
    some i
    req.request.http.host == i
    public_sites[i]
}

decision {
    some i
    req.source.address.Address.SocketAddress.address == i
    privileged_sources[i]
}
