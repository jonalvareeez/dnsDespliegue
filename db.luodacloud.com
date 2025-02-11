$TTL 86400
@   IN  SOA luodacloud.com. admin.luodacloud.com. (
        20240211    ; Serial
        3600        ; Refresh
        1800        ; Retry
        604800      ; Expire
        86400 )     ; Minimum TTL

; Servidores de nombres
@       IN  NS  ns1.luodacloud.com.
@       IN  NS  ns2.luodacloud.com.

; Direcciones IP de los servidores
ns1     IN  A   192.168.122.1
ns2     IN  A   10.0.2.15

; Registros de servicios
www     IN  A   192.168.122.1
mail    IN  A   10.0.2.15

; Registro MX (correo)
@       IN  MX  10 mail.luodacloud.com.

; Alias
ftp     IN  CNAME   www
