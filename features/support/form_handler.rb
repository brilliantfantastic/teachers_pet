module FormHandler
  def commit_change(element)
    #TODO: In the future, when unicorns are not awesome....
    #find(element).trigger 'blur'

    click_on 'Create Course'
  end
end

World(FormHandler)
