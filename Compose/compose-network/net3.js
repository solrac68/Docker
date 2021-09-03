[
    {
        "Name": "compose-network_net3",
        "Id": "e60accc2a84570a31f3f0a6f2c0e458a406f26e4b54a2021c47f34658e57feb4",
        "Created": "2021-09-03T16:16:06.525247681-05:00",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.16.238.0/24"
                },
                {
                    "Subnet": "2001:3984:3989::/64"
                }
            ]
        },
        "Internal": false,
        "Attachable": true,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "0f721174403900b41c3e57832b11aec56da5a30191f931dcc48171f2c5f4688e": {
                "Name": "client",
                "EndpointID": "3d56f0182a882a3fdb65d7aaf14a1bdcc45d75880d6dc645768f839c38aa6887",
                "MacAddress": "02:42:ac:10:ee:02",
                "IPv4Address": "172.16.238.2/24",
                "IPv6Address": ""
            },
            "185f9825d4c1bdce2d4593ebe94af2e18ef0c7ff3d4d4b042b40eb9fdf1ffb54": {
                "Name": "mongo_db",
                "EndpointID": "11a49ffd5bd00554e73b23aa86acced34891d331919234dbba4d304058797a5b",
                "MacAddress": "02:42:ac:10:ee:0a",
                "IPv4Address": "172.16.238.10/24",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {
            "com.docker.compose.network": "net3",
            "com.docker.compose.project": "compose-network",
            "com.docker.compose.version": "1.26.0"
        }
    }
]
