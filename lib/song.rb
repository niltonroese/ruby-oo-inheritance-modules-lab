require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

extend Memorable::ClassMethods
extend Findable
include Paramable
include Memorable::InstanceMethods

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
