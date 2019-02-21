class Response < ApplicationRecord

    belongs_to :selected_answer,
        class_name: :AnswerChoice,
        primary_key: :id,
        foreign_key: :answer_choice_id

    belongs_to :respondent,
        class_name: :User,
        primary_key: :id,
        foreign_key: :responder_id

    has_one :question,
        through: :selected_answer, # Response#selected_answer 
        source: :question # AnswerChoice#question
        
    def sibling_responses
        self.question.responses.where.not(responder_id: :self.responder_id) 
    end    
end