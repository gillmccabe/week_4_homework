  require_relative( '../db/sql_runner')

  class Shoe

    attr_reader(:first_name, :last_name, :address, :shoe_size, :quantity, :id)

  def initialize(options)
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @address = options["address"]
    @shoe_size = options["shoe_size"].to_i
    @quantity = options["quantity"].to_i
    @id = options["id"].to_i
  end

  def pretty_name()
    return @first_name.concat(" #{@last_name}")
  end

  def total()
    return @quantity * 40
  end

  def save()
    sql = "INSERT INTO shoes (
            first_name, 
            last_name, 
            address,
            shoe_size,
            quantity) VALUES (
            '#{@first_name}',
            '#{@last_name}',
            '#{@address}',
            '#{@shoe_size}',
            #{@quantity}
            ) RETURNING *"
    shoe = SqlRunner.run(sql).first
    @id = shoe['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM shoes;"
    shoes = SqlRunner.run(sql)
    result = shoes.map { |shoe| Shoe.new(shoe)}
    return result
  end


end