#!/bin/bash
docker run -it busybox /bin/sh -c "while sleep 0.01; do wget --no-check-certificate -q -O- http://fibonachi.5el.com.ua; done"