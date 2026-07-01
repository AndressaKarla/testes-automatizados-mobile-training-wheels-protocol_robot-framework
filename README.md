---
# :test_tube: Projeto de Testes Funcionais Automatizados Mobile Android | Robot Framework v6.1.1 | AppiumLibrary v2.0.0 | Python v3.8.1 | Emulador do Android Studio
---
# :information_source: Introdução
Este projeto "testes-automatizados-mobile-training-wheels-protocol_robot-framework" é executado no ambiente local do appium desktop e no ambiente de testes do aplicativo mobile Android ["Training Wheels Protocol - twp.apk"](./apps/android); no Sistema Operacional Windows 11, desenvolvido para o curso "Introdução ao Appium com Robot Framework para Android Apps" da "QANinja Academy" e com o objetivo de praticar ainda mais testes automatizados mobile android em Robot Framework v6.1.1, AppiumLibrary v2.0.0, Python v3.8.1 e Emulador do Android Studio.

---
# :warning: _Instruções considerando Windows 11, para outras versões do Windows ou outros sistemas operacionais talvez seja necessário algumas adaptações_

# Antes de clonar ou executar esse projeto localmente no computador, é necessário seguir as instruções abaixo :point_down:

## :hammer_and_wrench: Instalar algumas dependências necessárias 
### Janela do "Explorador de Arquivos" > "Visualizar" > "Mostrar" e marcar algumas opções
- No Windows 11, abrir uma janela do "Explorador de Arquivos"
- Clicar em "Visualizar" > "Mostrar"
- Clicar em "Extensões de nomes de arquivos" 
- Clicar em "Itens ocultos"

### Baixar e instalar o git e gitbash; configurar o git
- Caso ainda não tenha o git e gitbash baixado e instalado, acessar o link do [git e gitbash](https://git-scm.com/download/win), baixar e instalar como administrador
- Caso ainda não tenha configurado o git, seguir os passos apresentados neste link ["Configure a ferramenta"](https://training.github.com/downloads/pt_BR/github-git-cheat-sheet/#:~:text=Configure%20a%20ferramenta) e configurar

### Desinstalar Python que já foi instalado em algum outro momento
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos" > "Aplicativos instalados", no campo de pesquisa, informar "Python" e/ou "Python Launcher"
- Clicar no resultado apresentado
- Clicar em "..." > "Desinstalar" e prosseguir com as etapas de desinstalação
- Na janela do "Explorador de Arquivos", acessar o diretório "C:", procurar e remover a pasta "Python ..."
- Acessar o diretório "C:\Program Files", procurar e remover a pasta "Python ..."
- Acessar o diretório "C:\Program Files (x86)", procurar e remover a pasta "Python ..."
- Acessar o diretório "C:\Users\usuario\AppData\Local\Programs", procurar e remover a pasta "Python ..."
- Acessar o diretório "C:\Users\usuario\AppData\Roaming", procurar e remover a pasta "Python ..."

### Desinstalar e/ou remover robotframework que já foi instalado em algum outro momento
- Na janela do "Explorador de Arquivos", acessar o diretório "C:\Users\usuario", procurar e remover o arquivo ".robotframework-ls"

### Python versão 3.8.1 (x86)
- Baixar o python-3.8.1 do ["Windows x86 executable installer"](https://www.python.org/ftp/python/3.8.1/python-3.8.1.exe)
- Clicar com botão direito no executável "python-3.8.1.exe" > "Mostrar mais opções" > "Executar como administrador"
- Marcar "Use admin privileges when instaling py.exe" e "Add Python 3.8 to PATH" caso ainda não estejam marcadas
- Clicar em "Customize installation"
- Em "Optional Features", marcar todas as opções caso ainda não estejam marcadas
- Em "Advanced Options", marcar "Install for all users"
- Em "Customize install location" alterar para "C:\Python38"
- Prosseguir com as outras etapas de instalação
- Abrir um novo gitbash ou outro terminal como administrador, informar o comando abaixo para confirmar se o python realmente foi instalado
```
python --version
```
- E verificar se foi retornada a mesma versão do python do "Windows x86 executable installer" instalada anteriormente:
> Python 3.8.1
- Informar o comando abaixo para verificar se foi retornada alguma versão e confirmar se o pip (gerenciador de pacotes do python) realmente foi instalado
```
pip --version
```
- Fechar este gitbash ou terminal

### Desinstalar Appium Desktop que já foi instalado em algum outro momento 
- Seguir os passos apresentados neste [link](https://www.google.com/search?q=desinstalar+completamente+appium+desktop+e+res%C3%ADduos+windows+11+pt-br+sem+programas+terceiros)

### Desinstalar Android Studio que já foi instalado em algum outro momento 
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos" > "Aplicativos instalados", no campo de pesquisa, informar "Android Studio"
- No resultado apresentado, clicar em "..." > "Desinstalar" e prosseguir com as etapas de desinstalação
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório "C:\Program Files", procurar e remover a pasta "Android"
- Acessar o diretório "C:\Users\usuario", procurar e remover:
  - ".gradle"
  - ".android"
  - ".AndroidStudio"
  - ".AndroidStudioProjects"
  - ".MyApplication"
- Acessar o diretório "C:\Users\usuario\AppData\Local", procurar e remover as pastas "Android" e/ou "Android Open Source Project" 

### Desinstalar Java que já foi instalado em algum outro momento 
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos" > "Aplicativos instalados", no campo de pesquisa, informar "Java 8" e/ou "Java SE"
- No resultado apresentado, clicar em "..." > "Desinstalar" e prosseguir com as etapas de desinstalação
- Na janela do "Explorador de Arquivos", acessar o diretório "C:\Program Files", procurar e remover a pasta "Java"
- Acessar o diretório "C:\Users\usuario\AppData\LocalLow", procurar e remover as pastas "Oracle" > "Java"

### Java versão 8 e variável de ambiente "JAVA_HOME"
- Criar uma conta e/ou fazer login com alguma conta já existente no site da ["Oracle"](https://signon.oracle.com/signin)
- Acessar "Java archive" > "Java SE downloads" > "Java SE 8 (8u... and later)"
- Acessar "Java SE Development Kit 8u..." > "Windows x64 Installer" 
- Baixar e instalar o java 8 ("jdk-8u…-windows-x64.exe")  
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório "jdk-1.8..."

Ex.: 
```
C:\Program Files\Java\jdk-1.8
```
- Copiar este diretório
- Na ferramenta de pesquisa do Windows, informar "Editar as variáveis de ambiente do sistema" 
- Clicar na sugestão apresentada 
- Clicar em "Variáveis de Ambiente..." 
- Em "Variáveis do sistema", clicar em "Novo" e informar:
```
Nome da variável = JAVA_HOME
Valor da variável = <diretório\copiado\anteriormente>
```
Ex.: 
```
Nome da variável = JAVA_HOME
Valor da variável = C:\Program Files\Java\jdk-1.8
```
- Em "Variáveis do sistema", clicar em "Path" 
- Clicar em "Editar" 
- Clicar em "Novo"
- Informar: 
```
%JAVA_HOME%\bin 
```
- Clicar em "OK" de cada tela
- Abrir um novo gitbash  
- Informar o comando abaixo para confirmar se o java (jre - ambiente de execução do java) realmente foi instalado
```
java -version
```
- Verificar se foi retornada a mesma versão do java instalada anteriormente:
> 1.8...
- Informar o comando abaixo para confirmar se o javac (jdk - kit de desenvolvimento java) realmente foi instalado e corretamente configurado nas variáveis de ambiente
```
javac -version
```
- Verificar se foi retornada a mesma versão do javac instalada anteriormente:
> 1.8...
- Fechar este gitbash

### Android Studio 191.5791312
- Teclar "Ctrl + Shift + Esc" para abrir o "Gerenciador de Tarefas" 
- Clicar no menu à esquerda para expandir
- Clicar em "Desempenho'
- Verificar se "Virtualização" = "Habilitado" 
  - Caso "Virtualização" seja diferente de "Habilitado"
    - Reiniciar o computador
    - Ir teclando "F1", "F2" (ou alguma outra tecla "Fx" de acordo com o modelo do seu computador) para acessar a BIOS   
    - Acessar o menu "Security" (ou algum outro menu com nome semelhante) usando as setas do teclado 
    - Acessar todas as opções "Virtualization", "VT-x" (ou algum outro nome semelhante) usando as setas do teclado
      - Teclar "Enter"
      - Escolher "Enabled" (ou alguma outra opção com nome semelhante)
      - Teclar "Enter" para confirmar a alteração
    - Teclar "F10" (ou alguma outra tecla "Fx" indicada nas instruções da BIOS) para salvar e sair  
- Baixar e instalar o Android Studio deste [link](https://drive.google.com/file/d/1W_HI7-qw5eqiZ40Kvtb2tll1rI3GR6Vc/view?usp=sharing) 
> Obs.: A versão deste link ou versões anteriores do android studio tem SDK para ser usado na configuração do emulador, versões mais atuais disponíveis para download no site oficial aparentemente não tem mais o sdk
- Caso seja apresentado, concordar com os termos e condições
- Ir clicando em "Next", “Install”, “Finish”, etc
- Em "Import Android Studio Settings”, marcar "Do not import settings” caso ainda não esteja marcado
- Clicar em "OK"
- Ir clicando em "Next", “Next”, etc
- Clicar em "Darcula”
- Ir clicando em "Next", "Finish", etc
- Confirmar as mensagens que forem sendo apresentadas
- Clicar em "Finish"
- Clicar em "Start a new Android Studio project" > "Basic Activity"
- Clicar em "Next"
- Informar:
> Language = Java
> 
> Minimum SDK = API 27: Android 8.1 (Oreo)
- Clicar em "Finish"
- Aguardar o carregamento completo do projeto
- Com o Android Studio aberto, no canto superior direito, clicar no ícone de pesquisa e informar "SDK Manager"
- Em "SDK Platforms", clicar em "Android 8.1 (Oreo)"
- Clicar em "SDK Tools"
- Marcar os itens abaixo (caso estejam desmarcados):
  - Android SDK Build-Tools
  - Android Emulator
  - Android Emulator [hypervisor driver (installer) ou Accelerator (HAXM instaler) ou algum outro nome semelhante]
  - Android SDK Command-line Tools (latest)
  - Android SDK Platform-Tools
- Clicar em “OK”
- Em “Confirm Change”, clicar em “OK”
- Selecionar cada item, e clicar em “Accept”
- Aguardar a conclusão dessas instalações
- Ir clicando em “Next”, “Finish”, etc
- No canto superior direito, clicar no ícone de pesquisa e informar "AVD Manager"
- Caso tenha algum emulador já existente, clicar no item de seta para baixo > "Delete"
- Em "Confirm Deletion", clicar em "Yes"
- Clicar em "Create Virtual Device"
- Em "Choose a device definition", clicar em:
> Category = Phone
> 
> Name = Pixel 2
- Clicar em "Next"
- Em “Select a system image” > “Release Name = Oreo” e “Target = Android 8.1 (Google Play)”, clicar em "Download" caso seja apresentado
- Em “Component Installer”, clicar em “Finish"
- Selecionar “Release Name = Oreo” e “Target = Android 8.1 (Google Play)"
- Clicar em "Next"
- Em "Verify Configuration” > "AVD Name", trocar o nome já preenchido por:
```
Celular - Pixel 3a - Android 8.1 - API 27
```
- Copiar este "AVD Name"
- Clicar em "Show Advanced Settings"
- Informar:
> Boot option = Cold boot
- Clicar em "Finish"
- Caso esteja conectado a alguma VPN, desconectar, para evitar problema de não conexão de internet dentro do emulador
- Em "Android Virtual Device Manager", "Celular - Pixel 3a ..." e "Actions", clicar no ícone verde de execução do emulador
- Após ter sido iniciado o emulador, arrastar a tela para cima
- Clicar no navegador "Chrome"
- Caso seja apresentada mensagem de enviar dados estatísticos para o google, desmarcar ou rejeitar
- Realizar login com usuário e senha do google configurado para testes
- Caso sejam apresentadas mensagens para realizar backup e/ou para adicionar algum número de telefone, desmarcar ou rejeitar
- Ir clicando nos botões de confirmação apresentados
- Retornar para a tela de home do emulador
- Arrastar a tela para cima
- Clicar em "Settings"
- No campo de pesquisa, informar "Languages"
- Clicar em "Languages & input"
- Clicar em "Languages"
- Clicar em "Add a language"
- No campo de pesquisa, informar "Portugues"
- Clicar em "Português"
- Clicar em "Brasil"
- Arrastar "Português" para cima para ser a 1º linguagem
- Retornar para a tela anterior
- Retornar para a tela anterior
- No campo de pesquisa, informar "Data e hora"
- Clicar em "Data e hora automáticas"
- Desmarcar "Fuso horário automático"
- Clicar em "Selecionar fuso horário"
- Clicar nos 3 pontinhos > "Classificar em ordem alfabética"
- Clicar em "São Paulo"
- Verificar se a data e hora do emulador está igual ou semelhante a data e hora do computador
- Retornar para a tela anterior
- No campo de pesquisa, informar "Tela"
- Clicar em "Tela"
- Clicar em "Suspensão"
- Clicar em "30 minutos"
- Retornar para a tela de home do emulador
- NÃO fechar o emulador 
- NÃO fechar o Android Studio

### Variáveis de ambiente "ANDROID_HOME"
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório "Sdk"

Ex.: 
> C:\Users\usuario\AppData\Local\Android\Sdk

- Copiar este diretório
- Na ferramenta de pesquisa do Windows, informar "Editar as variáveis de ambiente do sistema" 
- Clicar na sugestão apresentada 
- Clicar em "Variáveis de Ambiente..." 
- Em "Variáveis do sistema", clicar em "Novo" e informar:
```
Nome da variável = ANDROID_HOME
Valor da variável = <diretório\copiado\anteriormente>
```
Ex.: 
```
Nome da variável = ANDROID_HOME
Valor da variável = C:\Users\usuario\AppData\Local\Android\Sdk
```
- Em "Variáveis do sistema", clicar em "Path" 
- Clicar em "Editar" 
- Clicar em "Novo"
- Informar: 
```
%ANDROID_HOME%\bin 
```
- Clicar em "Novo"
- Informar: 
```
%ANDROID_HOME%\platform-tools
```
- Clicar em "Novo"
- Informar: 
```
%ANDROID_HOME%\tools
```
- Clicar em "Novo"
- Informar: 
```
%ANDROID_HOME%\tools\bin
```
- Clicar em "Novo"
- Informar: 
```
%ANDROID_HOME%\tools\lib
```
- Clicar em "OK" de cada tela
- Abrir um novo gitbash
- Informar o comando abaixo para serem apresentados os emuladores ou dispositivos físicos conectados ao computador
```
adb devices
```
- Verificar se foi retornado as informações abaixo:

| List of devices   | attached                     | 
| :-----            | :--------------------------- | 
| emulator-....     | device                       | 

- Copiar o udid "emulator-...."
- Fechar este gitbash

### Desinstalar completamente Node.js e npm que já foram instalados em algum outro momento 
- Seguir os passos apresentados neste [link](https://www.google.com/search?q=desinstalar+completamente+nodejs+e+res%C3%ADduos+windows+11+pt-br+sem+programas+terceiros)
  
### Node versão 18.12.1
- Baixar e instalar o [node v18.12.1](https://nodejs.org/dist/v18.12.1/) > node-v18.12.1-x64.msi
- Abrir um novo gitbash  
- Informar o comando abaixo para confirmar se o node realmente foi instalado
```
node --version
```
- Verificar se foi retornada a mesma versão do node instalada anteriormente:
> v18.12.1
- Informar o comando abaixo para confirmar se o npm realmente foi instalado
```
npm --version
```
- E verificar se foi retornada essa mesma versão do npm:
> 8.19.2
- Fechar este gitbash 

### Servidor do Appium 1.17.1
- Abrir um novo gitbash 
- Informar o comando abaixo para instalar o servidor do appium v1.17.1 globalmente
```
npm install -g appium@v1.17.1
```
- Informar o comando abaixo para confirmar se o servidor do appium realmente foi instalado
```
appium --version
```
- Verificar se foi retornada a mesma versão do servidor do appium instalada anteriormente:
> 1.17.1
- Fechar este gitbash

### Appium Doctor 1.15.3
- Abrir um novo gitbash 
- Informar o comando abaixo para instalar o appium-doctor v1.15.3 globalmente
```
npm install -g appium-doctor@v1.15.3
```
- Informar o comando abaixo para confirmar se o appium-doctor realmente foi instalado
```
appium-doctor --version
```
- Verificar se foi retornada a mesma versão do appium-doctor instalada anteriormente:
> 1.15.3
- Informar o comando abaixo para realizar um diagnóstico se o computador está apto para criar sessões do appium com android
```
appium-doctor --android
```
- Verificar se foi retornado ícones de check roxos em todas as informações apresentadas em "Diagnostic for necessary dependencies ..."
- Fechar este gitbash

### Appium Desktop 1.17.1-1
- Baixar e instalar o [appium desktop v1.17.1-1](https://github.com/appium/appium-desktop/releases/tag/v1.17.1-1) > "Assets", "Appium-windows-1.17.1-1.exe"
- No Appium Desktop aberto, clicar em "Start Server ..."

---
# :hammer_and_wrench: Clonar o projeto 
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório onde será clonado o projeto "testes-automatizados-mobile-training-wheels-protocol_robot-framework"
- Copiar esse diretório
- Abrir um novo gitbash
- Informar o comando abaixo para acessar onde será clonado o projeto
```
cd "<diretório\copiado\anteriormente>"
```
Ex.: 
```
cd "C:\Projetos\Automação"
```
- Informar o comando abaixo para clonar este repositório via "HTTPS"

```
git clone https://github.com/AndressaKarla/testes-automatizados-mobile-training-wheels-protocol_robot-framework.git
```

- Ou informar o comando abaixo para clonar este repositório via "SSH"

```
git clone git@github.com:AndressaKarla/testes-automatizados-mobile-training-wheels-protocol_robot-framework.git
```
- Fechar este gitbash

# :hammer_and_wrench: Instalar mais algumas dependências necessárias  
- Abrir uma janela do "Explorador de Arquivos"
- Abrir um novo gitbash como administrador
- Acessar o diretório onde foi clonado o projeto "testes-automatizados-mobile-training-wheels-protocol_robot-framework" 
- Copiar esse diretório 
- Abrir um novo gitbash
- Informar o comando abaixo para acessar o projeto "testes-automatizados-mobile-training-wheels-protocol_robot-framework" 
```
cd "<diretório\copiado\anteriormente>"
```
Ex.: 
```
cd "C:\Projetos\Automação\testes-automatizados-mobile-training-wheels-protocol_robot-framework"
```
- Informar o comando abaixo para instalar mais algumas dependências necessárias do projeto 
```
pip install -r requirements.txt
```

# :hammer_and_wrench: Instalar as extensões no Visual Studio Code (VS Code)
- Caso ainda não tenha o VS Code baixado e instalado, acessar o site do [Visual Studio Code](https://code.visualstudio.com/download), baixar e instalar com a opção "System Installer"
- Com o Visual Studio Code aberto, caso seja apresentado alguma mensagem de "Instalar pacote de idiomas ...", clicar no ícone de configurações > "Don't Show Again"
- Clicar em "Manage" > "Profiles" > "Create Profile"
- Em "Profile name", informar "Robot Framework Mobile"
- Clicar em "Create"
- Clicar em "Extensions", informar e instalar as extensões abaixo:
  - One Dark Pro 
    - binaryify
      - Nas opções apresentadas, clicar em "One Dark Pro Darker" para habilitar a extensão
  - Material Icon Theme
    - Philipp Kief
      - Clicar em "Material Icon Theme" apresentada para habilitar a extensão 
  - Python
    - Microsoft
  - RobotCode - Robot Framework Support 
    - Daniel Biehl
      - Clicar em "Ignore" apresentada para habilitar a extensão
- Fechar o VS Code

# :bookmark_tabs: Abrir o VS Code diretamente na pasta do projeto "testes-automatizados-mobile-training-wheels-protocol_robot-framework"
- No gitbash aberto como administrador anteriormente, informar o comando abaixo para abrir o VS Code diretamente na pasta do projeto "testes-automatizados-mobile-training-wheels-protocol_robot-framework"
```
code .
```
- Aguardar o VS Code ser aberto
- Fechar este gitbash
- No VS Code aberto, caso seja apresentado "Do you trust the authors on the files in this folder?", marcar "Trust the authors of all files in the parent folder ...."
	- Clicar em "Yes, I trust the authors ...."
- Acessar "apps" > "android" 
- Clicar com botão direito do mouse sob o arquivo "twp.apk" > "Reveal in File Explorer" 
- Na janela do "Explorador de Arquivos" aberta automaticamente, copiar este diretório
- Abrir algum editor de texto (Bloco de Notas, etc)
- Colar o diretório copiado anteriormente
- Adicionar "\twp.apk"

Ex.: 
```
C:\Projetos\Automação\testes-automatizados-mobile-training-wheels-protocol_robot-framework\apps\android\twp.apk
```

- Adicionar mais uma barra invertida "\\" às barras invertidas já existentes

Ex.: 
```
C:\\Projetos\\Automação\\testes-automatizados-mobile-training-wheels-protocol_robot-framework\\apps\\android\\twp.apk
```

- Copiar o diretório que foi adicionado mais uma barra invertida "\\" às barras invertidas já existentes
- Fechar o editor de texto sem salvar
- NÃO fechar o VS Code

---
## :hammer_and_wrench: Desired Capabilities
- No Appium Desktop aberto e iniciado o servidor anteriormente, clicar no ícone "Start Inspector Session"
- Maximizar a tela de "Inspector Session" 
- Em "Desired Capabilities" > "JSON Representation", clicar no ícone de edição
- Apagar "{}"
- Colar
```
{
  "automationName": "UiAutomator2",
  "platformName": "Android",
  "deviceName": "Emulador Mobile - <"AVD Name" copiado da configuração do Android Studio anteriormente>",
  "app": "<diretório que foi adicionado mais uma barra invertida "\" às barras invertidas já existentes, copiado anteriormente>",
  "udid": "<udid "emulator-...." copiado de "List of devices" anteriormente>"
}
```

Ex.: 
```
{
  "automationName": "UiAutomator2",
  "platformName": "Android",
  "deviceName": "Emulador Mobile - Celular - Pixel 3a - Android 8.1 - API 27",
  "app": "C:\\Projetos\\Automação\\testes-automatizados-mobile-training-wheels-protocol_robot-framework\\apps\\android\\twp.apk",
  "udid": "emulator-5554"
}
```
- Clicar no ícone de salvar
- Clicar em "Save As"
- Em "Name", informar:
```
twp_robot-framework_android
```
- Clicar em "Start Session"
- Clicar no ícone "Refresh Source & Screenshot"
- Verificar se foi apresentada a tela inicial "QA Ninja Training Wheels Protocol Mobile Version" na tela de "Inspector Session" do Appium Desktop e no emulador do Android Studio
- Fechar a tela de "Inspector Session" do Appium Desktop
- NÃO fechar o Appium Desktop
- NÃO fechar o emulador 
- NÃO fechar o Android Studio

---
# :dart: Executar testes automatizados mobile e Gerar os resultados dos testes no computador
## :triangular_flag_on_post: Executar cada cenário individualmente do projeto no ambiente local do appium desktop e no ambiente de testes na apk do aplicativo; Gerar e armazenar reports html e xml na pasta "reports" no computador
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório onde foi clonado o projeto “testes-automatizados-mobile-training-wheels-protocol_robot-framework”
- Copiar esse diretório 
- Abrir um novo gitbash
- Informar o comando abaixo para acessar o projeto "testes-automatizados-mobile-training-wheels-protocol_robot-framework"
```
cd "<diretório copiado anteriormente>"
```
Ex.: 
```
cd "C:\Projetos\Automação\testes-automatizados-mobile-training-wheels-protocol_robot-framework"
```
- Informar o comando abaixo para executar cada cenário individualmente do projeto:
```
robot -d ./reports -i nome_tag ./tests/*
```
Ex.:
```
robot -d ./reports -i home_avengers ./tests/*
```
Ou
```
robot -d ./reports ./tests/funcionalidade_test.robot
```
Ex.: 
```
robot -d ./reports ./tests/home_avengers_test.robot
```

---
# :mag_right: Verificar os resultados das execuções dos testes automatizados mobile no computador 
## :bookmark_tabs: Um dos reports html no computador
- No VS Code aberto anteriormente, acessar "reports" > "log.html" 
- Clicar com botão direito do mouse sob o arquivo "log.html" > "Reveal in File Explorer" 
- Na janela do "Explorador de Arquivos" aberta automaticamente, clicar 2 vezes sob o arquivo "log.html" gerado e armazenado anteriormente no computador para ser aberto e verificado no navegador padrão

---
### Feito com ❤️ por Andressa Karla :wave: 

### [![Medium](https://img.shields.io/badge/-Medium-595D60?style=plastic&logo=Medium&logoColor=white&link=https://medium.com/@andressakarla)](https://medium.com/@andressakarla) [![Linkedin](https://img.shields.io/badge/-LinkedIn-595D60?style=plastic&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/andressakarla/)](https://www.linkedin.com/in/andressakarla/)

---
