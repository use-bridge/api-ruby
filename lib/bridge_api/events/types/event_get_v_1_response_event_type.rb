# frozen_string_literal: true

module Bridge_api
  module Events
    module Types
      module EventGetV1ResponseEventType
        extend Bridge_api::Internal::Types::Enum

        PATIENT_CREATED = "patient.created"
        PATIENT_UPDATED = "patient.updated"
        SERVICE_CREATED = "service.created"
        SERVICE_UPDATED = "service.updated"
        PAYMENT_CREATED = "payment.created"
        POLICY_CREATED = "policy.created"
        POLICY_UPDATED = "policy.updated"
        NOTE_CREATED = "note.created"
        NOTE_UPDATED = "note.updated"
        SERVICE_ELIGIBILITY_CREATED = "service_eligibility.created"
        SERVICE_ELIGIBILITY_UPDATED = "service_eligibility.updated"
        PROVIDER_ENROLLMENT_STATUS_UPDATED = "provider.enrollment_status.updated"
        ESTIMATE_CHARGE_CREATED = "estimate_charge.created"
        ESTIMATE_CHARGE_UPDATED = "estimate_charge.updated"
        SERVICE_INVOICE_CREATED = "service_invoice.created"
        SERVICE_INVOICE_UPDATED = "service_invoice.updated"
        FEE_CREATED = "fee.created"
        FEE_UPDATED = "fee.updated"
        PAYER_GROUP_HEALTH_UPDATED = "payer_group.health.updated"
        PAYER_GROUP_HEALTH_EVENT_CREATED = "payer_group.health_event.created"
      end
    end
  end
end
