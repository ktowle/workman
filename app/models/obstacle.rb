################################################################################
# $Id: obstacle.rb 1255 2008-05-14 18:20:26Z ccaroon $
################################################################################
class Obstacle < ActiveRecord::Base
    belongs_to :goal;
end
