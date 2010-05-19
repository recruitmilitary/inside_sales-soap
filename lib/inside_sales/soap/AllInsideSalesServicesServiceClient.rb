#!/usr/bin/env ruby
require 'defaultDriver.rb'


module InsideSales::SOAP

endpoint_url = ARGV.shift
obj = AllInsideSalesServicesPortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   login(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = nil
puts obj.login(username, password)

# SYNOPSIS
#   __call
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.m___call

# SYNOPSIS
#   addTask(task)
#
# ARGS
#   task            Task - {http://www.insidesales.com/}Task
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
task = nil
puts obj.addTask(task)

# SYNOPSIS
#   updateTasks(tasks)
#
# ARGS
#   tasks           ArrayOfTask - {http://www.insidesales.com/}ArrayOfTask
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
tasks = nil
puts obj.updateTasks(tasks)

# SYNOPSIS
#   updateTask(task)
#
# ARGS
#   task            Task - {http://www.insidesales.com/}Task
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
task = nil
puts obj.updateTask(task)

# SYNOPSIS
#   deleteTasks(task_ids)
#
# ARGS
#   task_ids        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
task_ids = nil
puts obj.deleteTasks(task_ids)

# SYNOPSIS
#   deleteTask(task_id)
#
# ARGS
#   task_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
task_id = nil
puts obj.deleteTask(task_id)

# SYNOPSIS
#   getTasks(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfTask - {http://www.insidesales.com/}ArrayOfTask
#
filters = nil
puts obj.getTasks(filters)

# SYNOPSIS
#   getSkillOptions(skill_id)
#
# ARGS
#   skill_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrayOfSkillOption - {http://www.insidesales.com/}ArrayOfSkillOption
#
skill_id = nil
puts obj.getSkillOptions(skill_id)

# SYNOPSIS
#   getRoutingRules
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        ArrayOfRoutingRule - {http://www.insidesales.com/}ArrayOfRoutingRule
#

puts obj.getRoutingRules

# SYNOPSIS
#   getQuotas(rule_id)
#
# ARGS
#   rule_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrayOfQuota - {http://www.insidesales.com/}ArrayOfQuota
#
rule_id = nil
puts obj.getQuotas(rule_id)

# SYNOPSIS
#   getSkills(routing_rule_id)
#
# ARGS
#   routing_rule_id Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrayOfSkill - {http://www.insidesales.com/}ArrayOfSkill
#
routing_rule_id = nil
puts obj.getSkills(routing_rule_id)

# SYNOPSIS
#   getSkillOptionEmployees(skill_id, option_id)
#
# ARGS
#   skill_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   option_id       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrayOfSkillOptionEmployee - {http://www.insidesales.com/}ArrayOfSkillOptionEmployee
#
skill_id = option_id = nil
puts obj.getSkillOptionEmployees(skill_id, option_id)

# SYNOPSIS
#   addUpdateRoutingRule(routing_rule)
#
# ARGS
#   routing_rule    RoutingRule - {http://www.insidesales.com/}RoutingRule
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
routing_rule = nil
puts obj.addUpdateRoutingRule(routing_rule)

# SYNOPSIS
#   deleteRoutingRule(rule_id)
#
# ARGS
#   rule_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
rule_id = nil
puts obj.deleteRoutingRule(rule_id)

# SYNOPSIS
#   addUpdateQuota(routing_rule)
#
# ARGS
#   routing_rule    Quota - {http://www.insidesales.com/}Quota
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
routing_rule = nil
puts obj.addUpdateQuota(routing_rule)

# SYNOPSIS
#   deleteQuota(routing_rule_id, employee_id)
#
# ARGS
#   routing_rule_id Int - {http://www.w3.org/2001/XMLSchema}int
#   employee_id     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
routing_rule_id = employee_id = nil
puts obj.deleteQuota(routing_rule_id, employee_id)

# SYNOPSIS
#   addUpdateSkillOptionEmployee(skill_id, option_id, employee_id, proficiency)
#
# ARGS
#   skill_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   option_id       Int - {http://www.w3.org/2001/XMLSchema}int
#   employee_id     Int - {http://www.w3.org/2001/XMLSchema}int
#   proficiency     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
skill_id = option_id = employee_id = proficiency = nil
puts obj.addUpdateSkillOptionEmployee(skill_id, option_id, employee_id, proficiency)

# SYNOPSIS
#   deleteSkillOptionEmployee(skill_id, option_id, employee_id)
#
# ARGS
#   skill_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   option_id       Int - {http://www.w3.org/2001/XMLSchema}int
#   employee_id     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
skill_id = option_id = employee_id = nil
puts obj.deleteSkillOptionEmployee(skill_id, option_id, employee_id)

# SYNOPSIS
#   setSkillOptionCampaign(skill_id, option_id, campaign_id)
#
# ARGS
#   skill_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   option_id       Int - {http://www.w3.org/2001/XMLSchema}int
#   campaign_id     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
skill_id = option_id = campaign_id = nil
puts obj.setSkillOptionCampaign(skill_id, option_id, campaign_id)

# SYNOPSIS
#   addNote(note)
#
# ARGS
#   note            Note - {http://www.insidesales.com/}Note
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
note = nil
puts obj.addNote(note)

# SYNOPSIS
#   updateNotes(notes)
#
# ARGS
#   notes           ArrayOfNote - {http://www.insidesales.com/}ArrayOfNote
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
notes = nil
puts obj.updateNotes(notes)

# SYNOPSIS
#   updateNote(note)
#
# ARGS
#   note            Note - {http://www.insidesales.com/}Note
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
note = nil
puts obj.updateNote(note)

# SYNOPSIS
#   deleteNotes(note_ids)
#
# ARGS
#   note_ids        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
note_ids = nil
puts obj.deleteNotes(note_ids)

# SYNOPSIS
#   deleteNote(note_id)
#
# ARGS
#   note_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
note_id = nil
puts obj.deleteNote(note_id)

# SYNOPSIS
#   getNotes(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfNote - {http://www.insidesales.com/}ArrayOfNote
#
filters = nil
puts obj.getNotes(filters)

# SYNOPSIS
#   RouteLead(lead_id, routing_rule_id)
#
# ARGS
#   lead_id         Int - {http://www.w3.org/2001/XMLSchema}int
#   routing_rule_id Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
lead_id = routing_rule_id = nil
puts obj.routeLead(lead_id, routing_rule_id)

# SYNOPSIS
#   updateLead(lead)
#
# ARGS
#   lead            Lead - {http://www.insidesales.com/}Lead
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
lead = nil
puts obj.updateLead(lead)

# SYNOPSIS
#   updateLeads(leads)
#
# ARGS
#   leads           ArrayOfLead - {http://www.insidesales.com/}ArrayOfLead
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
leads = nil
puts obj.updateLeads(leads)

# SYNOPSIS
#   deleteLead(lead_id)
#
# ARGS
#   lead_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
lead_id = nil
puts obj.deleteLead(lead_id)

# SYNOPSIS
#   deleteLeads(lead_ids)
#
# ARGS
#   lead_ids        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
lead_ids = nil
puts obj.deleteLeads(lead_ids)

# SYNOPSIS
#   addLead(lead)
#
# ARGS
#   lead            Lead - {http://www.insidesales.com/}Lead
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
lead = nil
puts obj.addLead(lead)

# SYNOPSIS
#   convertLead(id)
#
# ARGS
#   id              Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
id = nil
puts obj.convertLead(id)

# SYNOPSIS
#   getLeads(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfLead - {http://www.insidesales.com/}ArrayOfLead
#
filters = nil
puts obj.getLeads(filters)

# SYNOPSIS
#   addEventAttendee(event_id, attendee_type, id, extra_data)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   attendee_type   C_String - {http://www.w3.org/2001/XMLSchema}string
#   id              Int - {http://www.w3.org/2001/XMLSchema}int
#   extra_data      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
event_id = attendee_type = id = extra_data = nil
puts obj.addEventAttendee(event_id, attendee_type, id, extra_data)

# SYNOPSIS
#   addEventContactAttendee(event_id, contact_user_id, extra_data)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   contact_user_id Int - {http://www.w3.org/2001/XMLSchema}int
#   extra_data      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
event_id = contact_user_id = extra_data = nil
puts obj.addEventContactAttendee(event_id, contact_user_id, extra_data)

# SYNOPSIS
#   addEventEmployeeAttendee(event_id, employee_user_id, extra_data)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   employee_user_id Int - {http://www.w3.org/2001/XMLSchema}int
#   extra_data      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
event_id = employee_user_id = extra_data = nil
puts obj.addEventEmployeeAttendee(event_id, employee_user_id, extra_data)

# SYNOPSIS
#   addEventLeadAttendee(event_id, contact_info_id, extra_data)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   contact_info_id Int - {http://www.w3.org/2001/XMLSchema}int
#   extra_data      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
event_id = contact_info_id = extra_data = nil
puts obj.addEventLeadAttendee(event_id, contact_info_id, extra_data)

# SYNOPSIS
#   addEvent(event)
#
# ARGS
#   event           Event - {http://www.insidesales.com/}Event
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
event = nil
puts obj.addEvent(event)

# SYNOPSIS
#   updateEvent(event)
#
# ARGS
#   event           Event - {http://www.insidesales.com/}Event
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
event = nil
puts obj.updateEvent(event)

# SYNOPSIS
#   updateEvents(events)
#
# ARGS
#   events          ArrayOfEvent - {http://www.insidesales.com/}ArrayOfEvent
#
# RETURNS
#   v_return        ArrayOfInt - {http://www.insidesales.com/}ArrayOfInt
#
events = nil
puts obj.updateEvents(events)

# SYNOPSIS
#   deleteEvents(event_ids)
#
# ARGS
#   event_ids       ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
event_ids = nil
puts obj.deleteEvents(event_ids)

# SYNOPSIS
#   deleteEvent(event_id)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
event_id = nil
puts obj.deleteEvent(event_id)

# SYNOPSIS
#   getEvents(filter)
#
# ARGS
#   filter          ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfEvent - {http://www.insidesales.com/}ArrayOfEvent
#
filter = nil
puts obj.getEvents(filter)

# SYNOPSIS
#   getEventLeadAttendees(event_id)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrayOfEventAttendee - {http://www.insidesales.com/}ArrayOfEventAttendee
#
event_id = nil
puts obj.getEventLeadAttendees(event_id)

# SYNOPSIS
#   getEventContactAttendees(event_id)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrayOfEventAttendee - {http://www.insidesales.com/}ArrayOfEventAttendee
#
event_id = nil
puts obj.getEventContactAttendees(event_id)

# SYNOPSIS
#   getEventEmployeeAttendees(event_id)
#
# ARGS
#   event_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        ArrayOfEventAttendee - {http://www.insidesales.com/}ArrayOfEventAttendee
#
event_id = nil
puts obj.getEventEmployeeAttendees(event_id)

# SYNOPSIS
#   addEmployee(employee)
#
# ARGS
#   employee        Employee - {http://www.insidesales.com/}Employee
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
employee = nil
puts obj.addEmployee(employee)

# SYNOPSIS
#   updateEmployees(employees)
#
# ARGS
#   employees       ArrayOfEmployee - {http://www.insidesales.com/}ArrayOfEmployee
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
employees = nil
puts obj.updateEmployees(employees)

# SYNOPSIS
#   updateEmployee(employee)
#
# ARGS
#   employee        Employee - {http://www.insidesales.com/}Employee
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
employee = nil
puts obj.updateEmployee(employee)

# SYNOPSIS
#   deleteEmployees(employee_ids)
#
# ARGS
#   employee_ids    ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
employee_ids = nil
puts obj.deleteEmployees(employee_ids)

# SYNOPSIS
#   deleteEmployee(employee_id)
#
# ARGS
#   employee_id     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
employee_id = nil
puts obj.deleteEmployee(employee_id)

# SYNOPSIS
#   checkAvailableLicenses(license)
#
# ARGS
#   license         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ArrayOfstring - {http://www.insidesales.com/}ArrayOfstring
#
license = nil
puts obj.checkAvailableLicenses(license)

# SYNOPSIS
#   getEmployees(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfEmployee - {http://www.insidesales.com/}ArrayOfEmployee
#
filters = nil
puts obj.getEmployees(filters)

# SYNOPSIS
#   addDeal(deal)
#
# ARGS
#   deal            Deal - {http://www.insidesales.com/}Deal
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
deal = nil
puts obj.addDeal(deal)

# SYNOPSIS
#   updateDeals(deals)
#
# ARGS
#   deals           ArrayOfDeal - {http://www.insidesales.com/}ArrayOfDeal
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
deals = nil
puts obj.updateDeals(deals)

# SYNOPSIS
#   updateDeal(deal)
#
# ARGS
#   deal            Deal - {http://www.insidesales.com/}Deal
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
deal = nil
puts obj.updateDeal(deal)

# SYNOPSIS
#   deleteDeals(deal_ids)
#
# ARGS
#   deal_ids        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
deal_ids = nil
puts obj.deleteDeals(deal_ids)

# SYNOPSIS
#   deleteDeal(deal_id)
#
# ARGS
#   deal_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
deal_id = nil
puts obj.deleteDeal(deal_id)

# SYNOPSIS
#   getDeals(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfDeal - {http://www.insidesales.com/}ArrayOfDeal
#
filters = nil
puts obj.getDeals(filters)

# SYNOPSIS
#   addContact(contact)
#
# ARGS
#   contact         Contact - {http://www.insidesales.com/}Contact
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
contact = nil
puts obj.addContact(contact)

# SYNOPSIS
#   updateContacts(contacts)
#
# ARGS
#   contacts        ArrayOfContact - {http://www.insidesales.com/}ArrayOfContact
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
contacts = nil
puts obj.updateContacts(contacts)

# SYNOPSIS
#   updateContact(contact)
#
# ARGS
#   contact         Contact - {http://www.insidesales.com/}Contact
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
contact = nil
puts obj.updateContact(contact)

# SYNOPSIS
#   deleteContacts(contact_ids)
#
# ARGS
#   contact_ids     ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
contact_ids = nil
puts obj.deleteContacts(contact_ids)

# SYNOPSIS
#   deleteContact(contact_id)
#
# ARGS
#   contact_id      Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
contact_id = nil
puts obj.deleteContact(contact_id)

# SYNOPSIS
#   getContacts(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfContact - {http://www.insidesales.com/}ArrayOfContact
#
filters = nil
puts obj.getContacts(filters)

# SYNOPSIS
#   addCase(v_case)
#
# ARGS
#   v_case          Kase - {http://www.insidesales.com/}Kase
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
v_case = nil
puts obj.addCase(v_case)

# SYNOPSIS
#   updateCases(cases)
#
# ARGS
#   cases           ArrayOfKase - {http://www.insidesales.com/}ArrayOfKase
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
cases = nil
puts obj.updateCases(cases)

# SYNOPSIS
#   updateCase(v_case)
#
# ARGS
#   v_case          Kase - {http://www.insidesales.com/}Kase
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
v_case = nil
puts obj.updateCase(v_case)

# SYNOPSIS
#   deleteCases(case_ids)
#
# ARGS
#   case_ids        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
case_ids = nil
puts obj.deleteCases(case_ids)

# SYNOPSIS
#   deleteCase(case_id)
#
# ARGS
#   case_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
case_id = nil
puts obj.deleteCase(case_id)

# SYNOPSIS
#   getCases(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfKase - {http://www.insidesales.com/}ArrayOfKase
#
filters = nil
puts obj.getCases(filters)

# SYNOPSIS
#   addAccount(account)
#
# ARGS
#   account         Account - {http://www.insidesales.com/}Account
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
account = nil
puts obj.addAccount(account)

# SYNOPSIS
#   updateAccounts(accounts)
#
# ARGS
#   accounts        ArrayOfAccount - {http://www.insidesales.com/}ArrayOfAccount
#
# RETURNS
#   v_return        ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
accounts = nil
puts obj.updateAccounts(accounts)

# SYNOPSIS
#   updateAccount(account)
#
# ARGS
#   account         Account - {http://www.insidesales.com/}Account
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
account = nil
puts obj.updateAccount(account)

# SYNOPSIS
#   deleteAccounts(account_ids)
#
# ARGS
#   account_ids     ArrayOfint - {http://www.insidesales.com/}ArrayOfint
#
# RETURNS
#   N/A
#
account_ids = nil
puts obj.deleteAccounts(account_ids)

# SYNOPSIS
#   deleteAccount(account_id)
#
# ARGS
#   account_id      Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   N/A
#
account_id = nil
puts obj.deleteAccount(account_id)

# SYNOPSIS
#   getAccounts(filters)
#
# ARGS
#   filters         ArrayOfFilter - {http://www.insidesales.com/}ArrayOfFilter
#
# RETURNS
#   v_return        ArrayOfAccount - {http://www.insidesales.com/}ArrayOfAccount
#
filters = nil
puts obj.getAccounts(filters)

# SYNOPSIS
#   _addContactInfo(email, phone, fax, address_id)
#
# ARGS
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#   phone           C_String - {http://www.w3.org/2001/XMLSchema}string
#   fax             C_String - {http://www.w3.org/2001/XMLSchema}string
#   address_id      Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
email = phone = fax = address_id = nil
puts obj.m__addContactInfo(email, phone, fax, address_id)




end
