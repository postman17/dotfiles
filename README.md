примеры 
- https://dotfiles.github.io/inspiration/
- https://github.com/driesvints/dotfiles/blob/main/Brewfile
- https://github.com/webpro/dotfiles/blob/main/Makefile
- https://github.com/holman/dotfiles/blob/master/README.md

## First
```
git clone git@github.com:postman17/dotfiles.git ~/projects/dotfiles
```
## install brew
### перед установкой brew 
```
sudo chown -R konstantin.morozov /usr/local/bin
chmod u+w /usr/local/bin

Ключи для приложений
little snitch - в keepass
adguard - в keepass
Дополнительно поставить без brew
https://www.perplexity.ai/ - в keepass
```
## install zsh
### перед установкой zsh 
```
sudo chown -R konstantin.morozov /usr/local/bin
chmod u+w /usr/local/bin
```
### Переменные окружения для zsh
```
cd zsh
cp .env.example .env
и добавить в .env файл данные
```
### Настройка p10k
```
дополнительная настройка через команду p10k configure
```
## install nvim
### Настрока nvim
```
в nvim через команду :Mason через поиск вима / найти нужный пакет и через кнопку i установить
ставить pyright и linter flake8, форматтеры isort, и gopls
```
## install tmux

### Настройка после установки всего
```
клонируем в папку ~/
git clone https://github.com/postman17/.zsh_history_project.git
и устанавливаем gpg ключи, сами ключи в keepass
```

