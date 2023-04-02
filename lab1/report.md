---
# Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Лабораторная 1"
author: "Илья Валерьевич Фирстов"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Онакомиться с использованием систем git и markdown


# Задание

Создать документ в markdown; попрактиковаться в работе с системой git

# Теоретическое введение

Markdown (произносится маркдаун) — облегчённый язык разметки, созданный с целью обозначения форматирования в простом тексте, с максимальным сохранением его читаемости человеком, и пригодный для машинного преобразования в языки для продвинутых публикаций (HTML, Rich Text и других). 

Git (произносится «гит») — распределённая система управления версиями. Проект был создан Линусом Торвальдсом для управления разработкой ядра Linux

# Выполнение лабораторной работы

## Часть 1 - Markdown

Создал документ a.md. Для начала добавил заголовки при помощи тэгов # и ##(рис. [-@fig:001])

![Заголовок и подзаголовок](image/1.png){ #fig:001 width=70% }

Затем добавил надписи с жирным и курсивным начертанием текста при помощи * (рис. [-@fig:002])

![Жирное и курсивное начертание](image/2.png){ #fig:002 width=70% }

После добавления цитаты при помощи >, я добавил несколько разных списков - пронумерованные и обычные, и с вложенными списками(рис. [-@fig:003])

![Списки и цитата](image/3.png){ #fig:003 width=70% }

Затем в документ был добавлен код на языке python, примеры использования верхних и нижних индексов и формула(рис. [-@fig:004])

![Код, индексы и формула](image/4.png){ #fig:004 width=70% }

После этого при помощи утилиты pandoc файл md был преобразован в pdf(рис. [-@fig:005])

![Преобразование в pdf](image/5.png){ #fig:005 width=70% }

Полученный файл был открыт и содержал все нужные элементы(рис. [-@fig:006])

![Открытие pdf](image/6.png){ #fig:006 width=70% }

## Часть 2 - git

На ресурсе github я создал репозиторий для загрузки лабораторных работ(рис. [-@fig:007])

![Репозиторий](image/7.png){ #fig:007 width=70% }

Затем, склонировав его себе на компьютер, я изменил файл readme и закоммитил его в репозиторий(рис. [-@fig:010])

![Репозиторий](image/10.png){ #fig:007 width=70% }

Это отразилось в логах - git status показывает все коммиты(рис. [-@fig:008])

![git status](image/8.png){ #fig:007 width=70% }

Потом я создал новую ветку test(рис. [-@fig:008])

![ветка test](image/9.png){ #fig:007 width=70% }

# Выводы

Я ознакомился с использованием языка разметки markdown и системы контроля версий git. На сервисе github создал репозиторий для загрузки лабораторных работ.

# Список литературы{.unnumbered}

::: {#refs}
:::
