module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField

    # /talent
    field :all_talent, [Types::TalentType], null: false

    def all_talent
      Talent.all
    end

    field :talent, Types::TalentType, null: false do
      argument :id, ID, required: true
    end

    def talent(id:)
      Talent.find(id)
    end

    def talent_match(id:)  
      Match.all.where('talent_id = ?', id)    
    end

    #SportClubs 
    field :all_clubs, [Types::SportsClubType], null: false 

    def all_clubs
      SportClub.all
    end

    field :club, Types::SportsClubType, null: false do
      argument :id, ID, required: true
    end

    def club(id:)
      SportClub.find(id)
    end

    # Match 
    # field :match, [Types::MatchType], null: false 
      # field :club
      # field :talent, [Types::TalentType], null: false do
      #   argument :id, ID, required: true
      # end

    # def match_talent  
    #   Match.all #.where('talent_id = ?', id)    
    # end

    #  field :match_talent, Types::MatchType, null: false do
    #    argument :id, ID, required: true
    #  end

    # def match_talent(id:)
    #   t = Talent.find(id) 
    #   t.matches.all
    #   # Match.all.where('talent_id = ?', id)    
    #   # require 'pry'; binding.pry
    # end 

    # end
  end
end
