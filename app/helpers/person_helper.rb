module PersonHelper

  def gravatar_for(person, options = { :size => 50 })
    gravatar_image_tag(person.email.downcase, :alt => h(person.first),
                                            :class => 'gravatar',
                                            :gravatar => options)
  end
end
