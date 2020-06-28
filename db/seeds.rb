table_names = %w(lists)
table_names.each do |table_name|
	path = Rails.root.join("db/seeds", Rails.env, table_name + ".rb")
	if File.exist?(path)
		puts "テーブル #{table_name} を作ってるよ★"
		require path
	end
end
