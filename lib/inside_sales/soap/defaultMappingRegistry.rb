require 'inside_sales/soap/default'
require 'soap/mapping'

module InsideSales; module SOAP

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsWwwInsidesalesCom = "http://www.insidesales.com/"

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfString,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfBoolean,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "boolean") }
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfInt,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfFloat,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "float") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Task,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Task"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["deal_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal_id")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "case_id")]],
      ["v_class", ["SOAP::SOAPString", XSD::QName.new(nil, "class")]],
      ["dtstart", ["SOAP::SOAPString", XSD::QName.new(nil, "dtstart")]],
      ["completed", ["SOAP::SOAPString", XSD::QName.new(nil, "completed")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["geo_latitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "geo_latitude")]],
      ["geo_longitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "geo_longitude")]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]],
      ["organizer_contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "organizer_contact_user_id")]],
      ["percent", ["SOAP::SOAPInt", XSD::QName.new(nil, "percent")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["notification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "notification")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["due", ["SOAP::SOAPString", XSD::QName.new(nil, "due")]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(nil, "duration")]],
      ["reminder", ["SOAP::SOAPString", XSD::QName.new(nil, "reminder")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfTask,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Task") }
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfint,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "int") }
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfFilter,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Filter") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Filter,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Filter"),
    :schema_element => [
      ["field", ["SOAP::SOAPString", XSD::QName.new(nil, "field")]],
      ["operator", ["SOAP::SOAPString", XSD::QName.new(nil, "operator")]],
      ["values", ["InsideSales::SOAP::ArrayOfString", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfSkillOption,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "SkillOption") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::SkillOption,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "SkillOption"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["option", ["SOAP::SOAPString", XSD::QName.new(nil, "option")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfRoutingRule,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "RoutingRule") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::RoutingRule,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "RoutingRule"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["employee_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "employee_id")]],
      ["campaign_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "campaign_id")]],
      ["skill_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "skill_id")]],
      ["send_notification", ["SOAP::SOAPInt", XSD::QName.new(nil, "send_notification")]],
      ["route_subobjects", ["SOAP::SOAPInt", XSD::QName.new(nil, "route_subobjects")]],
      ["round_robin", ["SOAP::SOAPInt", XSD::QName.new(nil, "round_robin")]],
      ["route_to_available", ["SOAP::SOAPInt", XSD::QName.new(nil, "route_to_available")]],
      ["quota_interval", ["SOAP::SOAPString", XSD::QName.new(nil, "quota_interval")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfQuota,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Quota") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Quota,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Quota"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["employee_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "employee_id")]],
      ["quota", ["SOAP::SOAPString", XSD::QName.new(nil, "quota")]],
      ["days_active", ["SOAP::SOAPString", XSD::QName.new(nil, "days_active")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfSkill,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Skill") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Skill,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Skill"),
    :schema_element => [
      ["routing_rule_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "routing_rule_id")]],
      ["skill_id", ["SOAP::SOAPString", XSD::QName.new(nil, "skill_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["display_name", ["SOAP::SOAPString", XSD::QName.new(nil, "display_name")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfSkillOptionEmployee,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "SkillOptionEmployee") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::SkillOptionEmployee,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "SkillOptionEmployee"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["proficiency", ["SOAP::SOAPString", XSD::QName.new(nil, "proficiency")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]]
    ]
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Note,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Note"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["deal_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal_id")]],
      ["case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "case_id")]],
      ["private", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "private")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfNote,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Note") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Lead,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Lead"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["owner_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_first_name")]],
      ["owner_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_last_name")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["account_number", ["SOAP::SOAPString", XSD::QName.new(nil, "account_number")]],
      ["name_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "name_prefix")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["middle_name", ["SOAP::SOAPString", XSD::QName.new(nil, "middle_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["mobile_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile_phone")]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")]],
      ["home_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "home_phone")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["email_opt_out", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "email_opt_out")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "addr1")]],
      ["addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "addr2")]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "state_abbrev")]],
      ["zip", ["SOAP::SOAPInt", XSD::QName.new(nil, "zip")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")]],
      ["country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "country_abbrev")]],
      ["assistant_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "assistant_first_name")]],
      ["assistant_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "assistant_last_name")]],
      ["assistant_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "assistant_phone")]],
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company_name")]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(nil, "industry")]],
      ["annual_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "annual_revenue")]],
      ["ticker_symbol", ["SOAP::SOAPString", XSD::QName.new(nil, "ticker_symbol")]],
      ["number_of_employees", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_employees")]],
      ["company_website", ["SOAP::SOAPString", XSD::QName.new(nil, "company_website")]],
      ["account_ownership", ["SOAP::SOAPString", XSD::QName.new(nil, "account_ownership")]],
      ["campaign_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "campaign_id")]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["source", ["SOAP::SOAPString", XSD::QName.new(nil, "source")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(nil, "rating")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["external_object", ["SOAP::SOAPString", XSD::QName.new(nil, "external_object")]],
      ["do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "do_not_call")]],
      ["fed_do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "fed_do_not_call")]],
      ["lead_score", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_score")]],
      ["add_lead_flags", ["InsideSales::SOAP::AddLeadFlags", XSD::QName.new(nil, "add_lead_flags")]],
      ["status_changed_date", ["SOAP::SOAPString", XSD::QName.new(nil, "status_changed_date")]],
      ["customFields_17", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_17")]],
      ["customFields_7", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_7")]],
      ["customFields_23", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_23")]],
      ["customFields_15", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_15")]],
      ["customFields_19", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "customFields_19")]],
      ["customFields_21", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_21")]]
    ]
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::AddLeadFlags,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "AddLeadFlags"),
    :schema_element => [
      ["do_not_notify", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "do_not_notify")]],
      ["phone_survey_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "phone_survey_id")]],
      ["email_template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "email_template_id")]],
      ["email_notification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "email_notification")]],
      ["dup_campaign_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "dup_campaign_id")]],
      ["dup_basis", ["SOAP::SOAPString", XSD::QName.new(nil, "dup_basis")]],
      ["relate_to_dup", ["SOAP::SOAPString", XSD::QName.new(nil, "relate_to_dup")]],
      ["inbound_initiative_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "inbound_initiative_id")]],
      ["ivr_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ivr_id")]],
      ["routing_rule_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "routing_rule_id")]],
      ["reroute_if_idle_days", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "reroute_if_idle_days")]],
      ["jabber_dog_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "jabber_dog_id")]],
      ["dialer_initiative_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "dialer_initiative_id")]],
      ["call_now", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "call_now")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfstring,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "string") }
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfLead,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Lead") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Event,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Event"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_first_name")]],
      ["owner_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_last_name")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(nil, "duration")]],
      ["dtstart", ["SOAP::SOAPString", XSD::QName.new(nil, "dtstart")]],
      ["dtend", ["SOAP::SOAPString", XSD::QName.new(nil, "dtend")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["account_name", ["SOAP::SOAPString", XSD::QName.new(nil, "account_name")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["contact_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_first_name")]],
      ["contact_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_last_name")]],
      ["deal_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal_id")]],
      ["deal_name", ["SOAP::SOAPString", XSD::QName.new(nil, "deal_name")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["lead_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_first_name")]],
      ["lead_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_last_name")]],
      ["case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "case_id")]],
      ["case_name", ["SOAP::SOAPString", XSD::QName.new(nil, "case_name")]],
      ["remind_advance", ["SOAP::SOAPInt", XSD::QName.new(nil, "remind_advance")]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]],
      ["all_day_event", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "all_day_event")]],
      ["reminder", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "reminder")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["max_attendees", ["SOAP::SOAPInt", XSD::QName.new(nil, "max_attendees")]],
      ["total_attendees", ["SOAP::SOAPInt", XSD::QName.new(nil, "total_attendees")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfEvent,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Event") }
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfEventAttendee,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "EventAttendee") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::EventAttendee,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "EventAttendee"),
    :schema_element => [
      ["event_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "event_id")]],
      ["employee_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "employee_user_id")]],
      ["contact_info_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_info_id")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["extra_data", ["SOAP::SOAPString", XSD::QName.new(nil, "extra_data")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]]
    ]
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Employee,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Employee"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["contact_info_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_info_id")]],
      ["reports_to_employee_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "reports_to_employee_user_id")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["assistant_employee_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "assistant_employee_user_id")]],
      ["licenses", ["SOAP::SOAPString", XSD::QName.new(nil, "licenses")]],
      ["last_sync_events", ["SOAP::SOAPString", XSD::QName.new(nil, "last_sync_events")]],
      ["last_sync_contacts", ["SOAP::SOAPString", XSD::QName.new(nil, "last_sync_contacts")]],
      ["last_sync_tasks", ["SOAP::SOAPString", XSD::QName.new(nil, "last_sync_tasks")]],
      ["company_settings", ["SOAP::SOAPString", XSD::QName.new(nil, "company_settings")]],
      ["admin", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "admin")]],
      ["division_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "division_id")]],
      ["division_ids", ["InsideSales::SOAP::C_Array", XSD::QName.new(nil, "division_ids")]],
      ["smtp_email_username", ["SOAP::SOAPString", XSD::QName.new(nil, "smtp_email_username")]],
      ["smtp_email_password", ["SOAP::SOAPString", XSD::QName.new(nil, "smtp_email_password")]],
      ["start_page_saved_view_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "start_page_saved_view_id")]],
      ["zone_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "zone_id")]],
      ["team_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "team_id")]],
      ["default_results_per_page", ["SOAP::SOAPInt", XSD::QName.new(nil, "default_results_per_page")]],
      ["warn_on_exit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "warn_on_exit")]],
      ["can_mass_email", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "can_mass_email")]],
      ["can_fax", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "can_fax")]],
      ["billing_account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "billing_account_id")]],
      ["dm_billing_account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "dm_billing_account_id")]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(nil, "nickname")]],
      ["ratio_record", ["SOAP::SOAPInt", XSD::QName.new(nil, "ratio_record")]],
      ["ratio_out_of", ["SOAP::SOAPInt", XSD::QName.new(nil, "ratio_out_of")]],
      ["layout_view_ids", ["InsideSales::SOAP::C_Array", XSD::QName.new(nil, "layout_view_ids")]],
      ["perm_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "perm_id")]],
      ["time_zone_id", ["InsideSales::SOAP::C_Array", XSD::QName.new(nil, "time_zone_id")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]],
      ["layout_view_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "layout_view_id")]],
      ["name_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "name_prefix")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["other_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "other_phone")]],
      ["home_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "home_phone")]],
      ["mobile_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile_phone")]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["birthdate", ["SOAP::SOAPString", XSD::QName.new(nil, "birthdate")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfEmployee,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Employee") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Deal,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Deal"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["lead_source_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_source_id")]],
      ["lead_source", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_source")]],
      ["stage_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "stage_id")]],
      ["stage", ["SOAP::SOAPString", XSD::QName.new(nil, "stage")]],
      ["rating_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "rating_id")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(nil, "rating")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["stage_email", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "stage_email")]],
      ["next_step", ["SOAP::SOAPString", XSD::QName.new(nil, "next_step")]],
      ["next_step_date", ["SOAP::SOAPString", XSD::QName.new(nil, "next_step_date")]],
      ["next_event", ["SOAP::SOAPString", XSD::QName.new(nil, "next_event")]],
      ["next_event_dtstart", ["SOAP::SOAPString", XSD::QName.new(nil, "next_event_dtstart")]],
      ["expected_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "expected_revenue")]],
      ["gross_margin", ["SOAP::SOAPFloat", XSD::QName.new(nil, "gross_margin")]],
      ["close_date", ["SOAP::SOAPString", XSD::QName.new(nil, "close_date")]],
      ["probability", ["SOAP::SOAPFloat", XSD::QName.new(nil, "probability")]],
      ["reference_number", ["SOAP::SOAPString", XSD::QName.new(nil, "reference_number")]],
      ["non_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "non_recurring_revenue")]],
      ["daily_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "daily_recurring_revenue")]],
      ["weekly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "weekly_recurring_revenue")]],
      ["monthly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "monthly_recurring_revenue")]],
      ["quarterly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "quarterly_recurring_revenue")]],
      ["yearly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "yearly_recurring_revenue")]],
      ["non_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "non_recurring_cost")]],
      ["daily_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "daily_recurring_cost")]],
      ["weekly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "weekly_recurring_cost")]],
      ["monthly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "monthly_recurring_cost")]],
      ["quarterly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "quarterly_recurring_cost")]],
      ["yearly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "yearly_recurring_cost")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfDeal,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Deal") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Contact,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Contact"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["date_modified_ci", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified_ci")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["unique_account", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "unique_account")]],
      ["account_name", ["SOAP::SOAPString", XSD::QName.new(nil, "account_name")]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(nil, "department")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["name_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "name_prefix")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "addr1")]],
      ["addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "addr2")]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "state_abbrev")]],
      ["zip", ["SOAP::SOAPInt", XSD::QName.new(nil, "zip")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")]],
      ["country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "country_abbrev")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["mobile_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile_phone")]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")]],
      ["home_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "home_phone")]],
      ["other_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "other_phone")]],
      ["birthdate", ["SOAP::SOAPString", XSD::QName.new(nil, "birthdate")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["lead_source", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_source")]],
      ["lead_status", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_status")]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")]],
      ["email_opt_out", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "email_opt_out")]],
      ["do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "do_not_call")]],
      ["fed_do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "fed_do_not_call")]],
      ["customFields_5", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_5")]],
      ["customFields_11", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_11")]],
      ["customFields_9", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_9")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfContact,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Contact") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Kase,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Kase"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["public_description", ["SOAP::SOAPString", XSD::QName.new(nil, "public_description")]],
      ["parent_case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_case_id")]],
      ["closed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "closed")]],
      ["date_closed", ["SOAP::SOAPString", XSD::QName.new(nil, "date_closed")]],
      ["due_date", ["SOAP::SOAPString", XSD::QName.new(nil, "due_date")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["primary_contact", ["SOAP::SOAPString", XSD::QName.new(nil, "primary_contact")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]],
      ["reason", ["SOAP::SOAPString", XSD::QName.new(nil, "reason")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfKase,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Kase") }
  )

  EncodedRegistry.register(
    :class => InsideSales::SOAP::Account,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Account"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["site", ["SOAP::SOAPString", XSD::QName.new(nil, "site")]],
      ["parent_account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_account_id")]],
      ["industry_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "industry_id")]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(nil, "industry")]],
      ["annual_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "annual_revenue")]],
      ["ticker_symbol", ["SOAP::SOAPString", XSD::QName.new(nil, "ticker_symbol")]],
      ["ownership_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ownership_id")]],
      ["ownership", ["SOAP::SOAPString", XSD::QName.new(nil, "ownership")]],
      ["number_of_employees", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_employees")]],
      ["sIC_code", ["SOAP::SOAPString", XSD::QName.new(nil, "SIC_code")]],
      ["nAICS_code", ["SOAP::SOAPString", XSD::QName.new(nil, "NAICS_code")]],
      ["vAT", ["SOAP::SOAPString", XSD::QName.new(nil, "VAT")]],
      ["suspended", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "suspended")]],
      ["sales_channel", ["InsideSales::SOAP::C_", XSD::QName.new(nil, "sales_channel")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["credit_limit", ["SOAP::SOAPFloat", XSD::QName.new(nil, "credit_limit")]],
      ["credit_balance", ["SOAP::SOAPFloat", XSD::QName.new(nil, "credit_balance")]],
      ["credit_terms", ["SOAP::SOAPInt", XSD::QName.new(nil, "credit_terms")]],
      ["credit_notes", ["SOAP::SOAPString", XSD::QName.new(nil, "credit_notes")]],
      ["contact_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_first_name")]],
      ["contact_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_last_name")]],
      ["contact_email", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_email")]],
      ["contact_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_phone")]],
      ["billing_email", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_email")]],
      ["billing_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_phone")]],
      ["billing_fax", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_fax")]],
      ["billing_addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_addr1")]],
      ["billing_addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_addr2")]],
      ["billing_city", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_city")]],
      ["billing_state", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_state")]],
      ["billing_state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_state_abbrev")]],
      ["billing_zip", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_zip")]],
      ["billing_country", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_country")]],
      ["billing_country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_country_abbrev")]],
      ["shipping_email", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_email")]],
      ["shipping_addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_addr1")]],
      ["shipping_addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_addr2")]],
      ["shipping_city", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_city")]],
      ["shipping_state", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_state")]],
      ["shipping_state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_state_abbrev")]],
      ["shipping_zip", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_zip")]],
      ["shipping_country", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_country")]],
      ["shipping_country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_country_abbrev")]],
      ["prospect_to_customer_date", ["SOAP::SOAPString", XSD::QName.new(nil, "prospect_to_customer_date")]],
      ["customFields_17", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_17")]],
      ["customFields_7", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_7")]],
      ["customFields_23", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_23")]],
      ["customFields_15", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_15")]],
      ["customFields_19", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "customFields_19")]],
      ["customFields_21", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_21")]]
    ]
  )

  EncodedRegistry.set(
    InsideSales::SOAP::ArrayOfAccount,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsWwwInsidesalesCom, "Account") }
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Task,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Task"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["deal_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal_id")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "case_id")]],
      ["v_class", ["SOAP::SOAPString", XSD::QName.new(nil, "class")]],
      ["dtstart", ["SOAP::SOAPString", XSD::QName.new(nil, "dtstart")]],
      ["completed", ["SOAP::SOAPString", XSD::QName.new(nil, "completed")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["geo_latitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "geo_latitude")]],
      ["geo_longitude", ["SOAP::SOAPInt", XSD::QName.new(nil, "geo_longitude")]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]],
      ["organizer_contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "organizer_contact_user_id")]],
      ["percent", ["SOAP::SOAPInt", XSD::QName.new(nil, "percent")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["notification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "notification")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["due", ["SOAP::SOAPString", XSD::QName.new(nil, "due")]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(nil, "duration")]],
      ["reminder", ["SOAP::SOAPString", XSD::QName.new(nil, "reminder")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Filter,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Filter"),
    :schema_element => [
      ["field", ["SOAP::SOAPString", XSD::QName.new(nil, "field")]],
      ["operator", ["SOAP::SOAPString", XSD::QName.new(nil, "operator")]],
      ["values", ["InsideSales::SOAP::ArrayOfString", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::SkillOption,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "SkillOption"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["option", ["SOAP::SOAPString", XSD::QName.new(nil, "option")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::RoutingRule,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "RoutingRule"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["employee_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "employee_id")]],
      ["campaign_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "campaign_id")]],
      ["skill_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "skill_id")]],
      ["send_notification", ["SOAP::SOAPInt", XSD::QName.new(nil, "send_notification")]],
      ["route_subobjects", ["SOAP::SOAPInt", XSD::QName.new(nil, "route_subobjects")]],
      ["round_robin", ["SOAP::SOAPInt", XSD::QName.new(nil, "round_robin")]],
      ["route_to_available", ["SOAP::SOAPInt", XSD::QName.new(nil, "route_to_available")]],
      ["quota_interval", ["SOAP::SOAPString", XSD::QName.new(nil, "quota_interval")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Quota,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Quota"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["employee_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "employee_id")]],
      ["quota", ["SOAP::SOAPString", XSD::QName.new(nil, "quota")]],
      ["days_active", ["SOAP::SOAPString", XSD::QName.new(nil, "days_active")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Skill,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Skill"),
    :schema_element => [
      ["routing_rule_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "routing_rule_id")]],
      ["skill_id", ["SOAP::SOAPString", XSD::QName.new(nil, "skill_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["display_name", ["SOAP::SOAPString", XSD::QName.new(nil, "display_name")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::SkillOptionEmployee,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "SkillOptionEmployee"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["proficiency", ["SOAP::SOAPString", XSD::QName.new(nil, "proficiency")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Note,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Note"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["deal_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal_id")]],
      ["case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "case_id")]],
      ["private", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "private")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Lead,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Lead"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["owner_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_first_name")]],
      ["owner_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_last_name")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["account_number", ["SOAP::SOAPString", XSD::QName.new(nil, "account_number")]],
      ["name_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "name_prefix")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["middle_name", ["SOAP::SOAPString", XSD::QName.new(nil, "middle_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["mobile_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile_phone")]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")]],
      ["home_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "home_phone")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["email_opt_out", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "email_opt_out")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "addr1")]],
      ["addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "addr2")]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "state_abbrev")]],
      ["zip", ["SOAP::SOAPInt", XSD::QName.new(nil, "zip")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")]],
      ["country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "country_abbrev")]],
      ["assistant_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "assistant_first_name")]],
      ["assistant_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "assistant_last_name")]],
      ["assistant_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "assistant_phone")]],
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company_name")]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(nil, "industry")]],
      ["annual_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "annual_revenue")]],
      ["ticker_symbol", ["SOAP::SOAPString", XSD::QName.new(nil, "ticker_symbol")]],
      ["number_of_employees", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_employees")]],
      ["company_website", ["SOAP::SOAPString", XSD::QName.new(nil, "company_website")]],
      ["account_ownership", ["SOAP::SOAPString", XSD::QName.new(nil, "account_ownership")]],
      ["campaign_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "campaign_id")]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["source", ["SOAP::SOAPString", XSD::QName.new(nil, "source")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(nil, "rating")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["external_object", ["SOAP::SOAPString", XSD::QName.new(nil, "external_object")]],
      ["do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "do_not_call")]],
      ["fed_do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "fed_do_not_call")]],
      ["lead_score", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_score")]],
      ["add_lead_flags", ["InsideSales::SOAP::AddLeadFlags", XSD::QName.new(nil, "add_lead_flags")]],
      ["status_changed_date", ["SOAP::SOAPString", XSD::QName.new(nil, "status_changed_date")]],
      ["customFields_17", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_17")]],
      ["customFields_7", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_7")]],
      ["customFields_23", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_23")]],
      ["customFields_15", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_15")]],
      ["customFields_19", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "customFields_19")]],
      ["customFields_21", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_21")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::AddLeadFlags,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "AddLeadFlags"),
    :schema_element => [
      ["do_not_notify", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "do_not_notify")]],
      ["phone_survey_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "phone_survey_id")]],
      ["email_template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "email_template_id")]],
      ["email_notification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "email_notification")]],
      ["dup_campaign_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "dup_campaign_id")]],
      ["dup_basis", ["SOAP::SOAPString", XSD::QName.new(nil, "dup_basis")]],
      ["relate_to_dup", ["SOAP::SOAPString", XSD::QName.new(nil, "relate_to_dup")]],
      ["inbound_initiative_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "inbound_initiative_id")]],
      ["ivr_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ivr_id")]],
      ["routing_rule_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "routing_rule_id")]],
      ["reroute_if_idle_days", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "reroute_if_idle_days")]],
      ["jabber_dog_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "jabber_dog_id")]],
      ["dialer_initiative_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "dialer_initiative_id")]],
      ["call_now", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "call_now")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Event,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Event"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_first_name")]],
      ["owner_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "owner_last_name")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duration", ["SOAP::SOAPString", XSD::QName.new(nil, "duration")]],
      ["dtstart", ["SOAP::SOAPString", XSD::QName.new(nil, "dtstart")]],
      ["dtend", ["SOAP::SOAPString", XSD::QName.new(nil, "dtend")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["account_name", ["SOAP::SOAPString", XSD::QName.new(nil, "account_name")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["contact_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_first_name")]],
      ["contact_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_last_name")]],
      ["deal_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal_id")]],
      ["deal_name", ["SOAP::SOAPString", XSD::QName.new(nil, "deal_name")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["lead_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_first_name")]],
      ["lead_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_last_name")]],
      ["case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "case_id")]],
      ["case_name", ["SOAP::SOAPString", XSD::QName.new(nil, "case_name")]],
      ["remind_advance", ["SOAP::SOAPInt", XSD::QName.new(nil, "remind_advance")]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]],
      ["all_day_event", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "all_day_event")]],
      ["reminder", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "reminder")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["max_attendees", ["SOAP::SOAPInt", XSD::QName.new(nil, "max_attendees")]],
      ["total_attendees", ["SOAP::SOAPInt", XSD::QName.new(nil, "total_attendees")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::EventAttendee,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "EventAttendee"),
    :schema_element => [
      ["event_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "event_id")]],
      ["employee_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "employee_user_id")]],
      ["contact_info_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_info_id")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["extra_data", ["SOAP::SOAPString", XSD::QName.new(nil, "extra_data")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Employee,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Employee"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["contact_info_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_info_id")]],
      ["reports_to_employee_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "reports_to_employee_user_id")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["assistant_employee_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "assistant_employee_user_id")]],
      ["licenses", ["SOAP::SOAPString", XSD::QName.new(nil, "licenses")]],
      ["last_sync_events", ["SOAP::SOAPString", XSD::QName.new(nil, "last_sync_events")]],
      ["last_sync_contacts", ["SOAP::SOAPString", XSD::QName.new(nil, "last_sync_contacts")]],
      ["last_sync_tasks", ["SOAP::SOAPString", XSD::QName.new(nil, "last_sync_tasks")]],
      ["company_settings", ["SOAP::SOAPString", XSD::QName.new(nil, "company_settings")]],
      ["admin", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "admin")]],
      ["division_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "division_id")]],
      ["division_ids", ["InsideSales::SOAP::C_Array", XSD::QName.new(nil, "division_ids")]],
      ["smtp_email_username", ["SOAP::SOAPString", XSD::QName.new(nil, "smtp_email_username")]],
      ["smtp_email_password", ["SOAP::SOAPString", XSD::QName.new(nil, "smtp_email_password")]],
      ["start_page_saved_view_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "start_page_saved_view_id")]],
      ["zone_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "zone_id")]],
      ["team_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "team_id")]],
      ["default_results_per_page", ["SOAP::SOAPInt", XSD::QName.new(nil, "default_results_per_page")]],
      ["warn_on_exit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "warn_on_exit")]],
      ["can_mass_email", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "can_mass_email")]],
      ["can_fax", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "can_fax")]],
      ["billing_account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "billing_account_id")]],
      ["dm_billing_account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "dm_billing_account_id")]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(nil, "nickname")]],
      ["ratio_record", ["SOAP::SOAPInt", XSD::QName.new(nil, "ratio_record")]],
      ["ratio_out_of", ["SOAP::SOAPInt", XSD::QName.new(nil, "ratio_out_of")]],
      ["layout_view_ids", ["InsideSales::SOAP::C_Array", XSD::QName.new(nil, "layout_view_ids")]],
      ["perm_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "perm_id")]],
      ["time_zone_id", ["InsideSales::SOAP::C_Array", XSD::QName.new(nil, "time_zone_id")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]],
      ["layout_view_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "layout_view_id")]],
      ["name_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "name_prefix")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["other_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "other_phone")]],
      ["home_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "home_phone")]],
      ["mobile_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile_phone")]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["birthdate", ["SOAP::SOAPString", XSD::QName.new(nil, "birthdate")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Deal,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Deal"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "account_id")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["lead_source_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_source_id")]],
      ["lead_source", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_source")]],
      ["stage_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "stage_id")]],
      ["stage", ["SOAP::SOAPString", XSD::QName.new(nil, "stage")]],
      ["rating_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "rating_id")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(nil, "rating")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["stage_email", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "stage_email")]],
      ["next_step", ["SOAP::SOAPString", XSD::QName.new(nil, "next_step")]],
      ["next_step_date", ["SOAP::SOAPString", XSD::QName.new(nil, "next_step_date")]],
      ["next_event", ["SOAP::SOAPString", XSD::QName.new(nil, "next_event")]],
      ["next_event_dtstart", ["SOAP::SOAPString", XSD::QName.new(nil, "next_event_dtstart")]],
      ["expected_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "expected_revenue")]],
      ["gross_margin", ["SOAP::SOAPFloat", XSD::QName.new(nil, "gross_margin")]],
      ["close_date", ["SOAP::SOAPString", XSD::QName.new(nil, "close_date")]],
      ["probability", ["SOAP::SOAPFloat", XSD::QName.new(nil, "probability")]],
      ["reference_number", ["SOAP::SOAPString", XSD::QName.new(nil, "reference_number")]],
      ["non_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "non_recurring_revenue")]],
      ["daily_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "daily_recurring_revenue")]],
      ["weekly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "weekly_recurring_revenue")]],
      ["monthly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "monthly_recurring_revenue")]],
      ["quarterly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "quarterly_recurring_revenue")]],
      ["yearly_recurring_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "yearly_recurring_revenue")]],
      ["non_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "non_recurring_cost")]],
      ["daily_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "daily_recurring_cost")]],
      ["weekly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "weekly_recurring_cost")]],
      ["monthly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "monthly_recurring_cost")]],
      ["quarterly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "quarterly_recurring_cost")]],
      ["yearly_recurring_cost", ["SOAP::SOAPFloat", XSD::QName.new(nil, "yearly_recurring_cost")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Contact,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Contact"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["date_modified_ci", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified_ci")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["unique_account", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "unique_account")]],
      ["account_name", ["SOAP::SOAPString", XSD::QName.new(nil, "account_name")]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(nil, "department")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["name_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "name_prefix")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "addr1")]],
      ["addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "addr2")]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "state_abbrev")]],
      ["zip", ["SOAP::SOAPInt", XSD::QName.new(nil, "zip")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")]],
      ["country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "country_abbrev")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["mobile_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile_phone")]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")]],
      ["home_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "home_phone")]],
      ["other_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "other_phone")]],
      ["birthdate", ["SOAP::SOAPString", XSD::QName.new(nil, "birthdate")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["lead_source", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_source")]],
      ["lead_status", ["SOAP::SOAPString", XSD::QName.new(nil, "lead_status")]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")]],
      ["email_opt_out", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "email_opt_out")]],
      ["do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "do_not_call")]],
      ["fed_do_not_call", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "fed_do_not_call")]],
      ["customFields_5", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_5")]],
      ["customFields_11", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_11")]],
      ["customFields_9", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_9")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Kase,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Kase"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["public_description", ["SOAP::SOAPString", XSD::QName.new(nil, "public_description")]],
      ["parent_case_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_case_id")]],
      ["closed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "closed")]],
      ["date_closed", ["SOAP::SOAPString", XSD::QName.new(nil, "date_closed")]],
      ["due_date", ["SOAP::SOAPString", XSD::QName.new(nil, "due_date")]],
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact_user_id")]],
      ["lead_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "lead_id")]],
      ["primary_contact", ["SOAP::SOAPString", XSD::QName.new(nil, "primary_contact")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["origin", ["SOAP::SOAPString", XSD::QName.new(nil, "origin")]],
      ["reason", ["SOAP::SOAPString", XSD::QName.new(nil, "reason")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsideSales::SOAP::Account,
    :schema_type => XSD::QName.new(NsWwwInsidesalesCom, "Account"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["external_id", ["SOAP::SOAPString", XSD::QName.new(nil, "external_id")]],
      ["owner_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "owner_user_id")]],
      ["owner_user_ids", ["InsideSales::SOAP::ArrayOfint", XSD::QName.new(nil, "owner_user_ids")]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")]],
      ["created_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "created_by_user_id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["modified_by_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "modified_by_user_id")]],
      ["deleted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "deleted")]],
      ["date_deleted", ["SOAP::SOAPString", XSD::QName.new(nil, "date_deleted")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")]],
      ["type_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "type_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["site", ["SOAP::SOAPString", XSD::QName.new(nil, "site")]],
      ["parent_account_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_account_id")]],
      ["industry_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "industry_id")]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(nil, "industry")]],
      ["annual_revenue", ["SOAP::SOAPFloat", XSD::QName.new(nil, "annual_revenue")]],
      ["ticker_symbol", ["SOAP::SOAPString", XSD::QName.new(nil, "ticker_symbol")]],
      ["ownership_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ownership_id")]],
      ["ownership", ["SOAP::SOAPString", XSD::QName.new(nil, "ownership")]],
      ["number_of_employees", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_employees")]],
      ["sIC_code", ["SOAP::SOAPString", XSD::QName.new(nil, "SIC_code")]],
      ["nAICS_code", ["SOAP::SOAPString", XSD::QName.new(nil, "NAICS_code")]],
      ["vAT", ["SOAP::SOAPString", XSD::QName.new(nil, "VAT")]],
      ["suspended", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "suspended")]],
      ["sales_channel", ["InsideSales::SOAP::C_", XSD::QName.new(nil, "sales_channel")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")]],
      ["credit_limit", ["SOAP::SOAPFloat", XSD::QName.new(nil, "credit_limit")]],
      ["credit_balance", ["SOAP::SOAPFloat", XSD::QName.new(nil, "credit_balance")]],
      ["credit_terms", ["SOAP::SOAPInt", XSD::QName.new(nil, "credit_terms")]],
      ["credit_notes", ["SOAP::SOAPString", XSD::QName.new(nil, "credit_notes")]],
      ["contact_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_first_name")]],
      ["contact_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_last_name")]],
      ["contact_email", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_email")]],
      ["contact_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "contact_phone")]],
      ["billing_email", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_email")]],
      ["billing_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_phone")]],
      ["billing_fax", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_fax")]],
      ["billing_addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_addr1")]],
      ["billing_addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_addr2")]],
      ["billing_city", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_city")]],
      ["billing_state", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_state")]],
      ["billing_state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_state_abbrev")]],
      ["billing_zip", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_zip")]],
      ["billing_country", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_country")]],
      ["billing_country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_country_abbrev")]],
      ["shipping_email", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_email")]],
      ["shipping_addr1", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_addr1")]],
      ["shipping_addr2", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_addr2")]],
      ["shipping_city", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_city")]],
      ["shipping_state", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_state")]],
      ["shipping_state_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_state_abbrev")]],
      ["shipping_zip", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_zip")]],
      ["shipping_country", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_country")]],
      ["shipping_country_abbrev", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_country_abbrev")]],
      ["prospect_to_customer_date", ["SOAP::SOAPString", XSD::QName.new(nil, "prospect_to_customer_date")]],
      ["customFields_17", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_17")]],
      ["customFields_7", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_7")]],
      ["customFields_23", ["SOAP::SOAPString", XSD::QName.new(nil, "customFields_23")]],
      ["customFields_15", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_15")]],
      ["customFields_19", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "customFields_19")]],
      ["customFields_21", ["InsideSales::SOAP::ArrayOfstring", XSD::QName.new(nil, "customFields_21")]]
    ]
  )

end

end; end
