
=begin
asking to show that the two parameters passed during initialization of the new instance of class TodoList are the same as the array they're testing for.
=end

class TodoList
  attr_accessor :list

  def initialize(list)
    # @item1 = item1
    # @item2 = item2
    @list = list
  end

  def add_item(new_task)
    list.push(new_task)
  end

  def delete_item(del_item)
    list.delete(del_item)
  end

  def retrieve(index_location)
    list[index_location]
  end
end
