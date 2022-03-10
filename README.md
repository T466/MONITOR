# Monitor
Captura de processos

Sabe aquele servidor que alarmou de madrugada CPU ou Memória e você viu o alerta só de manhã ?
Com os scripts abaixo você será capaz de investigar qual aplicação ou banco de dados consumiu os
recursos.

# Configurando
1 - Envie os arquivos monitor.sh e compact.sh para /etc;
2 - Aplique a permissão 775 para execução;
3 - Defina a execução na cron do compact.sh para 1 vez ao dia
    e o  monitor.sh  para cada 5 min.

Ex:
0 5 * * * /etc/compact
*/5 * * * * /etc/monitor
 
Para analisar basta acessar /var/log/Process  e analisar os arquivos process-XXXXXXXX-XXXX.
Ou mesmo descompactar os arquivos Process-file-XXXXXXXX-XXXX.tar.gz, para validar os arquivos
com mais de 1 dia.
