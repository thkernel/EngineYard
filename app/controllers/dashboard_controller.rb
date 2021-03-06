class DashboardController < ApplicationController
	
	before_action :authenticate_user!
	#before_action :create_organization

	layout 'dashboard'
	
	def index

		
		#@total_foods = Food.count
		#@total_customers = Customer.count
		#@total_fidelity_cards = FidelityCard.count
		#@total_orders = Order.count

		#@orders = Order.take(10)
		#@total_departure_mails = DepartureMail.count
		#@total_requests = Request.count
		#@total_documents = Document.count

		#@current_user_arrival_mails = current_user.arrival_mails.take(5)
		
		#last_imputations = Imputation.where("recipient_id = ? OR user_id = ?", current_user.id, current_user.id)
		#last_imputations = last_imputations.select {|imputation| imputation.imputation_items.present?}
		#@last_tasks = last_imputations.map {|imputation| imputation.imputation_items}.flatten
		
		#if current_user.superuser? || current_user.admin?
			#@last_requests = Request.all
			#@last_arrival_mails = ArrivalMail.all
		#else
			#@last_requests = current_user.requests
			#@last_arrival_mails = current_user.arrival_mails
		#end
		

		
		#overdue_imputations = Imputation.where("recipient_id = ? OR user_id = ?", current_user.id, current_user.id)
		#overdue_imputations = overdue_imputations.select {|imputation| imputation.imputation_items.present?}

		#@overdue_tasks = overdue_imputations.map {|imputation| imputation.imputation_items.where("due_date < ? AND status <> ? ", Time.now, "Completed")}.flatten
		#@overdue_arrival_mails = ArrivalMail.where("to_answer = ? AND response_limit_time < ?", "Oui", Time.now)
		#@overdue_tickets = Ticket.where("due_date < ? AND status <> ?", Time.now, "Completed")

		#record_activity("Afficher le tableau de bord")

		
		
	end

	def unauthorize
		render layout: 'unauthorize'
	end

	def create_organization
		#if request.subdomain.present? && request.subdomain != 'www'   
		if current_user.admin? || current_user.superuser?
			
		
			unless  current_organization.present? 
				redirect_to setup_organization_path
			end	
		end
		#end
	end
	
	

end