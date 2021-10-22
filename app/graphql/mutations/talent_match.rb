# class Mutations::TalentMatch < Mutations::BaseMutation
#   # argument :sport_club_id, Integer, required: true
#   # argument :talent_id, Integer, required: true
  
#   argument :match_id, Integer, required: true

#   field :match, Types::MatchType, null: false
# 	field :errors, [String], null: false

#   def resolve(id)
#     match = Talent.find(id[:match_id])
#     if Match.all.where('talent_id = ?', match.id) 
#        {
#         match: match,
#         errors: []
#       }
#       # require 'pry'; binding.pry
#     else
#       {
#         match: nil,
#         errors: match.errors.full_messages
#       }
#     end    
#   end
# end