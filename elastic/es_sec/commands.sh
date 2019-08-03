docker-compose -f create-certs.yml run --rm create_certs

docker-compose up -d

WAIT(){ test $(docker inspect --format "{{json .State.Health }}" es01 | jq .Log[0].ExitCode) -eq 0 && echo ok || (echo "waiting helth_check"; sleep 1; WAIT) }
WAIT

docker exec es01 /bin/bash -c "bin/elasticsearch-setup-passwords \
auto --batch \
-Expack.security.http.ssl.certificate=certificates/es01/es01.crt \
-Expack.security.http.ssl.certificate_authorities=certificates/ca/ca.crt \
-Expack.security.http.ssl.key=certificates/es01/es01.key \
--url https://localhost:9200"

