class Game < ActiveRecord::Base
  belongs_to :user


  belongs_to :starting_choice, class_name: "Choice", foreign_key: "starting_choice_id"

end
