class ApplicationDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def show_link
    h.link_to 'show', object
  end

  def edit_link
    h.link_to :edit,[:edit,object]
  end
  def destroy_link
    h.link_to :destroy_link, [:destroy, object]
  end
end
