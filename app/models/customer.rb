class Customer < ActiveRecord::Base

  def name
    sprintf "%s %s", firstname, lastname
  end

  def address
    sprintf "%s%s", address1, address2
  end

  def ser
    {
      id: customerid,
      name: name,
      address: address
    }
  end

  def self.fetch(idgt = nil)
    where("customerid > ?", idgt.to_i).limit(20).map(&:ser)
  end

  def self.test
    30.times.map do |i|
      {id: i, name: 'jdk;sjdks', address: '4608499546 Dell Way'}
    end
  end

end
