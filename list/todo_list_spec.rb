require_relative 'todo_list'

describe TodoList do
  let(:new_list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "initializes with two items" do
    expect(new_list.list).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    new_list.add_item("mop")
    expect(new_list.list).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    new_list.delete_item("do the dishes")
    expect(new_list.list).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(new_list.retrieve(0)).to eq "do the dishes"
  end
end


