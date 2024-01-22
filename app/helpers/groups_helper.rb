module GroupsHelper
  def active_tab(current_tab, tab)
    current_tab == tab ? 'btn-info' : 'btn-outline-info'
  end
end
