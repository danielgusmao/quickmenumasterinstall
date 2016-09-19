#!/bin/bash
#  ---------------------------------------------------------------------
#      @Author:  Elizeu Marino
#
#                Rio de Janeiro    Cel: +55 21 ###-###-###
#                Brasil            Tel: +55 21 ####-####
#                E-Mail: elizeumarino@gmail.com
#                www.elizeulog.blogspot.com
#                http://br.linkedin.com/in/elizeumarino
#                https://telegram.me/TI_Brasil
#  ---------------------------------------------------------------------
#
#      @Filesource: menumaster.sh
#      @Date _____: 17.09.2016
#      @Version __: 2.0
#
#      Copyright(c) 2016
#  ---------------------------------------------------------------------
#      @Description : Script de Instalação Padrão desvio condicional
#                     Para Ubuntu e Linux Mint com Zenity
#  ---------------------------------------------------------------------

clear
if [ "`id -u`" != "0" ] ; then
gksudo $0
exit
fi
menu ()	{
#Inicio Menu

Escolha=$(zenity  --title="MENU MASTER" --width=600 --height=500 --list \
--text "Escolha uma opção ! " \
--radiolist  --column "Pick" \
--column "Opção" \
FALSE  "Instalar Java Oracle" \
FALSE "Instalar Terminal Terra" \
FALSE "Instalar PPA Mananger" \
FALSE "Instalar VLC media player" \
FALSE "Instalar Ubuntu Tweak" \
FALSE "Instalar Plank Dock" \
FALSE "Instalar Libreoffice" \
FALSE "Instalar Grub Customize" \
FALSE "Instalar Midnight Commander" \
FALSE "Instalar Geany Multi Editor - Develope Editor" \
FALSE "Instalar Bleachbit- Utilitario de limpeza" \
FALSE "Instalar My Wather Indicator - Só funciona no Ubuntu Unity" \
FALSE "Instalar Conky e Conky Mananger" \
FALSE "SAIR"
); echo $Escolha

Funcao_Escolha
#Fim Menu
}

Funcao_Executar () {
# EXEMPLO PARA REPOSITORIOS
# COMANDO='sudo add-apt-repository ppa:ricotz/docky'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'

# EXEMPLO PARA ATUALIZACAO DE REPOSITORIOS
# COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'

# EXEMPLO PARA INSTALACAO DE APLICATIVOS E PROGRAMAS
# COMANDO='sudo apt-get -y install plank'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Plank Dock...... Por favor aguarde...'

	Barra_Progresso () {
		tail -f $0 | zenity --progress --width=400 --height=100 --title "$TITULO" --pulsate --auto-close --auto-kill --text "$TEXTO"
	}

Barra_Progresso "Aguarde..." & sudo $COMANDO
killall tail
zenity --info --width=400 --height=100 --title " ...::: OBRIGADO ! :::..." --text " Obrigado por usar Quick Master Menu Install"
}

	Funcao_Escolha ()
	{
	case $Escolha in
		"Instalar Java Oracle")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Java Oracle... "
			echo "----------------------------------------------------------------------"
			echo ;

			COMANDO='sudo add-apt-repository -y ppa:webupd8team/java && sudo apt-get -y update'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar

			COMANDO='sudo apt-get -y install oracle-java8-installer'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Oracle-Java8...... Por favor aguarde...'
			Funcao_Executar
			#sudo apt-get install oracle-java8-installer;
			COMANDO='sudo apt-get -y install oracle-java8-set-default'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Oracle-Java8-set-default...... Por favor aguarde...'
			Funcao_Executar
			#sudo apt-get install oracle-java8-set-default;;
		menu ;;

		"Instalar Terminal Terra")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Terminal Terra... "
			echo "----------------------------------------------------------------------"
			echo ;
			#sudo add-apt-repository ppa:ozcanesen/terra-terminal;
			#sudo apt-get update && sudo apt-get install terra;
		menu ;;

		"Instalar PPA Mananger")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando PPA Mananger... "
			echo "----------------------------------------------------------------------"
			echo ;
			# EXEMPLO PARA REPOSITORIOS
			# COMANDO='sudo add-apt-repository ppa:ricotz/docky'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'

			# EXEMPLO PARA ATUALIZACAO DE REPOSITORIOS
			# COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'

			# EXEMPLO PARA INSTALACAO DE APLICATIVOS E PROGRAMAS
			# COMANDO='sudo apt-get -y install plank'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Plank Dock...... Por favor aguarde...'

			COMANDO='sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager && sudo apt-get -y update'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			#sudo add-apt-repository ppa:webupd8team/y-ppa-manager
			#sudo apt-get update
			#sudo apt-get install y-ppa-manager
			COMANDO='sudo apt-get -y install y-ppa-manager'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando PPA-Manager... Por favor aguarde...'
			Funcao_Executar
		menu ;;

		"Instalar VLC media player")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando VLC media player"
			echo "----------------------------------------------------------------------"
			echo ;
			COMANDO='sudo add-apt-repository -y ppa:videolan/stable-daily && sudo apt-get -y update'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			# sudo add-apt-repository ppa:videolan/stable-daily && sudo apt-get update
			# sudo apt-get dist-upgrade && sudo apt-get install vlc browser-plugin-vlc
			COMANDO='sudo apt-get -y dist-upgrade && sudo apt-get -y install vlc browser-plugin-vlc'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando VLC Media Player..... Por favor aguarde...'
			Funcao_Executar
		menu ;;

		"Instalar Ubuntu Tweak")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Ubuntu Tweak... "
			echo "----------------------------------------------------------------------"
			echo ;
			#sudo add-apt-repository ppa:tualatrix/ppa
			#sudo apt-get update
			#sudo apt-get install ubuntu-tweak
		menu ;;

		"Instalar Plank Dock")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Plank Dock... "
			echo "----------------------------------------------------------------------"
			echo ;
			sudo add-apt-repository ppa:ricotz/docky | zenity --progress --title " ..:: Instalando Repositorio ::.. " --pulsate --auto-close --text " Acidionando Repositorio...... Por favor aguarde..."
			sudo apt-get update | zenity --progress --title " ..:: Atualizando Repositorios ::.. "  --auto-close --text " Atualizando Repositorios...... Por favor aguarde..."
			sudo apt-get install plank | zenity --progress --title " ..:: Instalando ::.. " --pulsate --auto-close --auto-kill --text " Instalando Plank Dock...... Por favor aguarde..."
		menu ;;

		"Instalar Libreoffice")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Libreoffice... "
			echo "----------------------------------------------------------------------"
			echo ;
			#sudo add-apt-repository ppa:libreoffice/ppa -y && sudo apt-get update
			#sudo apt-get dist-upgrade
			#sudo apt-get install libreoffice-l10n-pt-br
		menu ;;

		"Instalar Grub Customize")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Grub Customize... "
			echo "----------------------------------------------------------------------"
			echo ;
			#sudo add-apt-repository ppa:danielrichter2007/grub-customizer
			#sudo apt-get update
			#sudo apt-get install grub-customizer
			sudo add-apt-repository ppa:danielrichter2007/grub-customizer && sudo apt-get update && sudo apt-get install grub-customizer
		menu ;;

		"Instalar Midnight Commander")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Midnight Commander... "
			echo "----------------------------------------------------------------------"
			echo ;
			#sudo apt-get -y install mc
		menu ;;

	   "Instalar Geany Multi Editor - Develope Editor")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "          Instalando Geany Multi Editor - Develope Editor... "
			echo "----------------------------------------------------------------------"
			echo ;
			#sudo apt-get -y install geany*
		menu ;;

	   "Instalar Bleachbit- Utilitario de limpeza")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "            Instalando Bleachbit- Utilitario de limpeza... "
			echo "----------------------------------------------------------------------"
			echo ;
			#ENTRA=$(zenity --password --title='Identificação do Usuario')

			#ENTRA=$(zenity --entry --title='Identificação do Usuario' --text='Digite a senha para instalação do aplicativo');
			#SENHA=$(echo $ENTRA | cut -d "|" -f 2)

			#sudo apt-get install bleachbit
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y install bleachbit'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando bleachbit...... Por favor aguarde...'
			Funcao_Executar
		menu ;;

	   "Instalar My Wather Indicator - Só funciona no Ubuntu Unity")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "    Instalando My Wather Indicator - Só funciona no Ubuntu Unity... "
			echo "----------------------------------------------------------------------"
			echo ;
			# sudo add-apt-repository ppa:atareao/atareao
			# sudo apt-get update
			# sudo apt-get install my-weather-indicator
		menu ;;

		"Instalar Conky e Conky Mananger")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "    Instalando Conky e Conky Manager 2... "
			echo "----------------------------------------------------------------------"
			echo ;
			COMANDO='echo ${SENHA}\n | sudo add-apt-repository ppa:ricotz/docky'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='echo ${SENHA}\n | sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
			# sudo add-apt-repository ppa:teejee2008/ppa
			# sudo apt-get update
			# sudo apt-get install conky conky-manager
		menu ;;

	"SAIR")	clear
	zenity --info --title " ...::: Obrigado!!! Bye Bye!!! :::... " --width=400 --height=100 --text=" \n Mais já ta indo?\n Fica mais um pouco, Vai ter Bolo! \o/\n\n Obrigado por Utilizar o Quick Menu Install\n Thanks you for Use Quick Menu Install\n\n Tank you!\n Elizeu Marino  "
			echo ;
			echo "______________________________________________________________________"
			echo " "
			echo "       Mais já ta indo? Fica mais um pouco, "
			echo "              Vai ter Bolo! \o/ "
			echo "           Saindo... Bye... Tchau... :( "
			echo " "
			echo "       Obrigado por Utilizar o Quick Menu Install"
			echo "       Thanks you for Use Quick Menu Install "
			echo " "
			echo "       Tank you! Elizeu Marino."
			echo " "
			echo "______________________________________________________________________"
			echo ;
			# zenity --info --title "$TITULO" --text "Nenhum pacote foi escolhido. O script será encerrado, obrigado."


		;;


		esac
	}
menu
