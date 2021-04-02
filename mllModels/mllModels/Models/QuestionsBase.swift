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
    
    private var questions : [QuestionModel] = [
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
        
        
        
    ]
        
    //MARK: Handlers
    
    func getAllQuestions() -> [QuestionModel] {
        return questions
    }
    
}
