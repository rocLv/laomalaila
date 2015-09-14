class MoveRankFromTransportsToPrices < ActiveRecord::Migration
  def change
    %w[airs trains buses].each do |transport|
      remove_column transport, :rank, :integer

      add_column "#{transport.singularize}_prices", :rank, :integer
    end
  end
end
