require 'xsd/qname'

module InsideSales; module SOAP


# {http://www.insidesales.com/}Task
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPString
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   deleted - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   type_id - SOAP::SOAPInt
#   type - SOAP::SOAPString
#   account_id - SOAP::SOAPInt
#   contact_user_id - SOAP::SOAPInt
#   deal_id - SOAP::SOAPInt
#   lead_id - SOAP::SOAPInt
#   case_id - SOAP::SOAPInt
#   m_class - SOAP::SOAPString
#   dtstart - SOAP::SOAPString
#   completed - SOAP::SOAPString
#   description - SOAP::SOAPString
#   geo_latitude - SOAP::SOAPInt
#   geo_longitude - SOAP::SOAPInt
#   location - SOAP::SOAPString
#   organizer_contact_user_id - SOAP::SOAPInt
#   percent - SOAP::SOAPInt
#   priority - SOAP::SOAPInt
#   notification - SOAP::SOAPBoolean
#   status - SOAP::SOAPString
#   due - SOAP::SOAPString
#   duration - SOAP::SOAPString
#   reminder - SOAP::SOAPString
class Task
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :deleted
  attr_accessor :name
  attr_accessor :type_id
  attr_accessor :type
  attr_accessor :account_id
  attr_accessor :contact_user_id
  attr_accessor :deal_id
  attr_accessor :lead_id
  attr_accessor :case_id
  attr_accessor :dtstart
  attr_accessor :completed
  attr_accessor :description
  attr_accessor :geo_latitude
  attr_accessor :geo_longitude
  attr_accessor :location
  attr_accessor :organizer_contact_user_id
  attr_accessor :percent
  attr_accessor :priority
  attr_accessor :notification
  attr_accessor :status
  attr_accessor :due
  attr_accessor :duration
  attr_accessor :reminder

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(id = nil, external_id = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, deleted = nil, name = nil, type_id = nil, type = nil, account_id = nil, contact_user_id = nil, deal_id = nil, lead_id = nil, case_id = nil, v_class = nil, dtstart = nil, completed = nil, description = nil, geo_latitude = nil, geo_longitude = nil, location = nil, organizer_contact_user_id = nil, percent = nil, priority = nil, notification = nil, status = nil, due = nil, duration = nil, reminder = nil)
    @id = id
    @external_id = external_id
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @deleted = deleted
    @name = name
    @type_id = type_id
    @type = type
    @account_id = account_id
    @contact_user_id = contact_user_id
    @deal_id = deal_id
    @lead_id = lead_id
    @case_id = case_id
    @v_class = v_class
    @dtstart = dtstart
    @completed = completed
    @description = description
    @geo_latitude = geo_latitude
    @geo_longitude = geo_longitude
    @location = location
    @organizer_contact_user_id = organizer_contact_user_id
    @percent = percent
    @priority = priority
    @notification = notification
    @status = status
    @due = due
    @duration = duration
    @reminder = reminder
  end
end

# {http://www.insidesales.com/}Filter
#   field - SOAP::SOAPString
#   operator - SOAP::SOAPString
#   values - InsideSales::SOAP::ArrayOfString
class Filter
  attr_accessor :field
  attr_accessor :operator
  attr_accessor :values

  def initialize(field = nil, operator = nil, values = nil)
    @field = field
    @operator = operator
    @values = values
  end
end

# {http://www.insidesales.com/}SkillOption
#   id - SOAP::SOAPInt
#   option - SOAP::SOAPString
class SkillOption
  attr_accessor :id
  attr_accessor :option

  def initialize(id = nil, option = nil)
    @id = id
    @option = option
  end
end

# {http://www.insidesales.com/}RoutingRule
#   id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   employee_id - SOAP::SOAPInt
#   campaign_id - SOAP::SOAPInt
#   skill_id - SOAP::SOAPInt
#   send_notification - SOAP::SOAPInt
#   route_subobjects - SOAP::SOAPInt
#   round_robin - SOAP::SOAPInt
#   route_to_available - SOAP::SOAPInt
#   quota_interval - SOAP::SOAPString
class RoutingRule
  attr_accessor :id
  attr_accessor :name
  attr_accessor :employee_id
  attr_accessor :campaign_id
  attr_accessor :skill_id
  attr_accessor :send_notification
  attr_accessor :route_subobjects
  attr_accessor :round_robin
  attr_accessor :route_to_available
  attr_accessor :quota_interval

  def initialize(id = nil, name = nil, employee_id = nil, campaign_id = nil, skill_id = nil, send_notification = nil, route_subobjects = nil, round_robin = nil, route_to_available = nil, quota_interval = nil)
    @id = id
    @name = name
    @employee_id = employee_id
    @campaign_id = campaign_id
    @skill_id = skill_id
    @send_notification = send_notification
    @route_subobjects = route_subobjects
    @round_robin = round_robin
    @route_to_available = route_to_available
    @quota_interval = quota_interval
  end
end

# {http://www.insidesales.com/}Quota
#   id - SOAP::SOAPInt
#   employee_id - SOAP::SOAPInt
#   quota - SOAP::SOAPString
#   days_active - SOAP::SOAPString
class Quota
  attr_accessor :id
  attr_accessor :employee_id
  attr_accessor :quota
  attr_accessor :days_active

  def initialize(id = nil, employee_id = nil, quota = nil, days_active = nil)
    @id = id
    @employee_id = employee_id
    @quota = quota
    @days_active = days_active
  end
end

# {http://www.insidesales.com/}Skill
#   routing_rule_id - SOAP::SOAPInt
#   skill_id - SOAP::SOAPString
#   type - SOAP::SOAPString
#   display_name - SOAP::SOAPString
class Skill
  attr_accessor :routing_rule_id
  attr_accessor :skill_id
  attr_accessor :type
  attr_accessor :display_name

  def initialize(routing_rule_id = nil, skill_id = nil, type = nil, display_name = nil)
    @routing_rule_id = routing_rule_id
    @skill_id = skill_id
    @type = type
    @display_name = display_name
  end
end

# {http://www.insidesales.com/}SkillOptionEmployee
#   id - SOAP::SOAPInt
#   proficiency - SOAP::SOAPString
#   first_name - SOAP::SOAPString
#   last_name - SOAP::SOAPString
class SkillOptionEmployee
  attr_accessor :id
  attr_accessor :proficiency
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(id = nil, proficiency = nil, first_name = nil, last_name = nil)
    @id = id
    @proficiency = proficiency
    @first_name = first_name
    @last_name = last_name
  end
end

# {http://www.insidesales.com/}Note
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPString
#   owner_user_id - SOAP::SOAPInt
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   deleted - SOAP::SOAPBoolean
#   date_deleted - SOAP::SOAPString
#   name - SOAP::SOAPString
#   account_id - SOAP::SOAPInt
#   contact_user_id - SOAP::SOAPInt
#   lead_id - SOAP::SOAPInt
#   deal_id - SOAP::SOAPInt
#   case_id - SOAP::SOAPInt
#   private - SOAP::SOAPBoolean
#   description - SOAP::SOAPString
class Note
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :owner_user_id
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :deleted
  attr_accessor :date_deleted
  attr_accessor :name
  attr_accessor :account_id
  attr_accessor :contact_user_id
  attr_accessor :lead_id
  attr_accessor :deal_id
  attr_accessor :case_id
  attr_accessor :private
  attr_accessor :description

  def initialize(id = nil, external_id = nil, owner_user_id = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, deleted = nil, date_deleted = nil, name = nil, account_id = nil, contact_user_id = nil, lead_id = nil, deal_id = nil, case_id = nil, private = nil, description = nil)
    @id = id
    @external_id = external_id
    @owner_user_id = owner_user_id
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @deleted = deleted
    @date_deleted = date_deleted
    @name = name
    @account_id = account_id
    @contact_user_id = contact_user_id
    @lead_id = lead_id
    @deal_id = deal_id
    @case_id = case_id
    @private = private
    @description = description
  end
end

# {http://www.insidesales.com/}Lead
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPString
#   owner_user_id - SOAP::SOAPInt
#   owner_user_ids - InsideSales::SOAP::ArrayOfint
#   owner_first_name - SOAP::SOAPString
#   owner_last_name - SOAP::SOAPString
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   account_id - SOAP::SOAPInt
#   account_number - SOAP::SOAPString
#   name_prefix - SOAP::SOAPString
#   first_name - SOAP::SOAPString
#   middle_name - SOAP::SOAPString
#   last_name - SOAP::SOAPString
#   title - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   mobile_phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   home_phone - SOAP::SOAPString
#   email - SOAP::SOAPString
#   email_opt_out - SOAP::SOAPBoolean
#   website - SOAP::SOAPString
#   addr1 - SOAP::SOAPString
#   addr2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   state_abbrev - SOAP::SOAPString
#   zip - SOAP::SOAPInt
#   country - SOAP::SOAPString
#   country_abbrev - SOAP::SOAPString
#   assistant_first_name - SOAP::SOAPString
#   assistant_last_name - SOAP::SOAPString
#   assistant_phone - SOAP::SOAPString
#   company_name - SOAP::SOAPString
#   industry - SOAP::SOAPString
#   annual_revenue - SOAP::SOAPFloat
#   ticker_symbol - SOAP::SOAPString
#   number_of_employees - SOAP::SOAPInt
#   company_website - SOAP::SOAPString
#   account_ownership - SOAP::SOAPString
#   campaign_id - SOAP::SOAPInt
#   campaign - SOAP::SOAPString
#   status - SOAP::SOAPString
#   source - SOAP::SOAPString
#   rating - SOAP::SOAPString
#   description - SOAP::SOAPString
#   external_object - SOAP::SOAPString
#   do_not_call - SOAP::SOAPBoolean
#   fed_do_not_call - SOAP::SOAPBoolean
#   lead_score - SOAP::SOAPInt
#   add_lead_flags - InsideSales::SOAP::AddLeadFlags
#   status_changed_date - SOAP::SOAPString
#   customFields_17 - InsideSales::SOAP::ArrayOfstring
#   customFields_7 - SOAP::SOAPString
#   customFields_23 - SOAP::SOAPString
#   customFields_15 - InsideSales::SOAP::ArrayOfstring
#   customFields_19 - SOAP::SOAPBoolean
#   customFields_21 - InsideSales::SOAP::ArrayOfstring
class Lead
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :owner_user_id
  attr_accessor :owner_user_ids
  attr_accessor :owner_first_name
  attr_accessor :owner_last_name
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :account_id
  attr_accessor :account_number
  attr_accessor :name_prefix
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :last_name
  attr_accessor :title
  attr_accessor :phone
  attr_accessor :mobile_phone
  attr_accessor :fax
  attr_accessor :home_phone
  attr_accessor :email
  attr_accessor :email_opt_out
  attr_accessor :website
  attr_accessor :addr1
  attr_accessor :addr2
  attr_accessor :city
  attr_accessor :state
  attr_accessor :state_abbrev
  attr_accessor :zip
  attr_accessor :country
  attr_accessor :country_abbrev
  attr_accessor :assistant_first_name
  attr_accessor :assistant_last_name
  attr_accessor :assistant_phone
  attr_accessor :company_name
  attr_accessor :industry
  attr_accessor :annual_revenue
  attr_accessor :ticker_symbol
  attr_accessor :number_of_employees
  attr_accessor :company_website
  attr_accessor :account_ownership
  attr_accessor :campaign_id
  attr_accessor :campaign
  attr_accessor :status
  attr_accessor :source
  attr_accessor :rating
  attr_accessor :description
  attr_accessor :external_object
  attr_accessor :do_not_call
  attr_accessor :fed_do_not_call
  attr_accessor :lead_score
  attr_accessor :add_lead_flags
  attr_accessor :status_changed_date
  attr_accessor :customFields_17
  attr_accessor :customFields_7
  attr_accessor :customFields_23
  attr_accessor :customFields_15
  attr_accessor :customFields_19
  attr_accessor :customFields_21
  attr_accessor :customFields_26
  attr_accessor :customFields_24

  def initialize(id = nil, external_id = nil, owner_user_id = nil, owner_user_ids = nil, owner_first_name = nil, owner_last_name = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, account_id = nil, account_number = nil, name_prefix = nil, first_name = nil, middle_name = nil, last_name = nil, title = nil, phone = nil, mobile_phone = nil, fax = nil, home_phone = nil, email = nil, email_opt_out = nil, website = nil, addr1 = nil, addr2 = nil, city = nil, state = nil, state_abbrev = nil, zip = nil, country = nil, country_abbrev = nil, assistant_first_name = nil, assistant_last_name = nil, assistant_phone = nil, company_name = nil, industry = nil, annual_revenue = nil, ticker_symbol = nil, number_of_employees = nil, company_website = nil, account_ownership = nil, campaign_id = nil, campaign = nil, status = nil, source = nil, rating = nil, description = nil, external_object = nil, do_not_call = nil, fed_do_not_call = nil, lead_score = nil, add_lead_flags = nil, status_changed_date = nil, customFields_17 = nil, customFields_7 = nil, customFields_23 = nil, customFields_15 = nil, customFields_19 = nil, customFields_21 = nil, customFields_26 = nil, customFields_24 = nil)
    @id = id
    @external_id = external_id
    @owner_user_id = owner_user_id
    @owner_user_ids = owner_user_ids
    @owner_first_name = owner_first_name
    @owner_last_name = owner_last_name
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @account_id = account_id
    @account_number = account_number
    @name_prefix = name_prefix
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
    @title = title
    @phone = phone
    @mobile_phone = mobile_phone
    @fax = fax
    @home_phone = home_phone
    @email = email
    @email_opt_out = email_opt_out
    @website = website
    @addr1 = addr1
    @addr2 = addr2
    @city = city
    @state = state
    @state_abbrev = state_abbrev
    @zip = zip
    @country = country
    @country_abbrev = country_abbrev
    @assistant_first_name = assistant_first_name
    @assistant_last_name = assistant_last_name
    @assistant_phone = assistant_phone
    @company_name = company_name
    @industry = industry
    @annual_revenue = annual_revenue
    @ticker_symbol = ticker_symbol
    @number_of_employees = number_of_employees
    @company_website = company_website
    @account_ownership = account_ownership
    @campaign_id = campaign_id
    @campaign = campaign
    @status = status
    @source = source
    @rating = rating
    @description = description
    @external_object = external_object
    @do_not_call = do_not_call
    @fed_do_not_call = fed_do_not_call
    @lead_score = lead_score
    @add_lead_flags = add_lead_flags
    @status_changed_date = status_changed_date
    @customFields_17 = customFields_17
    @customFields_7 = customFields_7
    @customFields_23 = customFields_23
    @customFields_15 = customFields_15
    @customFields_19 = customFields_19
    @customFields_21 = customFields_21
    @customFields_26 = customFields_26
    @customFields_24 = customFields_24
  end
end

# {http://www.insidesales.com/}AddLeadFlags
#   do_not_notify - SOAP::SOAPBoolean
#   phone_survey_id - SOAP::SOAPInt
#   email_template_id - SOAP::SOAPInt
#   email_notification - SOAP::SOAPBoolean
#   dup_campaign_id - SOAP::SOAPInt
#   dup_basis - SOAP::SOAPString
#   relate_to_dup - SOAP::SOAPString
#   inbound_initiative_id - SOAP::SOAPInt
#   ivr_id - SOAP::SOAPInt
#   routing_rule_id - SOAP::SOAPInt
#   reroute_if_idle_days - SOAP::SOAPBoolean
#   jabber_dog_id - SOAP::SOAPInt
#   dialer_initiative_id - SOAP::SOAPInt
#   call_now - SOAP::SOAPBoolean
class AddLeadFlags
  attr_accessor :do_not_notify
  attr_accessor :phone_survey_id
  attr_accessor :email_template_id
  attr_accessor :email_notification
  attr_accessor :dup_campaign_id
  attr_accessor :dup_basis
  attr_accessor :relate_to_dup
  attr_accessor :inbound_initiative_id
  attr_accessor :ivr_id
  attr_accessor :routing_rule_id
  attr_accessor :reroute_if_idle_days
  attr_accessor :jabber_dog_id
  attr_accessor :dialer_initiative_id
  attr_accessor :call_now

  def initialize(do_not_notify = nil, phone_survey_id = nil, email_template_id = nil, email_notification = nil, dup_campaign_id = nil, dup_basis = nil, relate_to_dup = nil, inbound_initiative_id = nil, ivr_id = nil, routing_rule_id = nil, reroute_if_idle_days = nil, jabber_dog_id = nil, dialer_initiative_id = nil, call_now = nil)
    @do_not_notify = do_not_notify
    @phone_survey_id = phone_survey_id
    @email_template_id = email_template_id
    @email_notification = email_notification
    @dup_campaign_id = dup_campaign_id
    @dup_basis = dup_basis
    @relate_to_dup = relate_to_dup
    @inbound_initiative_id = inbound_initiative_id
    @ivr_id = ivr_id
    @routing_rule_id = routing_rule_id
    @reroute_if_idle_days = reroute_if_idle_days
    @jabber_dog_id = jabber_dog_id
    @dialer_initiative_id = dialer_initiative_id
    @call_now = call_now
  end
end

# {http://www.insidesales.com/}Event
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPString
#   owner_user_id - SOAP::SOAPInt
#   owner_first_name - SOAP::SOAPString
#   owner_last_name - SOAP::SOAPString
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   deleted - SOAP::SOAPBoolean
#   date_deleted - SOAP::SOAPString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   duration - SOAP::SOAPString
#   dtstart - SOAP::SOAPString
#   dtend - SOAP::SOAPString
#   account_id - SOAP::SOAPInt
#   account_name - SOAP::SOAPString
#   contact_user_id - SOAP::SOAPInt
#   contact_first_name - SOAP::SOAPString
#   contact_last_name - SOAP::SOAPString
#   deal_id - SOAP::SOAPInt
#   deal_name - SOAP::SOAPString
#   lead_id - SOAP::SOAPInt
#   lead_first_name - SOAP::SOAPString
#   lead_last_name - SOAP::SOAPString
#   case_id - SOAP::SOAPInt
#   case_name - SOAP::SOAPString
#   remind_advance - SOAP::SOAPInt
#   location - SOAP::SOAPString
#   all_day_event - SOAP::SOAPBoolean
#   reminder - SOAP::SOAPBoolean
#   status - SOAP::SOAPString
#   type - SOAP::SOAPString
#   priority - SOAP::SOAPString
#   max_attendees - SOAP::SOAPInt
#   total_attendees - SOAP::SOAPInt
class Event
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :owner_user_id
  attr_accessor :owner_first_name
  attr_accessor :owner_last_name
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :deleted
  attr_accessor :date_deleted
  attr_accessor :name
  attr_accessor :description
  attr_accessor :duration
  attr_accessor :dtstart
  attr_accessor :dtend
  attr_accessor :account_id
  attr_accessor :account_name
  attr_accessor :contact_user_id
  attr_accessor :contact_first_name
  attr_accessor :contact_last_name
  attr_accessor :deal_id
  attr_accessor :deal_name
  attr_accessor :lead_id
  attr_accessor :lead_first_name
  attr_accessor :lead_last_name
  attr_accessor :case_id
  attr_accessor :case_name
  attr_accessor :remind_advance
  attr_accessor :location
  attr_accessor :all_day_event
  attr_accessor :reminder
  attr_accessor :status
  attr_accessor :type
  attr_accessor :priority
  attr_accessor :max_attendees
  attr_accessor :total_attendees

  def initialize(id = nil, external_id = nil, owner_user_id = nil, owner_first_name = nil, owner_last_name = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, deleted = nil, date_deleted = nil, name = nil, description = nil, duration = nil, dtstart = nil, dtend = nil, account_id = nil, account_name = nil, contact_user_id = nil, contact_first_name = nil, contact_last_name = nil, deal_id = nil, deal_name = nil, lead_id = nil, lead_first_name = nil, lead_last_name = nil, case_id = nil, case_name = nil, remind_advance = nil, location = nil, all_day_event = nil, reminder = nil, status = nil, type = nil, priority = nil, max_attendees = nil, total_attendees = nil)
    @id = id
    @external_id = external_id
    @owner_user_id = owner_user_id
    @owner_first_name = owner_first_name
    @owner_last_name = owner_last_name
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @deleted = deleted
    @date_deleted = date_deleted
    @name = name
    @description = description
    @duration = duration
    @dtstart = dtstart
    @dtend = dtend
    @account_id = account_id
    @account_name = account_name
    @contact_user_id = contact_user_id
    @contact_first_name = contact_first_name
    @contact_last_name = contact_last_name
    @deal_id = deal_id
    @deal_name = deal_name
    @lead_id = lead_id
    @lead_first_name = lead_first_name
    @lead_last_name = lead_last_name
    @case_id = case_id
    @case_name = case_name
    @remind_advance = remind_advance
    @location = location
    @all_day_event = all_day_event
    @reminder = reminder
    @status = status
    @type = type
    @priority = priority
    @max_attendees = max_attendees
    @total_attendees = total_attendees
  end
end

# {http://www.insidesales.com/}EventAttendee
#   event_id - SOAP::SOAPInt
#   employee_user_id - SOAP::SOAPInt
#   contact_info_id - SOAP::SOAPInt
#   first_name - SOAP::SOAPString
#   last_name - SOAP::SOAPString
#   extra_data - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   status - SOAP::SOAPString
class EventAttendee
  attr_accessor :event_id
  attr_accessor :employee_user_id
  attr_accessor :contact_info_id
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :extra_data
  attr_accessor :phone
  attr_accessor :status

  def initialize(event_id = nil, employee_user_id = nil, contact_info_id = nil, first_name = nil, last_name = nil, extra_data = nil, phone = nil, status = nil)
    @event_id = event_id
    @employee_user_id = employee_user_id
    @contact_info_id = contact_info_id
    @first_name = first_name
    @last_name = last_name
    @extra_data = extra_data
    @phone = phone
    @status = status
  end
end

# {http://www.insidesales.com/}Employee
#   id - SOAP::SOAPInt
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   deleted - SOAP::SOAPBoolean
#   description - SOAP::SOAPString
#   contact_info_id - SOAP::SOAPInt
#   reports_to_employee_user_id - SOAP::SOAPInt
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
#   account_id - SOAP::SOAPInt
#   assistant_employee_user_id - SOAP::SOAPInt
#   licenses - SOAP::SOAPString
#   last_sync_events - SOAP::SOAPString
#   last_sync_contacts - SOAP::SOAPString
#   last_sync_tasks - SOAP::SOAPString
#   company_settings - SOAP::SOAPString
#   admin - SOAP::SOAPBoolean
#   division_id - SOAP::SOAPInt
#   division_ids - InsideSales::SOAP::C_Array
#   smtp_email_username - SOAP::SOAPString
#   smtp_email_password - SOAP::SOAPString
#   start_page_saved_view_id - SOAP::SOAPInt
#   zone_id - SOAP::SOAPInt
#   team_id - SOAP::SOAPInt
#   default_results_per_page - SOAP::SOAPInt
#   warn_on_exit - SOAP::SOAPBoolean
#   can_mass_email - SOAP::SOAPBoolean
#   can_fax - SOAP::SOAPBoolean
#   billing_account_id - SOAP::SOAPInt
#   dm_billing_account_id - SOAP::SOAPInt
#   nickname - SOAP::SOAPString
#   ratio_record - SOAP::SOAPInt
#   ratio_out_of - SOAP::SOAPInt
#   layout_view_ids - InsideSales::SOAP::C_Array
#   perm_id - SOAP::SOAPInt
#   time_zone_id - InsideSales::SOAP::C_Array
#   color - SOAP::SOAPString
#   layout_view_id - SOAP::SOAPInt
#   name_prefix - SOAP::SOAPString
#   first_name - SOAP::SOAPString
#   last_name - SOAP::SOAPString
#   title - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   other_phone - SOAP::SOAPString
#   home_phone - SOAP::SOAPString
#   mobile_phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   email - SOAP::SOAPString
#   website - SOAP::SOAPString
#   birthdate - SOAP::SOAPString
class Employee
  attr_accessor :id
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :deleted
  attr_accessor :description
  attr_accessor :contact_info_id
  attr_accessor :reports_to_employee_user_id
  attr_accessor :username
  attr_accessor :password
  attr_accessor :account_id
  attr_accessor :assistant_employee_user_id
  attr_accessor :licenses
  attr_accessor :last_sync_events
  attr_accessor :last_sync_contacts
  attr_accessor :last_sync_tasks
  attr_accessor :company_settings
  attr_accessor :admin
  attr_accessor :division_id
  attr_accessor :division_ids
  attr_accessor :smtp_email_username
  attr_accessor :smtp_email_password
  attr_accessor :start_page_saved_view_id
  attr_accessor :zone_id
  attr_accessor :team_id
  attr_accessor :default_results_per_page
  attr_accessor :warn_on_exit
  attr_accessor :can_mass_email
  attr_accessor :can_fax
  attr_accessor :billing_account_id
  attr_accessor :dm_billing_account_id
  attr_accessor :nickname
  attr_accessor :ratio_record
  attr_accessor :ratio_out_of
  attr_accessor :layout_view_ids
  attr_accessor :perm_id
  attr_accessor :time_zone_id
  attr_accessor :color
  attr_accessor :layout_view_id
  attr_accessor :name_prefix
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :title
  attr_accessor :phone
  attr_accessor :other_phone
  attr_accessor :home_phone
  attr_accessor :mobile_phone
  attr_accessor :fax
  attr_accessor :email
  attr_accessor :website
  attr_accessor :birthdate

  def initialize(id = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, deleted = nil, description = nil, contact_info_id = nil, reports_to_employee_user_id = nil, username = nil, password = nil, account_id = nil, assistant_employee_user_id = nil, licenses = nil, last_sync_events = nil, last_sync_contacts = nil, last_sync_tasks = nil, company_settings = nil, admin = nil, division_id = nil, division_ids = nil, smtp_email_username = nil, smtp_email_password = nil, start_page_saved_view_id = nil, zone_id = nil, team_id = nil, default_results_per_page = nil, warn_on_exit = nil, can_mass_email = nil, can_fax = nil, billing_account_id = nil, dm_billing_account_id = nil, nickname = nil, ratio_record = nil, ratio_out_of = nil, layout_view_ids = nil, perm_id = nil, time_zone_id = nil, color = nil, layout_view_id = nil, name_prefix = nil, first_name = nil, last_name = nil, title = nil, phone = nil, other_phone = nil, home_phone = nil, mobile_phone = nil, fax = nil, email = nil, website = nil, birthdate = nil)
    @id = id
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @deleted = deleted
    @description = description
    @contact_info_id = contact_info_id
    @reports_to_employee_user_id = reports_to_employee_user_id
    @username = username
    @password = password
    @account_id = account_id
    @assistant_employee_user_id = assistant_employee_user_id
    @licenses = licenses
    @last_sync_events = last_sync_events
    @last_sync_contacts = last_sync_contacts
    @last_sync_tasks = last_sync_tasks
    @company_settings = company_settings
    @admin = admin
    @division_id = division_id
    @division_ids = division_ids
    @smtp_email_username = smtp_email_username
    @smtp_email_password = smtp_email_password
    @start_page_saved_view_id = start_page_saved_view_id
    @zone_id = zone_id
    @team_id = team_id
    @default_results_per_page = default_results_per_page
    @warn_on_exit = warn_on_exit
    @can_mass_email = can_mass_email
    @can_fax = can_fax
    @billing_account_id = billing_account_id
    @dm_billing_account_id = dm_billing_account_id
    @nickname = nickname
    @ratio_record = ratio_record
    @ratio_out_of = ratio_out_of
    @layout_view_ids = layout_view_ids
    @perm_id = perm_id
    @time_zone_id = time_zone_id
    @color = color
    @layout_view_id = layout_view_id
    @name_prefix = name_prefix
    @first_name = first_name
    @last_name = last_name
    @title = title
    @phone = phone
    @other_phone = other_phone
    @home_phone = home_phone
    @mobile_phone = mobile_phone
    @fax = fax
    @email = email
    @website = website
    @birthdate = birthdate
  end
end

# {http://www.insidesales.com/}Deal
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPString
#   owner_user_id - SOAP::SOAPInt
#   owner_user_ids - InsideSales::SOAP::ArrayOfint
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   deleted - SOAP::SOAPBoolean
#   date_deleted - SOAP::SOAPString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   account_id - SOAP::SOAPInt
#   contact_user_id - SOAP::SOAPInt
#   lead_source_id - SOAP::SOAPInt
#   lead_source - SOAP::SOAPString
#   stage_id - SOAP::SOAPInt
#   stage - SOAP::SOAPString
#   rating_id - SOAP::SOAPInt
#   rating - SOAP::SOAPString
#   type_id - SOAP::SOAPInt
#   type - SOAP::SOAPString
#   stage_email - SOAP::SOAPBoolean
#   next_step - SOAP::SOAPString
#   next_step_date - SOAP::SOAPString
#   next_event - SOAP::SOAPString
#   next_event_dtstart - SOAP::SOAPString
#   expected_revenue - SOAP::SOAPFloat
#   gross_margin - SOAP::SOAPFloat
#   close_date - SOAP::SOAPString
#   probability - SOAP::SOAPFloat
#   reference_number - SOAP::SOAPString
#   non_recurring_revenue - SOAP::SOAPFloat
#   daily_recurring_revenue - SOAP::SOAPFloat
#   weekly_recurring_revenue - SOAP::SOAPFloat
#   monthly_recurring_revenue - SOAP::SOAPFloat
#   quarterly_recurring_revenue - SOAP::SOAPFloat
#   yearly_recurring_revenue - SOAP::SOAPFloat
#   non_recurring_cost - SOAP::SOAPFloat
#   daily_recurring_cost - SOAP::SOAPFloat
#   weekly_recurring_cost - SOAP::SOAPFloat
#   monthly_recurring_cost - SOAP::SOAPFloat
#   quarterly_recurring_cost - SOAP::SOAPFloat
#   yearly_recurring_cost - SOAP::SOAPFloat
class Deal
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :owner_user_id
  attr_accessor :owner_user_ids
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :deleted
  attr_accessor :date_deleted
  attr_accessor :name
  attr_accessor :description
  attr_accessor :account_id
  attr_accessor :contact_user_id
  attr_accessor :lead_source_id
  attr_accessor :lead_source
  attr_accessor :stage_id
  attr_accessor :stage
  attr_accessor :rating_id
  attr_accessor :rating
  attr_accessor :type_id
  attr_accessor :type
  attr_accessor :stage_email
  attr_accessor :next_step
  attr_accessor :next_step_date
  attr_accessor :next_event
  attr_accessor :next_event_dtstart
  attr_accessor :expected_revenue
  attr_accessor :gross_margin
  attr_accessor :close_date
  attr_accessor :probability
  attr_accessor :reference_number
  attr_accessor :non_recurring_revenue
  attr_accessor :daily_recurring_revenue
  attr_accessor :weekly_recurring_revenue
  attr_accessor :monthly_recurring_revenue
  attr_accessor :quarterly_recurring_revenue
  attr_accessor :yearly_recurring_revenue
  attr_accessor :non_recurring_cost
  attr_accessor :daily_recurring_cost
  attr_accessor :weekly_recurring_cost
  attr_accessor :monthly_recurring_cost
  attr_accessor :quarterly_recurring_cost
  attr_accessor :yearly_recurring_cost

  def initialize(id = nil, external_id = nil, owner_user_id = nil, owner_user_ids = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, deleted = nil, date_deleted = nil, name = nil, description = nil, account_id = nil, contact_user_id = nil, lead_source_id = nil, lead_source = nil, stage_id = nil, stage = nil, rating_id = nil, rating = nil, type_id = nil, type = nil, stage_email = nil, next_step = nil, next_step_date = nil, next_event = nil, next_event_dtstart = nil, expected_revenue = nil, gross_margin = nil, close_date = nil, probability = nil, reference_number = nil, non_recurring_revenue = nil, daily_recurring_revenue = nil, weekly_recurring_revenue = nil, monthly_recurring_revenue = nil, quarterly_recurring_revenue = nil, yearly_recurring_revenue = nil, non_recurring_cost = nil, daily_recurring_cost = nil, weekly_recurring_cost = nil, monthly_recurring_cost = nil, quarterly_recurring_cost = nil, yearly_recurring_cost = nil)
    @id = id
    @external_id = external_id
    @owner_user_id = owner_user_id
    @owner_user_ids = owner_user_ids
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @deleted = deleted
    @date_deleted = date_deleted
    @name = name
    @description = description
    @account_id = account_id
    @contact_user_id = contact_user_id
    @lead_source_id = lead_source_id
    @lead_source = lead_source
    @stage_id = stage_id
    @stage = stage
    @rating_id = rating_id
    @rating = rating
    @type_id = type_id
    @type = type
    @stage_email = stage_email
    @next_step = next_step
    @next_step_date = next_step_date
    @next_event = next_event
    @next_event_dtstart = next_event_dtstart
    @expected_revenue = expected_revenue
    @gross_margin = gross_margin
    @close_date = close_date
    @probability = probability
    @reference_number = reference_number
    @non_recurring_revenue = non_recurring_revenue
    @daily_recurring_revenue = daily_recurring_revenue
    @weekly_recurring_revenue = weekly_recurring_revenue
    @monthly_recurring_revenue = monthly_recurring_revenue
    @quarterly_recurring_revenue = quarterly_recurring_revenue
    @yearly_recurring_revenue = yearly_recurring_revenue
    @non_recurring_cost = non_recurring_cost
    @daily_recurring_cost = daily_recurring_cost
    @weekly_recurring_cost = weekly_recurring_cost
    @monthly_recurring_cost = monthly_recurring_cost
    @quarterly_recurring_cost = quarterly_recurring_cost
    @yearly_recurring_cost = yearly_recurring_cost
  end
end

# {http://www.insidesales.com/}Contact
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPInt
#   owner_user_id - SOAP::SOAPInt
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   date_modified_ci - SOAP::SOAPString
#   deleted - SOAP::SOAPBoolean
#   date_deleted - SOAP::SOAPString
#   description - SOAP::SOAPString
#   unique_account - SOAP::SOAPBoolean
#   account_name - SOAP::SOAPString
#   department - SOAP::SOAPString
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
#   name_prefix - SOAP::SOAPString
#   first_name - SOAP::SOAPString
#   last_name - SOAP::SOAPString
#   title - SOAP::SOAPString
#   addr1 - SOAP::SOAPString
#   addr2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   state_abbrev - SOAP::SOAPString
#   zip - SOAP::SOAPInt
#   country - SOAP::SOAPString
#   country_abbrev - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   mobile_phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   home_phone - SOAP::SOAPString
#   other_phone - SOAP::SOAPString
#   birthdate - SOAP::SOAPString
#   email - SOAP::SOAPString
#   website - SOAP::SOAPString
#   lead_source - SOAP::SOAPString
#   lead_status - SOAP::SOAPString
#   campaign - SOAP::SOAPString
#   email_opt_out - SOAP::SOAPBoolean
#   do_not_call - SOAP::SOAPBoolean
#   fed_do_not_call - SOAP::SOAPBoolean
#   customFields_5 - InsideSales::SOAP::ArrayOfstring
#   customFields_11 - InsideSales::SOAP::ArrayOfstring
#   customFields_9 - SOAP::SOAPString
class Contact
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :owner_user_id
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :date_modified_ci
  attr_accessor :deleted
  attr_accessor :date_deleted
  attr_accessor :description
  attr_accessor :unique_account
  attr_accessor :account_name
  attr_accessor :department
  attr_accessor :username
  attr_accessor :password
  attr_accessor :name_prefix
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :title
  attr_accessor :addr1
  attr_accessor :addr2
  attr_accessor :city
  attr_accessor :state
  attr_accessor :state_abbrev
  attr_accessor :zip
  attr_accessor :country
  attr_accessor :country_abbrev
  attr_accessor :phone
  attr_accessor :mobile_phone
  attr_accessor :fax
  attr_accessor :home_phone
  attr_accessor :other_phone
  attr_accessor :birthdate
  attr_accessor :email
  attr_accessor :website
  attr_accessor :lead_source
  attr_accessor :lead_status
  attr_accessor :campaign
  attr_accessor :email_opt_out
  attr_accessor :do_not_call
  attr_accessor :fed_do_not_call
  attr_accessor :customFields_5
  attr_accessor :customFields_11
  attr_accessor :customFields_9

  def initialize(id = nil, external_id = nil, owner_user_id = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, date_modified_ci = nil, deleted = nil, date_deleted = nil, description = nil, unique_account = nil, account_name = nil, department = nil, username = nil, password = nil, name_prefix = nil, first_name = nil, last_name = nil, title = nil, addr1 = nil, addr2 = nil, city = nil, state = nil, state_abbrev = nil, zip = nil, country = nil, country_abbrev = nil, phone = nil, mobile_phone = nil, fax = nil, home_phone = nil, other_phone = nil, birthdate = nil, email = nil, website = nil, lead_source = nil, lead_status = nil, campaign = nil, email_opt_out = nil, do_not_call = nil, fed_do_not_call = nil, customFields_5 = nil, customFields_11 = nil, customFields_9 = nil)
    @id = id
    @external_id = external_id
    @owner_user_id = owner_user_id
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @date_modified_ci = date_modified_ci
    @deleted = deleted
    @date_deleted = date_deleted
    @description = description
    @unique_account = unique_account
    @account_name = account_name
    @department = department
    @username = username
    @password = password
    @name_prefix = name_prefix
    @first_name = first_name
    @last_name = last_name
    @title = title
    @addr1 = addr1
    @addr2 = addr2
    @city = city
    @state = state
    @state_abbrev = state_abbrev
    @zip = zip
    @country = country
    @country_abbrev = country_abbrev
    @phone = phone
    @mobile_phone = mobile_phone
    @fax = fax
    @home_phone = home_phone
    @other_phone = other_phone
    @birthdate = birthdate
    @email = email
    @website = website
    @lead_source = lead_source
    @lead_status = lead_status
    @campaign = campaign
    @email_opt_out = email_opt_out
    @do_not_call = do_not_call
    @fed_do_not_call = fed_do_not_call
    @customFields_5 = customFields_5
    @customFields_11 = customFields_11
    @customFields_9 = customFields_9
  end
end

# {http://www.insidesales.com/}Kase
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPString
#   owner_user_id - SOAP::SOAPInt
#   owner_user_ids - InsideSales::SOAP::ArrayOfint
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   deleted - SOAP::SOAPBoolean
#   date_deleted - SOAP::SOAPString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   public_description - SOAP::SOAPString
#   parent_case_id - SOAP::SOAPInt
#   closed - SOAP::SOAPBoolean
#   date_closed - SOAP::SOAPString
#   due_date - SOAP::SOAPString
#   contact_user_id - SOAP::SOAPInt
#   lead_id - SOAP::SOAPInt
#   primary_contact - SOAP::SOAPString
#   priority - SOAP::SOAPString
#   origin - SOAP::SOAPString
#   reason - SOAP::SOAPString
#   status - SOAP::SOAPString
#   type_id - SOAP::SOAPInt
#   type - SOAP::SOAPString
class Kase
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :owner_user_id
  attr_accessor :owner_user_ids
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :deleted
  attr_accessor :date_deleted
  attr_accessor :name
  attr_accessor :description
  attr_accessor :public_description
  attr_accessor :parent_case_id
  attr_accessor :closed
  attr_accessor :date_closed
  attr_accessor :due_date
  attr_accessor :contact_user_id
  attr_accessor :lead_id
  attr_accessor :primary_contact
  attr_accessor :priority
  attr_accessor :origin
  attr_accessor :reason
  attr_accessor :status
  attr_accessor :type_id
  attr_accessor :type

  def initialize(id = nil, external_id = nil, owner_user_id = nil, owner_user_ids = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, deleted = nil, date_deleted = nil, name = nil, description = nil, public_description = nil, parent_case_id = nil, closed = nil, date_closed = nil, due_date = nil, contact_user_id = nil, lead_id = nil, primary_contact = nil, priority = nil, origin = nil, reason = nil, status = nil, type_id = nil, type = nil)
    @id = id
    @external_id = external_id
    @owner_user_id = owner_user_id
    @owner_user_ids = owner_user_ids
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @deleted = deleted
    @date_deleted = date_deleted
    @name = name
    @description = description
    @public_description = public_description
    @parent_case_id = parent_case_id
    @closed = closed
    @date_closed = date_closed
    @due_date = due_date
    @contact_user_id = contact_user_id
    @lead_id = lead_id
    @primary_contact = primary_contact
    @priority = priority
    @origin = origin
    @reason = reason
    @status = status
    @type_id = type_id
    @type = type
  end
end

# {http://www.insidesales.com/}Account
#   id - SOAP::SOAPInt
#   external_id - SOAP::SOAPString
#   owner_user_id - SOAP::SOAPInt
#   owner_user_ids - InsideSales::SOAP::ArrayOfint
#   date_created - SOAP::SOAPString
#   created_by_user_id - SOAP::SOAPInt
#   date_modified - SOAP::SOAPString
#   modified_by_user_id - SOAP::SOAPInt
#   deleted - SOAP::SOAPBoolean
#   date_deleted - SOAP::SOAPString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   number - SOAP::SOAPString
#   type_id - SOAP::SOAPInt
#   type - SOAP::SOAPString
#   site - SOAP::SOAPString
#   parent_account_id - SOAP::SOAPInt
#   industry_id - SOAP::SOAPInt
#   industry - SOAP::SOAPString
#   annual_revenue - SOAP::SOAPFloat
#   ticker_symbol - SOAP::SOAPString
#   ownership_id - SOAP::SOAPInt
#   ownership - SOAP::SOAPString
#   number_of_employees - SOAP::SOAPInt
#   sIC_code - SOAP::SOAPString
#   nAICS_code - SOAP::SOAPString
#   vAT - SOAP::SOAPString
#   suspended - SOAP::SOAPBoolean
#   sales_channel - InsideSales::SOAP::C_
#   website - SOAP::SOAPString
#   credit_limit - SOAP::SOAPFloat
#   credit_balance - SOAP::SOAPFloat
#   credit_terms - SOAP::SOAPInt
#   credit_notes - SOAP::SOAPString
#   contact_first_name - SOAP::SOAPString
#   contact_last_name - SOAP::SOAPString
#   contact_email - SOAP::SOAPString
#   contact_phone - SOAP::SOAPString
#   billing_email - SOAP::SOAPString
#   billing_phone - SOAP::SOAPString
#   billing_fax - SOAP::SOAPString
#   billing_addr1 - SOAP::SOAPString
#   billing_addr2 - SOAP::SOAPString
#   billing_city - SOAP::SOAPString
#   billing_state - SOAP::SOAPString
#   billing_state_abbrev - SOAP::SOAPString
#   billing_zip - SOAP::SOAPString
#   billing_country - SOAP::SOAPString
#   billing_country_abbrev - SOAP::SOAPString
#   shipping_email - SOAP::SOAPString
#   shipping_addr1 - SOAP::SOAPString
#   shipping_addr2 - SOAP::SOAPString
#   shipping_city - SOAP::SOAPString
#   shipping_state - SOAP::SOAPString
#   shipping_state_abbrev - SOAP::SOAPString
#   shipping_zip - SOAP::SOAPString
#   shipping_country - SOAP::SOAPString
#   shipping_country_abbrev - SOAP::SOAPString
#   prospect_to_customer_date - SOAP::SOAPString
#   customFields_17 - InsideSales::SOAP::ArrayOfstring
#   customFields_7 - SOAP::SOAPString
#   customFields_23 - SOAP::SOAPString
#   customFields_15 - InsideSales::SOAP::ArrayOfstring
#   customFields_19 - SOAP::SOAPBoolean
#   customFields_21 - InsideSales::SOAP::ArrayOfstring
class Account
  attr_accessor :id
  attr_accessor :external_id
  attr_accessor :owner_user_id
  attr_accessor :owner_user_ids
  attr_accessor :date_created
  attr_accessor :created_by_user_id
  attr_accessor :date_modified
  attr_accessor :modified_by_user_id
  attr_accessor :deleted
  attr_accessor :date_deleted
  attr_accessor :name
  attr_accessor :description
  attr_accessor :number
  attr_accessor :type_id
  attr_accessor :type
  attr_accessor :site
  attr_accessor :parent_account_id
  attr_accessor :industry_id
  attr_accessor :industry
  attr_accessor :annual_revenue
  attr_accessor :ticker_symbol
  attr_accessor :ownership_id
  attr_accessor :ownership
  attr_accessor :number_of_employees
  attr_accessor :sIC_code
  attr_accessor :nAICS_code
  attr_accessor :vAT
  attr_accessor :suspended
  attr_accessor :sales_channel
  attr_accessor :website
  attr_accessor :credit_limit
  attr_accessor :credit_balance
  attr_accessor :credit_terms
  attr_accessor :credit_notes
  attr_accessor :contact_first_name
  attr_accessor :contact_last_name
  attr_accessor :contact_email
  attr_accessor :contact_phone
  attr_accessor :billing_email
  attr_accessor :billing_phone
  attr_accessor :billing_fax
  attr_accessor :billing_addr1
  attr_accessor :billing_addr2
  attr_accessor :billing_city
  attr_accessor :billing_state
  attr_accessor :billing_state_abbrev
  attr_accessor :billing_zip
  attr_accessor :billing_country
  attr_accessor :billing_country_abbrev
  attr_accessor :shipping_email
  attr_accessor :shipping_addr1
  attr_accessor :shipping_addr2
  attr_accessor :shipping_city
  attr_accessor :shipping_state
  attr_accessor :shipping_state_abbrev
  attr_accessor :shipping_zip
  attr_accessor :shipping_country
  attr_accessor :shipping_country_abbrev
  attr_accessor :prospect_to_customer_date
  attr_accessor :customFields_17
  attr_accessor :customFields_7
  attr_accessor :customFields_23
  attr_accessor :customFields_15
  attr_accessor :customFields_19
  attr_accessor :customFields_21

  def initialize(id = nil, external_id = nil, owner_user_id = nil, owner_user_ids = nil, date_created = nil, created_by_user_id = nil, date_modified = nil, modified_by_user_id = nil, deleted = nil, date_deleted = nil, name = nil, description = nil, number = nil, type_id = nil, type = nil, site = nil, parent_account_id = nil, industry_id = nil, industry = nil, annual_revenue = nil, ticker_symbol = nil, ownership_id = nil, ownership = nil, number_of_employees = nil, sIC_code = nil, nAICS_code = nil, vAT = nil, suspended = nil, sales_channel = nil, website = nil, credit_limit = nil, credit_balance = nil, credit_terms = nil, credit_notes = nil, contact_first_name = nil, contact_last_name = nil, contact_email = nil, contact_phone = nil, billing_email = nil, billing_phone = nil, billing_fax = nil, billing_addr1 = nil, billing_addr2 = nil, billing_city = nil, billing_state = nil, billing_state_abbrev = nil, billing_zip = nil, billing_country = nil, billing_country_abbrev = nil, shipping_email = nil, shipping_addr1 = nil, shipping_addr2 = nil, shipping_city = nil, shipping_state = nil, shipping_state_abbrev = nil, shipping_zip = nil, shipping_country = nil, shipping_country_abbrev = nil, prospect_to_customer_date = nil, customFields_17 = nil, customFields_7 = nil, customFields_23 = nil, customFields_15 = nil, customFields_19 = nil, customFields_21 = nil)
    @id = id
    @external_id = external_id
    @owner_user_id = owner_user_id
    @owner_user_ids = owner_user_ids
    @date_created = date_created
    @created_by_user_id = created_by_user_id
    @date_modified = date_modified
    @modified_by_user_id = modified_by_user_id
    @deleted = deleted
    @date_deleted = date_deleted
    @name = name
    @description = description
    @number = number
    @type_id = type_id
    @type = type
    @site = site
    @parent_account_id = parent_account_id
    @industry_id = industry_id
    @industry = industry
    @annual_revenue = annual_revenue
    @ticker_symbol = ticker_symbol
    @ownership_id = ownership_id
    @ownership = ownership
    @number_of_employees = number_of_employees
    @sIC_code = sIC_code
    @nAICS_code = nAICS_code
    @vAT = vAT
    @suspended = suspended
    @sales_channel = sales_channel
    @website = website
    @credit_limit = credit_limit
    @credit_balance = credit_balance
    @credit_terms = credit_terms
    @credit_notes = credit_notes
    @contact_first_name = contact_first_name
    @contact_last_name = contact_last_name
    @contact_email = contact_email
    @contact_phone = contact_phone
    @billing_email = billing_email
    @billing_phone = billing_phone
    @billing_fax = billing_fax
    @billing_addr1 = billing_addr1
    @billing_addr2 = billing_addr2
    @billing_city = billing_city
    @billing_state = billing_state
    @billing_state_abbrev = billing_state_abbrev
    @billing_zip = billing_zip
    @billing_country = billing_country
    @billing_country_abbrev = billing_country_abbrev
    @shipping_email = shipping_email
    @shipping_addr1 = shipping_addr1
    @shipping_addr2 = shipping_addr2
    @shipping_city = shipping_city
    @shipping_state = shipping_state
    @shipping_state_abbrev = shipping_state_abbrev
    @shipping_zip = shipping_zip
    @shipping_country = shipping_country
    @shipping_country_abbrev = shipping_country_abbrev
    @prospect_to_customer_date = prospect_to_customer_date
    @customFields_17 = customFields_17
    @customFields_7 = customFields_7
    @customFields_23 = customFields_23
    @customFields_15 = customFields_15
    @customFields_19 = customFields_19
    @customFields_21 = customFields_21
  end
end

# {http://www.insidesales.com/}ArrayOfString
class ArrayOfString < ::Array
end

# {http://www.insidesales.com/}ArrayOfBoolean
class ArrayOfBoolean < ::Array
end

# {http://www.insidesales.com/}ArrayOfInt
class ArrayOfInt < ::Array
end

# {http://www.insidesales.com/}ArrayOfFloat
class ArrayOfFloat < ::Array
end

# {http://www.insidesales.com/}ArrayOfTask
class ArrayOfTask < ::Array
end

# {http://www.insidesales.com/}ArrayOfint
class ArrayOfint < ::Array
end

# {http://www.insidesales.com/}ArrayOfFilter
class ArrayOfFilter < ::Array
end

# {http://www.insidesales.com/}ArrayOfSkillOption
class ArrayOfSkillOption < ::Array
end

# {http://www.insidesales.com/}ArrayOfRoutingRule
class ArrayOfRoutingRule < ::Array
end

# {http://www.insidesales.com/}ArrayOfQuota
class ArrayOfQuota < ::Array
end

# {http://www.insidesales.com/}ArrayOfSkill
class ArrayOfSkill < ::Array
end

# {http://www.insidesales.com/}ArrayOfSkillOptionEmployee
class ArrayOfSkillOptionEmployee < ::Array
end

# {http://www.insidesales.com/}ArrayOfNote
class ArrayOfNote < ::Array
end

# {http://www.insidesales.com/}ArrayOfstring
class ArrayOfstring < ::Array
end

# {http://www.insidesales.com/}ArrayOfLead
class ArrayOfLead < ::Array
end

# {http://www.insidesales.com/}ArrayOfEvent
class ArrayOfEvent < ::Array
end

# {http://www.insidesales.com/}ArrayOfEventAttendee
class ArrayOfEventAttendee < ::Array
end

# {http://www.insidesales.com/}ArrayOfEmployee
class ArrayOfEmployee < ::Array
end

# {http://www.insidesales.com/}ArrayOfDeal
class ArrayOfDeal < ::Array
end

# {http://www.insidesales.com/}ArrayOfContact
class ArrayOfContact < ::Array
end

# {http://www.insidesales.com/}ArrayOfKase
class ArrayOfKase < ::Array
end

# {http://www.insidesales.com/}ArrayOfAccount
class ArrayOfAccount < ::Array
end


end; end
