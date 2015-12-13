class TestApp
  module Forms
    class Todo < Wedge::Plugins::Form
      name :add_task_form

      attr_accessor :description, :category, :date

      def validate
        assert_present :description
        assert_present :category
        assert_present :date
      end
    end
  end
end
