class JarPresenter
  def initialize(jar)
    @jar = jar
  end

  def provide_with_balance
    {
      id: @jar.id,
      name: @jar.name,
      description: @jar.description,
      balance: @jar.coins.inject(0) {|total, coin| total + coin.value},
      currency: @jar.currency,
      created_at: @jar.created_at,
      updated_at: @jar.updated_at,
    }
  end
end
