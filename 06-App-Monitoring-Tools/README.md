# Blackbox Exporte

1. Navigate to correct directory
```
cd blackbox_exporter
```

2. Start the Blackbox Exporte with the .exe file 
```
.\blackbox_exporter.exe
```

3. Open the URL address in your browser
```
http://localhost:9115/probe?target=https://softuni.org
```

# Prometheus

1. Navigate to correct directory
```
cd prometheus
```

2. Create a Prometheus configuration YAML file

3. Start Prometheus server with the configuration file
```
.\prometheus --config.file prometheus.yml
```

4. Open the URL address in your browser
```
http://localhost:9090
```

# Alertmanager

1. Navigate to correct directory
```
cd alertmanager
```

2. Open Webhook.site and copy your unique URL for the Alertmanager configuration
```
https://webhook.site/c843e553-37a8-4639-b94d-20da091367ec
```

3. Create a Alertmanager configuration YAML file

4. Configure and add the alerting rules to the Prometheus configuration

5. Start Alertmanager with the configuration file
```
.\alertmanager --config.file alertmanager.yml
```

6. Open the URL address in your browser
```
http://localhost:9093
```
