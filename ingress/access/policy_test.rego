package policy

test_visit_www_jrock_us {
    decision with input as {"attributes": {"request": {"http": {"host": "www.jrock.us"}}}}
}

test_visit_www_jrock_us_from_trusted_ip {
    decision with input as {"attributes": {"request": {"http": {"host": "www.jrock.us"}}, "source": {"address": {"Address": {"SocketAddress": {"address": "66.108.7.125"}}}}}}
}

test_visit_private {
    not decision with input as {"attributes": {"request": {"http": {"host": "private.jrock.us"}}, "source": {"address": {"Address": {"SocketAddress": {"address": "1.2.3.4"}}}}}}
}

test_visit_private_from_trusted_ip {
    decision with input as {"attributes": {"request": {"http": {"host": "private.jrock.us"}}, "source": {"address": {"Address": {"SocketAddress": {"address": "66.108.7.125"}}}}}}
}