class AddDomainToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :domain, :string
  end
end
