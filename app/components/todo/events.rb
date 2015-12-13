require_relative '../../forms/task'

if RUBY_ENGINE == 'opal'
  class Element
    alias_native :mask
  end
end

class TestApp
  module Components
    class Todo < Wedge::Component
      name :todo

      on :submit, '#add-task-form', form: :add_task_form, key: :task do |form, el|

        ap form.attributes
      end
    end
  end
end
