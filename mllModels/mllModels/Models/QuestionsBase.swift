//
//  QuestionsBase.swift
//  mllModels
//
//  Created by Nail Safin on 10.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation
struct QuestionBase  {
    
    //MARK: Properties
    static var shared = QuestionBase()
    
    var questions : [[QuestionModel]] = [
        [
            QuestionModel(id: 1,
                          question: "Как правильно продолжить припев детской песни: Тили-тили... ?",
                          answers: [
                            .one: "хали-гали",
                            .two: "трали-вали",
                            .three: "жили-были",
                            .four: "ели-пили",
                ],
                          rightAnswer: .two),
            QuestionModel(id: 2,
                          question: "Что понадобится, чтобы взрыхлить землю на грядке?",
                          answers: [
                            .one: "тяпка",
                            .two: "бабка",
                            .three: "скобка",
                            .four: "тряпка",
                ],
                          rightAnswer: .one),
            QuestionModel(id: 3,
                          question: "Как называется экзотическое животное из Южной Америки?",
                          answers: [
                            .one: "пчеложор",
                            .two: "термитоглот",
                            .three: "муравьед",
                            .four: "комаролов",
                ],
                          rightAnswer: .three),
            QuestionModel(id: 4,
                          question: "Во что превращается гусеница?",
                          answers: [
                            .one: "в мячик",
                            .two: "в пирамидку",
                            .three: "в машинку",
                            .four: "в куколку",
                ],
                          rightAnswer: .four),
            QuestionModel(id: 5,
                          question: "К какой группе музыкальных инструментов относится валторна?",
                          answers: [
                            .one: "струнные",
                            .two: "клавишные",
                            .three: "ударные",
                            .four: "духовые",
                ],
                          rightAnswer: .four),
            QuestionModel(id: 6,
                          question: "В какой басне Крылова среди действующих лиц есть человек?",
                          answers: [
                            .one: "Лягушка и Вол",
                            .two: "Свинья под Дубом",
                            .three: "Осел и Соловей",
                            .four: "Волк на псарне",
                ],
                          rightAnswer: .four),
            QuestionModel(id: 7,
                          question: "Какой фильм сделал знаменитой песню в исполнении Уитни Хьюстон?",
                          answers: [
                            .one: "Красотка",
                            .two: "Телохранитель",
                            .three: "Форрест Гамп",
                            .four: "Пятый элемент",
                ],
                          rightAnswer: .two),
            QuestionModel(id: 8,
                          question: "Кому в работе нужны постромки?",
                          answers: [
                            .one: "врачу",
                            .two: "кузнецу",
                            .three: "извозчику",
                            .four: "Пятый элемент",
                ],
                          rightAnswer: .three),
            QuestionModel(id: 9,
                          question: "Какой писатель сформулировал Три закона робототехники?",
                          answers: [
                            .one: "Карел Чапек",
                            .two: "Айзек Азимов",
                            .three: "Станислав Лем",
                            .four: "Курт Воннегут",
                ],
                          rightAnswer: .two),
            QuestionModel(id: 10,
                          question: "Какой советский орден был единственным, выпускавшимся не на монетном дворе?",
                          answers: [
                            .one: "орден Александра Невского",
                            .two: "орден Победа",
                            .three: "орден Отечественной войны",
                            .four: "орден Трудового Красного Знамени",
                ],
                          rightAnswer: .two),
            QuestionModel(id: 11,
                          question: "Что в старину располагалось в Хельсинки на площади Наринкка?",
                          answers: [
                            .one: "тюрьма",
                            .two: "кладбище",
                            .three: "торговые ряды",
                            .four: "больница",
                ],
                          rightAnswer: .three),
            QuestionModel(id: 12,
                          question: "Какое имя дал поручику Ржевскому автор пьесы ^Давным-давно^ Гладков?",
                          answers: [
                            .one: "Михаил",
                            .two: "Дмитрий",
                            .three: "Василий",
                            .four: "Александр",
                ],
                          rightAnswer: .two),
            QuestionModel(id: 13,
                          question: "Чем увлекался знаменитый сказочник Ганс-Христан Андерсен?",
                          answers: [
                            .one: "вязанием",
                            .two: "вырезанием из бумаги",
                            .three: "выжиганием",
                            .four: "выпиливанием лобзиком",
                ],
                          rightAnswer: .two),
            QuestionModel(id: 14,
                          question: "Во что оборачивают на время созревания сыр ярг, который производят в английском графстве Корнуолл?",
                          answers: [
                            .one: "в мох",
                            .two: "в навозные лепешки",
                            .three: "в листья крапивы",
                            .four: "в торф",
                ],
                          rightAnswer: .three),
            QuestionModel(id: 15,
                          question: "Кого в основом играют в театре актрисы амплуа иженю?",
                          answers: [
                            .one: "бойких служаной",
                            .two: "подростков",
                            .three: "старух",
                            .four: "наивных девушек",
                ],
                          rightAnswer: .four)
            
            
            
        ],
        [QuestionModel(id: 1,
                       question: "Чем занимается провизор?",
                       answers: [
                        .one: "готовит лекарства",
                        .two: "занимается оптовыми закупками",
                        .three: "ухаживает за животными",
                        .four: "наблюдает за погодными условиями",
            ],
                       rightAnswer: .one),
         QuestionModel(id: 2,
                       question: "В какой стране был построен первый в мире ледокол «Ермак»?",
                       answers: [
                                   .one: "США",
                                   .two: "Австралия",
                                   .three: "Россия",
                                   .four: "Великобритания",
                       ],
                       rightAnswer: .four),
        QuestionModel(id: 3,
        question: "Какой фрукт или овощи на Руси называли «голове садовая»?",
        answers: [
                    .one: "Капуста",
                    .two: "Свекла",
                    .three: "Яблоко",
                    .four: "Репа",
        ],
        rightAnswer: .one),
        
        QuestionModel(id: 4,
        question: "Что можно сделать, используя нечто под названием крупчатка?",
        answers: [
                    .one: "Приготовить пирог",
                    .two: "Оседлать лошадь",
                    .three: "Построить дом",
                    .four: "Ехать на автомобиле",
        ],
        rightAnswer: .one),
        QuestionModel(id: 5,
        question: "В каком из этих городов люди празднуют наступление Нового года раньше остальных?",
        answers: [
                    .one: "Омск",
                    .two: "Пермь",
                    .three: "Красноярск",
                    .four: "Новосибирск",
        ],
        rightAnswer: .three),
        QuestionModel(id: 6,
           question: "Какая из героинь литературных произведений жила во дворце Контарини-Фазан?",
           answers: [
                       .one: "Джульетта",
                       .two: "Дездемона",
                       .three: "Офелия",
                       .four: "Катарина",
           ],
           rightAnswer: .two),
        
        QuestionModel(id: 7,
           question: "Известно, что Эльдар Рязанов часто снимался во второстепенных ролях своих же фильмов. В какой из перечисленных кинолент он не снимался?",
           answers: [
                       .one: "Риск благородное дело",
                       .two: "Гараж",
                       .three: "Зигзаг удачи",
                       .four: "Служебный роман",
           ],
           rightAnswer: .three),
        QuestionModel(id: 8,
           question: "Где покоится прах американского астронома Юджина Шумейкера?",
           answers: [
                       .one: "на Марсе",
                       .two: "на Юпитере",
                       .three: "на Луне",
                       .four: "на Земле",
           ],
           rightAnswer: .three),
        QuestionModel(id: 9,
           question: "Какую должность при дворе царицы Тамары занимал Шота Руставели?",
           answers: [
                       .one: "казначей",
                       .two: "придворный поэт",
                       .three: "главный визирь",
                       .four: "посол",
           ],
           rightAnswer: .one),
        QuestionModel(id: 10,
           question: "Какое занятие больше всего любила заглавная героиня повести Людмилы Улицкой ^Сонечка^?",
           answers: [
                       .one: "вышивать крестиком",
                       .two: "читать книги",
                       .three: "гулять в лесу",
                       .four: "печь пироги",
           ],
           rightAnswer: .two)
        
        ],
        
        
        
        [QuestionModel(id: 1,
                       question: "Что растёт в огороде?",
                       answers: [
                                   .one: "Лук",
                                   .two: "Пистолет",
                                   .three: "Пулемет",
                                   .four: "Ракета",
                       ],
                       rightAnswer: .one),
         QuestionModel(id: 2,
                       question: "Как называют микроавтобусы, совершающие поездки по определённым маршрутам?",
                       answers: [
                                   .one: "Рейсовка",
                                   .two: "Пистолет",
                                   .three: "Пулемет",
                                   .four: "Ракета",
                       ],
                       rightAnswer: .three),
         QuestionModel(id: 3,
                       question: "Где дети ищут подарки утром 1 января?",
                       answers: [
                                   .one: "под ёлкой",
                                   .two: "под палкой",
                                   .three: "под скалкой",
                                   .four: "под мухой",
                       ],
                       rightAnswer: .one),
         QuestionModel(id: 4,
                       question: "Что из перечисленного пирог?",
                       answers: [
                                   .one: "кусака",
                                   .two: "закаляка",
                                   .three: "забияка",
                                   .four: "кулебяка",
                       ],
                       rightAnswer: .four),
         QuestionModel(id: 5,
                       question: "Провожают, как известно, по уму, а как встречают?",
                       answers: [
                                   .one: "по одёжке",
                                   .two: "по сберкнижке",
                                   .three: "по прописке",
                                   .four: "по рекомендации",
                       ],
                       rightAnswer: .one),
         QuestionModel(id: 6,
                       question: "Как называют мелководный бассейн, предназначенный для детей?",
                       answers: [
                                   .one: "утятник",
                                   .two: "лягушатник",
                                   .three: "селёдочник",
                                   .four: "тюленник",
                       ],
                       rightAnswer: .two),
         QuestionModel(id: 7,
                       question: "Что, по словам кота Бегемота, он делал, когда его пришли арестовывать?",
                       answers: [
                                   .one: "починял примус",
                                   .two: "чистил обувь",
                                   .three: "варил кашу",
                                   .four: "играл в шахматы",
                       ],
                       rightAnswer: .one),
         QuestionModel(id: 8,
                       question: "Как называют водителя, совершающего поездки на большие расстояния?",
                       answers: [
                                   .one: "стрелок",
                                   .two: "бомбардир",
                                   .three: "дальнобойщик",
                                   .four: "снайпер",
                       ],
                       rightAnswer: .three),
         QuestionModel(id: 9,
                       question: "Какой эффект, как говорят, производит покупка дорогой вещи?",
                       answers: [
                                   .one: "щёлкает по барсетке",
                                   .two: "бьёт по карману",
                                   .three: "стреляет по кошельку",
                                   .four: "шлёпает по кредитке",
                       ],
                       rightAnswer: .two),
         QuestionModel(id: 10,
                          question: "Как зовут поросёнка, героя популярного мультфильма?",
                          answers: [
                                      .one: "Франтик",
                                      .two: "Финтик",
                                      .three: "Фантик",
                                      .four: "Фунтик",
                          ],
                          rightAnswer: .four)
        ]
    ]
        
    //MARK: Handlers
    
    func getAllQuestions() -> [[QuestionModel]] {
        return questions
    }
    
}
