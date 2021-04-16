# Качество и Метрология Программного Обеспечения (группа 7304)

## Таблица текущего состояния сдачи работ

| ##   | ФИО           | Github               | lab1  | lab2  | lab3  | lab4  | lab5  | lab6  |
| ---- | ------------- | -------------------- | ----- | ----- | ----- | ----- | ----- | ----- |
| 1    | Абдульманов   | eduard1abdulmanov123 | 07.04 | 11.04 | 16.04 |       |       |       |
| 2    | Ажель         | IliaAzhel            | 15.04 | 15.04 | 16.04 |       |       |       |
| 3    | Давыдов       | SpceForMind          | 08.04 | 15.04 | 16.04 |       |       |       |
| 4    | Дементьев     | MikelDementyev       | 11.04 | 15.04 | 16.04 |       |       |       |
| 5    | Есиков        | esiole               | 04.03 | 11.04 | 16.04 |       |       |       |
| 6    | Каляева       | AngelinaKalyaeva     | 04.03 | 11.04 | 16.04 | 16.04 |       |       |
| 7    | Комаров       | godor1333            | 11.04 |       | 16.04 |       |       |       |
| 8    | Кошманов      | NikitaKoshmanov      | 15.04 | 16.04 | 16.04 | 16.04 |       |       |
| 9    | Моторин       | Evgenijjjj           | 15.04 |       | 16.04 |       |       |       |
| 10   | Нгуен Куанг   | levi218              | 21.03 | 15.04 | 16.04 |       |       |       |
| 11   | Нгуен Тхи Тху | Duyen38              | 21.03 | 15.04 | 16.04 |       |       |       |
| 12   | Овчинников    |                      |       |       |       |       |       |       |
| 13   | Петруненко    | DmitryPetr           | 11.04 | 15.04 | 16.04 |       |       |       |
| 14   | Пэтайчук      | NikitaPetaichuk      | 21.03 | 11.04 | 16.04 |       |       |       |
| 15   | Сергеев       | Villain123           | 08.04 | 15.04 | 16.04 |       |       |       |
| 16   | Соколов       | sokolarab            | 15.04 | 16.04 |       |       |       |       |
| 17   | Субботин      | DesMy                | 11.04 | 16.04 | 16.04 |       |       |       |
| 18   | Шарапенков    | smokfyz              | 07.04 | 15.04 | 16.04 |       |       |       |
| 19   | Юруть         | KateYurut            | 08.04 | 16.04 | 16.04 |       |       |       |

## Распространенные проблемы

[Перечеслены вот тут](./FAQ.md)


## Правила работы с репозиторием (прочитайте внимательно!)

 - Для начала работы каждый студент делает форк (fork) репозитория на свой GitHub аккаунт.
Каждый студент работает строго в своей директории firstname/ , где firstname - название директории в соотвтествии с вашей фамилией в таблицей, начинающаяся со **маленькой** буквы. Работа в чужих директориях **строго-настрого запрещается**.

> Как сделать так, чтобы этого не произошло? Не надо синхронизировать свой репозиторий с master-веткой origin-репозитория. Не надо делать fetch-и с origin-репозитория или тем более fork-ов ваших коллег. Сделали один раз fork -- с ним и работаете, в своей директории. Не надо удалять никаких файлов: ни чужих, ни своих с других веток, например. Не надо выполнять merge своих веток лишний раз, ибо это просто излишне. Работаете вы в отдельных ветках для каждой из лабораторных. Все это -- настоятельные советы, которые должны нивелировать возможность конфликтов при работе. Большая просьба их соблюдать, уважая время и труд ваших коллег.

- Для каждой лабораторной требуется создавать отдельную директорию lab#, где # - номер - лабораторной от 1 до 7. Пример устройства корневой директории курса:

```
.
├── efremov
│   ├── lab1
│   │   ├── report.pdf
│   │   ├── report.odt
│   │   └── source.asm
│   └── lab2
│   │   ├── report.pdf
│   │   ├── report.odt
│   │   └── source.asm
├── ivanova
│   ├── lab1
│   │   ├── report.pdf
│   │   ├── report.odt
│   │   └── source.asm
│   └── lab2
│   │   ├── report.pdf
│   │   ├── report.odt
│   │   └── source.asm
└── README.md
```

- Внутри должны находиться:
    - Исходный код лабораторных программ;
    - Отчет в формате pdf по шаблону с [сайта университета](https://etu.ru/ru/studentam/dokumenty-dlya-ucheby/). Отчеты, оформленные иначе приниматься не будут. Не тратьте наше общее время.

> На всякий случай, каковы требования к оформлению: 14й шрифт Times New Roman (или похожий, например, свободный шрифты Linux Libertine или Liberation Serif), 1.5 строки интервал, красная строка; заголовки должны иметься для каждого из разделов докумета, имеют такой же 14pt шрифт, выделяются жирным; обязательные разделы: цель работы, ход выполнения, ответы на вопросы (пожалуйста, пишите сами формулировки вопросов перед ответами!), выводы; копирование текста методички в отчет вовсе не требуется; все изображения и листинги должны быть информативные (пример неинформативного скриншота: скриншот всего рабочего стола с открытым FAR-ом посреди какого-то представления исполняемого модуля. Как сделать информативнее: уменьшить размер изображения до тех размеров, в которые помещается ровно тот участок представления, который что-то отображает (например, границу PSP), подчеркнуть, выделить требуемый участок изображения) пронумерованы и подписаны тем же 14pt обычным шрифтом, выровненным по центру (Пример: Рисунок 2 -- Представление сегмента стека в памяти.), на рисунок, раз уж вы его представили, вы где-то должны ссылаться (иначе зачем он нужен вообще?). Страницы нумеруются в нижней части документа, по центру (если используете шаблон с сайта вуза, все уже сделано за вас). Пожалуйста, соблюдайте эти не сложные требования к оформлению: их так гораздо проще как писать (имеется четкая структура, все эти требования по-умолчанию уже есть в вузовском шаблоне), так и проверять.

- Для каждой лабораторной создается отдельная новая ветка (branch) из master-ветви с названием вида < firstname_lab# >, где firstname - фамилия (аналогично названию вашей личной директории), а # - номер работы, тоже со строчной буквы). Пример создания ветви и перехода на нее:
```
git checkout master
git checkout -b efremov_lab1
```
- Для сдачи лабораторной работы создается пул-реквест (pull-request) из вашей ветки с лабораторной работой в master-ветку общего репозитория курса. В начале заголовка пул-реквеста пишется "[READY] ", после - Фамилия латиницей, после - lab#. (Пример: [READY] Efremov lab1). Формат важен, так как для разбора ваших pull request используется поиск по ключевым словам.
- Для сдачи работы требуется закрытый pull request со слиянием (merge) вашей ветки в общий репозиторий. В таком случае работа считается проверенной.
- Если имеются какие-либо нарекания к предложенным студентом файлам, то все замечания пишутся проверяющим в комментарии пул-реквеста, а так же изменяется префикс заголовка на [WIP].
- Напоминание: коммиты в ветку, которую студент отправляет на пул-реквест отображаются в самом пул-реквесте. Делать новый пул-реквест не надо.
- Закончив исправления, студент пишет об этом отдельным комментарием, указывая, возможно, пояснения к исправлениям, а так же меняет префикс заголовка пул-реквеста снова на [READY], тем самым показывая, что его работа готова к повторному просмотру.
- Курс лабораторных считается завершенным полностью, если в основном репозитории находятся директории всех 7 лабораторных работ студента.
