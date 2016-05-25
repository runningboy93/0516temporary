=begin
asking to show that the two parameters passed during initialization of the new instance of class TodoList are the same as the array they're testing for.
=end

   class TodoList
      attr_accessor :item1, :item2, :list

      def initialize([item1, item2])
        @item1 = item1
        @item2 = item2
        init_array = [item1, item2]
      end

      def list
      :list = ["do the dishes", "mow the lawn"]
      end

      def gets_items
        puts "An array named list is equal to an array created from the two intialization parameters item1 - #{item1} and item2 - #{item2} if the comparison returns true."
        if init_array eql? :list
          puts "true"
        else
          puts "false"
      end
    end

new_task = TodoList.new(["do the dishes", "mow the lawn"])

=begin expect that we can add a string object to the array with items listed and return the updated array.
=end

def add_item(new_task)
  list.push(new_task)
  puts :list
end

=begin expect that we can delete a specific object in the array and return array without it.
=end

def delete_item(del_item)
  :list.delete(del_item)
  puts :list
end

=begin expect that we can retrieve any object from the array using its index value to locate
=end

def retrieve(index_location)
  :list.slice(index_location)
  puts :list
end

