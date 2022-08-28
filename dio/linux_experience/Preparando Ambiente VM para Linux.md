# Preparando Ambiente VM para Linux 🚀

1.  Abrir o cmd como Administrador no Windows.
2. Digite o comando bcdedit.
3.  Localize a linha contendo a opção hypervisorlaunchtype.
4. Se a linha do comando estiver como off não precisa fazer nada caso não use o comando abaixo.
5. bcdedit /set hypervisorlaunchtype off
6. Vá em painel de controle e abra a opção Recursos do Windows e habilite a opção "Plataforma do Hiperviser do Windows caso ela esteja desabilitada".