todo = ["Aの課題", "Bのレポート", "Cのやつ"]

1.upto(todo.length) do |idx|
	List.create(
		text: todo[idx - 1],
		deadline_at: DateTime.new(2022, 4, 26, 22, 0, 0, 0.375),
		finish: false
	)
end
