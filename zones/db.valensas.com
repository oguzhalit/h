$TTL    604800
@       IN      SOA     okd4-services.valensas.com. admin.valensas.com. (
                 14     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800     ; Negative Cache TTL
)

; name servers - NS records
    IN      NS      okd4-services.valensas.com.

; name servers - A records
okd4-services.valensas.com.          IN      A       10.34.53.10

; OpenShift Container Platform Cluster - A records
okd4-bootstrap.cloud.valensas.com.        IN      A      10.34.53.16
okd4-master-0.cloud.valensas.com.        IN      A      10.34.53.20
okd4-master-1.cloud.valensas.com.         IN      A      10.34.53.21
okd4-master-2.cloud.valensas.com.         IN      A      10.34.53.22
okd4-worker-0.cloud.valensas.com.        IN      A      10.34.53.100
okd4-worker-1.cloud.valensas.com.        IN      A      10.34.53.101
okd4-worker-2.cloud.valensas.com.        IN      A      10.34.53.102


; OpenShift internal cluster IPs - A records
api.cloud.valensas.com.    IN    A    10.34.53.10
api-int.cloud.valensas.com.    IN    A    10.34.53.10
*.apps.cloud.valensas.com.    IN    A    10.34.53.10
etcd-0.cloud.valensas.com.    IN    A     10.34.53.20
etcd-1.cloud.valensas.com.    IN    A     10.34.53.21
etcd-2.cloud.valensas.com.    IN    A    10.34.53.22
console-openshift-console.apps.cloud.valensas.com.     IN     A     10.34.53.10
oauth-openshift.apps.cloud.valensas.com.     IN     A     10.34.53.10

; OpenShift internal cluster IPs - SRV records
_etcd-server-ssl._tcp.cloud.valensas.com.    86400     IN    SRV     0    10    2380    etcd-0.cloud
_etcd-server-ssl._tcp.cloud.valensas.com.    86400     IN    SRV     0    10    2380    etcd-1.cloud
_etcd-server-ssl._tcp.cloud.valensas.com.    86400     IN    SRV     0    10    2380    etcd-2.cloud

