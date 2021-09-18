# use
```
rm proxy.log && kill `pidof proxy` 
curl -L https://mirrors.host900.com/https://raw.githubusercontent.com/snail007/goproxy/master/install_auto.sh | bash \
&& proxy http -p ":9090" --forever --log proxy.log --daemon \
&& cat proxy.log


mkdir packstreamhhs && cd packstreamhhs \
&& wget https://raw.githubusercontent.com/xuchengcheng926/packetstream/main/pack2fly.sh -O pack2fly.sh \
&& chmod +x pack2fly.sh \
&&./pack2fly.sh "2LTg" "http:\/\/IP:9090" \
&& docker-compose logs
```
