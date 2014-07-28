module Caracal
  module Core
    
    # This module encapsulates all the functionality related to registering
    # fonts.
    #
    module Fonts
      def self.included(base)
        base.class_eval do
          
          #-------------------------------------------------------------
          # Class Methods
          #-------------------------------------------------------------
          
          def self.default_fonts
            [
              { name: 'Arial' },
              { name: 'Droid Serif' }
            ]           
          end
          
          
          #-------------------------------------------------------------
          # Public Methods
          #-------------------------------------------------------------
          
          def font(name)
            unless fonts.map(&:downcase).include? name.to_s.downcase
              fonts << name.to_s
            end
          end
          
          def fonts
            @fonts ||= []
          end
          
        end
      end
    end
    
  end
end