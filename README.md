qlcommand
=========================================
Este script "rompe" Ubuntu Desktop.
Al ejecutar este script, la sesión seguirá funcionando sin problemas. Luego, al apagar el equipo y volver a iniciar, no iniciará más.
Este script hace unos cambios muy simples en gdm (el gestor de pantallas de GNOME).

¿Dónde funciona?
---------------------------
Funciona siempre y cuando se tenga instalado gdm3.

¿Cómo solucionar?
---------------------------
Se debe ingresar en modo recuperación como root y ejecutar:
chown -R gdm /var/lib/gdm3
