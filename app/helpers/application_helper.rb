module ApplicationHelper

	def resource_name
	    :user
	end

	def resource
	    @resource ||= User.new
	end
	
	def resource_class
		User
	end

	def devise_title(controller)
		if controller == "sessions"
			t(:login)
		elsif controller == "registrations"
			t('sign_up')

		elsif controller == "admin_setup"
			t(:admin_setup)
		end
	end

	def application_page_title(controller, action)
		if controller == "home" && action == "index"
			t(:application_home_page)
		end
	end
	
	def devise_mapping
	    @devise_mapping ||= Devise.mappings[:user]
	end

	def devise_title(controller)
		if controller == "sessions"
			t(:login)
		elsif controller == "registrations"
			t('sign_up')

		elsif controller == "admin_setup"
			t(:admin_setup)
		end
	end

	def current?(key, path)
		"#{key}" if current_page? path
		# We use string interpolation "#{key}" here to access the CSS classes we are going to create.
	 end

	 def is_account_locked?(user)
		if user.status == 'enable'
			false
		else
			true
		end
	end

	def unreaded_notification?(notification)
		if notification.readed_at.present?
			false
		else
			true
		end
	end


	
	

	
	def user_notifications
		current_user.recipient_notifications.order(created_at: 'DESC').take(5)
	end

end
