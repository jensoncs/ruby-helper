#!/usr/bin/env ruby

class Vehicle

  attr_accessor :no_of_wheels

  def initialize(no_of_wheels,type,color,capacity)
    @no_of_wheels = no_of_wheels
    @type = type
    @color = color
    @capacity = capacity
  end

  def get_no_of_wheels()
    p @no_of_wheels
  end

  def set_no_of_wheels(number)
    @no_of_wheels = number
  end
end

class Car < Vehicle

  car = Car.new(1,"electric","black",4)
  p car
end
