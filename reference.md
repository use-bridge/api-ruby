# Reference
## Billing EstimateCharges
<details><summary><code>client.billing.estimate_charges.<a href="/lib/bridge_api/billing/estimate_charges/client.rb">list_estimate_charges</a>() -> Bridge_api::Billing::EstimateCharges::Types::EstimateChargesListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.estimate_charges.list_estimate_charges
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter_external_id:** `String` — should be JSON-encoded, for example filter.externalId="external_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_patient_id:** `String` — should be JSON-encoded, for example filter.patientId="pat_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_service_id:** `String` — should be JSON-encoded, for example filter.serviceId="svc_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_service_eligibility_id:** `String` — should be JSON-encoded, for example filter.serviceEligibilityId="sel_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_status:** `Bridge_api::Billing::EstimateCharges::Types::EstimateChargesListV1FilterStatus` — should be JSON-encoded, for example filter.status="AUTHORIZED"
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/bridge_api/billing/estimate_charges/client.rb">create_estimate_charge</a>(request) -> Bridge_api::Billing::EstimateCharges::Types::EstimateChargeCreateV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Conflicting EstimateCharge exists`
- `Missing Service Eligibility Amount`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.estimate_charges.create_estimate_charge(
  patient_id: "patientId",
  service_eligibility_id: "serviceEligibilityId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Billing::EstimateCharges::Types::EstimateChargeCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/bridge_api/billing/estimate_charges/client.rb">authorize_stripe_estimate_charge</a>(id:) -> Bridge_api::Billing::EstimateCharges::Types::EstimateChargeAuthorizeStripeV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Invalid Estimate Charge Status`
- `Missing Customer`
- `Missing Customer Payment Method`
- `Payment Already Captured`
- `Payment has been Voided`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.estimate_charges.authorize_stripe_estimate_charge(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/bridge_api/billing/estimate_charges/client.rb">capture_stripe_estimate_charge</a>(id:) -> Bridge_api::Billing::EstimateCharges::Types::EstimateChargeCaptureStripeV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Invalid Estimate Charge Status`
- `Missing Customer`
- `Missing Customer Payment Method`
- `Payment Already Captured`
- `Payment has been Voided`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.estimate_charges.capture_stripe_estimate_charge(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/bridge_api/billing/estimate_charges/client.rb">refund_stripe_estimate_charge</a>(id:) -> Bridge_api::Billing::EstimateCharges::Types::EstimateChargeRefundStripeV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Invalid Estimate Charge Status`
- `Missing Captured Transaction`
- `Missing Customer`
- `Missing Payment Intent`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.estimate_charges.refund_stripe_estimate_charge(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/bridge_api/billing/estimate_charges/client.rb">cancel_stripe_estimate_charge</a>(id:) -> Bridge_api::Billing::EstimateCharges::Types::EstimateChargeCancelStripeV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Invalid Estimate Charge Status`
- `Missing Authorized Transaction`
- `Missing Customer`
- `Missing Payment Intent`
- `Payment Already Captured`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.estimate_charges.cancel_stripe_estimate_charge(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing Fees
<details><summary><code>client.billing.fees.<a href="/lib/bridge_api/billing/fees/client.rb">list_fees</a>() -> Bridge_api::Billing::Fees::Types::FeesListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.fees.list_fees
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter_external_id:** `String` — should be JSON-encoded, for example filter.externalId="external_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_patient_id:** `String` — should be JSON-encoded, for example filter.patientId="pat_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_service_id:** `String` — should be JSON-encoded, for example filter.serviceId="svc_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_service_eligibility_id:** `String` — should be JSON-encoded, for example filter.serviceEligibilityId="sel_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_status:** `Bridge_api::Billing::Fees::Types::FeesListV1FilterStatus` — should be JSON-encoded, for example filter.status="PENDING"
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.fees.<a href="/lib/bridge_api/billing/fees/client.rb">create_fee</a>(request) -> Bridge_api::Billing::Fees::Types::FeeCreateV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Conflicting Fee exists`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.fees.create_fee(
  patient_id: "patientId",
  type: "LATE_CANCELLATION"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Billing::Fees::Types::FeeCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.fees.<a href="/lib/bridge_api/billing/fees/client.rb">capture_stripe_fee</a>(id:) -> Bridge_api::Billing::Fees::Types::FeeCaptureStripeV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Invalid Fee Status`
- `Missing Customer`
- `Missing Customer Payment Method`
- `Payment Already Captured`
- `Payment has been Voided`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.fees.capture_stripe_fee(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.fees.<a href="/lib/bridge_api/billing/fees/client.rb">refund_stripe_fee</a>(id:) -> Bridge_api::Billing::Fees::Types::FeeRefundStripeV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.

This endpoint may return a `409` error response with one of these public `message` values:
- `Invalid Fee Status`
- `Missing Captured Transaction`
- `Missing Customer`
- `Missing Payment Intent`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.fees.refund_stripe_fee(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing SetupIntent
<details><summary><code>client.billing.setup_intent.<a href="/lib/bridge_api/billing/setup_intent/client.rb">create_stripe_setup_intent</a>(request) -> Bridge_api::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint can only be used after setting up the billing integration. Refer to the [billing integration documentation](/documentation/integrations/billing/overview) for more details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.setup_intent.create_stripe_setup_intent(patient_id: "patientId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Billing::SetupIntent::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ConsentVersions
<details><summary><code>client.consent_versions.<a href="/lib/bridge_api/consent_versions/client.rb">list_consent_versions</a>() -> Bridge_api::ConsentVersions::Types::ConsentVersionsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.consent_versions.list_consent_versions
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ConsentVersions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Consent
<details><summary><code>client.consent.<a href="/lib/bridge_api/consent/client.rb">list_patient_consents</a>(id:) -> Bridge_api::Consent::Types::PatientConsentsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.consent.list_patient_consents(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Consent::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consent.<a href="/lib/bridge_api/consent/client.rb">create_patient_consent</a>(id:, request) -> Bridge_api::Consent::Types::PatientConsentCreateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.consent.create_patient_consent(
  id: "id",
  type: "ASSIGNMENT_OF_BENEFITS",
  version: "version",
  consented_at: "2024-01-15T09:30:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Bridge_api::Consent::Types::PatientConsentCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Consent::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Events
<details><summary><code>client.events.<a href="/lib/bridge_api/events/client.rb">list_events</a>() -> Bridge_api::Events::Types::EventsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.events.list_events
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter_event_type:** `String` — Values should be JSON-encoded, for example filter.eventType="patient.created"
    
</dd>
</dl>

<dl>
<dd>

**filter_object_type:** `String` — Values should be JSON-encoded, for example filter.objectType="Patient"
    
</dd>
</dl>

<dl>
<dd>

**filter_object_id:** `String` — Values should be JSON-encoded, for example filter.objectId="pol_xxx"
    
</dd>
</dl>

<dl>
<dd>

**order_created_at:** `Bridge_api::Events::Types::EventsListV1OrderCreatedAt` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.events.<a href="/lib/bridge_api/events/client.rb">get_event</a>(id:) -> Bridge_api::Events::Types::EventGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.events.get_event(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notes
<details><summary><code>client.notes.<a href="/lib/bridge_api/notes/client.rb">create_note</a>(request) -> Bridge_api::Notes::Types::NoteCreateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notes.create_note(
  service_id: "serviceId",
  data: {},
  signature: {
    timestamp: "2024-01-15T09:30:00Z",
    provider_id: "providerId"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Notes::Types::NoteCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notes.<a href="/lib/bridge_api/notes/client.rb">get_note</a>(id:) -> Bridge_api::Notes::Types::NoteGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notes.get_note(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notes.<a href="/lib/bridge_api/notes/client.rb">list_note_addenda</a>(id:) -> Bridge_api::Notes::Types::NoteAddendaListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notes.list_note_addenda(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**filter_note_id:** `String` — should be JSON-encoded, for example filter.noteId="note_xxx"
    
</dd>
</dl>

<dl>
<dd>

**order_created_at:** `Bridge_api::Notes::Types::NoteAddendaListV1OrderCreatedAt` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notes.<a href="/lib/bridge_api/notes/client.rb">create_note_addendum</a>(id:, request) -> Bridge_api::Notes::Types::NoteAddendumCreateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notes.create_note_addendum(
  id: "id",
  data: {},
  signature: {
    timestamp: "2024-01-15T09:30:00Z",
    provider_id: "providerId"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Bridge_api::Notes::Types::NoteAddendumCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PatientToken
<details><summary><code>client.patient_token.<a href="/lib/bridge_api/patient_token/client.rb">create_patient_token</a>(request) -> Bridge_api::PatientToken::Types::PatientTokenCreateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.patient_token.create_patient_token(patient_id: "patientId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::PatientToken::Types::PatientTokenCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::PatientToken::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Patients
<details><summary><code>client.patients.<a href="/lib/bridge_api/patients/client.rb">stream_patient</a>(id:) -> Bridge_api::Patients::Types::PatientStreamV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.patients.stream_patient(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.<a href="/lib/bridge_api/patients/client.rb">list_patients</a>() -> Bridge_api::Patients::Types::PatientsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.patients.list_patients
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.<a href="/lib/bridge_api/patients/client.rb">update_patient</a>(id:, request) -> Bridge_api::Patients::Types::PatientUpdateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.patients.update_patient(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Bridge_api::Patients::Types::PatientUpdateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.<a href="/lib/bridge_api/patients/client.rb">revalidate_patient</a>(id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.patients.revalidate_patient(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Patients V2
<details><summary><code>client.patients.v_2.<a href="/lib/bridge_api/patients/v_2/client.rb">create_patient</a>(request) -> Bridge_api::Patients::V2::Types::PatientCreateV2Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.patients.v_2.create_patient(
  first_name: "firstName",
  last_name: "lastName",
  email: "email",
  date_of_birth: "2024-01-15T09:30:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Patients::V2::Types::PatientCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Patients::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.v_2.<a href="/lib/bridge_api/patients/v_2/client.rb">get_patient</a>(id:) -> Bridge_api::Patients::V2::Types::PatientGetV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resolves a Patient by either `id` or `externalId`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.patients.v_2.get_patient(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Patients::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PayerGroups
<details><summary><code>client.payer_groups.<a href="/lib/bridge_api/payer_groups/client.rb">list_payer_groups</a>() -> Bridge_api::PayerGroups::Types::PayerGroupsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payer_groups.list_payer_groups
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::PayerGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payer_groups.<a href="/lib/bridge_api/payer_groups/client.rb">get_payer_group</a>(id:) -> Bridge_api::PayerGroups::Types::PayerGroupGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payer_groups.get_payer_group(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Payer group ID or slug (both are supported)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::PayerGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PayerGroups Health
<details><summary><code>client.payer_groups.health.<a href="/lib/bridge_api/payer_groups/health/client.rb">list_health_events</a>(id:) -> Bridge_api::PayerGroups::Health::Types::HealthEventsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payer_groups.health.list_health_events(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Payer group ID or slug (both are supported)
    
</dd>
</dl>

<dl>
<dd>

**order_event_at:** `Bridge_api::PayerGroups::Health::Types::HealthEventsListV1OrderEventAt` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::PayerGroups::Health::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payers
<details><summary><code>client.payers.<a href="/lib/bridge_api/payers/client.rb">get_payer</a>(id:) -> Bridge_api::Payers::Types::PayerGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payers.get_payer(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Payers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payments
<details><summary><code>client.payments.<a href="/lib/bridge_api/payments/client.rb">list_payments</a>() -> Bridge_api::Payments::Types::PaymentsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.list_payments
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter_patient_id:** `String` — Values should be JSON-encoded, for example filter.patientId="pat_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_service_id:** `String` — Values should be JSON-encoded, for example filter.serviceId="svc_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_type:** `Bridge_api::Payments::Types::PaymentsListV1FilterType` — Values should be JSON-encoded, for example filter.type="PATIENT"
    
</dd>
</dl>

<dl>
<dd>

**order_paid_at:** `Bridge_api::Payments::Types::PaymentsListV1OrderPaidAt` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/bridge_api/payments/client.rb">create_payment</a>(request) -> Bridge_api::Payments::Types::PaymentCreateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.create_payment(
  service_id: "serviceId",
  paid_at: "2024-01-15T09:30:00Z",
  transaction_id: "transactionId",
  type: "PATIENT",
  amount: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Payments::Types::PaymentCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/bridge_api/payments/client.rb">get_payment</a>(id:) -> Bridge_api::Payments::Types::PaymentGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.get_payment(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Policies
<details><summary><code>client.policies.<a href="/lib/bridge_api/policies/client.rb">get_policy</a>(id:) -> Bridge_api::Policies::Types::PolicyGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.policies.get_policy(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.policies.<a href="/lib/bridge_api/policies/client.rb">revalidate_policy</a>(id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.policies.revalidate_policy(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.policies.<a href="/lib/bridge_api/policies/client.rb">stream_policy</a>(id:) -> Bridge_api::Policies::Types::PolicyStreamV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.policies.stream_policy(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Policies V2
<details><summary><code>client.policies.v_2.<a href="/lib/bridge_api/policies/v_2/client.rb">create_policy</a>(request) -> Bridge_api::Policies::V2::Types::PolicyCreateV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Policy, returning immediately with status of `PENDING`. Use the Get Policy API, or monitor webhooks, to receive updates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.policies.v_2.create_policy(
  person: {
    first_name: "firstName",
    last_name: "lastName",
    date_of_birth: "2024-01-15T09:30:00Z"
  },
  state: "AL",
  payer_id: "payerId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Policies::V2::Types::PolicyCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Policies::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ProviderEligibility
<details><summary><code>client.provider_eligibility.<a href="/lib/bridge_api/provider_eligibility/client.rb">create_provider_eligibility</a>(request) -> Bridge_api::ProviderEligibility::Types::ProviderEligibilityCreateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.provider_eligibility.create_provider_eligibility(
  date_of_service: "2024-01-15T09:30:00Z",
  service_type_id: "serviceTypeId",
  location: {
    state: "AL"
  },
  payer_id: "payerId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::ProviderEligibility::Types::ProviderEligibilityCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ProviderEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.provider_eligibility.<a href="/lib/bridge_api/provider_eligibility/client.rb">get_provider_eligibility</a>(id:) -> Bridge_api::ProviderEligibility::Types::ProviderEligibilityGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.provider_eligibility.get_provider_eligibility(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ProviderEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Providers
<details><summary><code>client.providers.<a href="/lib/bridge_api/providers/client.rb">submit_providers</a>(request) -> Bridge_api::Providers::Types::ProviderPostV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits one or more providers for credentialing intake. In live environments, this starts the provider submission workflow and resolves provider names from the CMS NPI Registry. In sandbox, the endpoint is available with the same request and response shape, but providers are created immediately without an external NPI registry lookup; created providers use firstName `Sandbox` and lastName set to the submitted NPI.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.providers.submit_providers(providers: [{
  npi: "npi",
  email: "email",
  caqh_id: "caqhId",
  caqh_username: "caqhUsername",
  caqh_password: "caqhPassword"
}, {
  npi: "npi",
  email: "email",
  caqh_id: "caqhId",
  caqh_username: "caqhUsername",
  caqh_password: "caqhPassword"
}])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Providers::Types::ProviderPostV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.providers.<a href="/lib/bridge_api/providers/client.rb">list_providers</a>() -> Bridge_api::Providers::Types::ProvidersListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.providers.list_providers
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter_active:** `Internal::Types::Boolean` — Value is a raw boolean, example filter.active=true
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.providers.<a href="/lib/bridge_api/providers/client.rb">get_provider</a>(id:) -> Bridge_api::Providers::Types::ProviderGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.providers.get_provider(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.providers.<a href="/lib/bridge_api/providers/client.rb">update_provider</a>(id:, request) -> Bridge_api::Providers::Types::ProviderUpdateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.providers.update_provider(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Bridge_api::Providers::Types::ProviderUpdateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Providers Enrollment
<details><summary><code>client.providers.enrollment.<a href="/lib/bridge_api/providers/enrollment/client.rb">get_provider_enrollment_status</a>(id:) -> Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the high-level enrollment status of a provider

**Production only:** This endpoint is only available in Production and will not work in Sandbox.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.providers.enrollment.get_provider_enrollment_status(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Providers::Enrollment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Search
<details><summary><code>client.search.<a href="/lib/bridge_api/search/client.rb">payer_search</a>(request) -> Bridge_api::Search::Types::SearchPayerV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.search.payer_search(
  query: "query",
  limit: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Search::Types::SearchPayerV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Search::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ServiceEligibility
<details><summary><code>client.service_eligibility.<a href="/lib/bridge_api/service_eligibility/client.rb">stream_service_eligibility</a>(id:) -> Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.service_eligibility.stream_service_eligibility(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ServiceEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.service_eligibility.<a href="/lib/bridge_api/service_eligibility/client.rb">get_service_eligibility</a>(id:) -> Bridge_api::ServiceEligibility::Types::ServiceEligibilityGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.service_eligibility.get_service_eligibility(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ServiceEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ServiceEligibility V2
<details><summary><code>client.service_eligibility.v_2.<a href="/lib/bridge_api/service_eligibility/v_2/client.rb">create_service_eligibility</a>(request) -> Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a ServiceEligibility, returns immediately in the `PENDING` status. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.service_eligibility.v_2.create_service_eligibility(
  service_type_id: "serviceTypeId",
  date_of_service: "2024-01-15T09:30:00Z",
  state: "AL"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ServiceEligibility::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ServiceTypes
<details><summary><code>client.service_types.<a href="/lib/bridge_api/service_types/client.rb">list_service_types</a>() -> Bridge_api::ServiceTypes::Types::ServiceTypesListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.service_types.list_service_types
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ServiceTypes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.service_types.<a href="/lib/bridge_api/service_types/client.rb">get_service_type</a>(id:) -> Bridge_api::ServiceTypes::Types::ServiceTypeGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.service_types.get_service_type(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::ServiceTypes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Services
<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">stream_service</a>(id:) -> Bridge_api::Services::Types::ServiceStreamV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.stream_service(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">list_services</a>() -> Bridge_api::Services::Types::ServicesListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.list_services
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter_service_type_id:** `String` — should be JSON-encoded, for example filter.serviceTypeId="svt_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_patient_id:** `String` — should be JSON-encoded, for example filter.patientId="pat_xxx"
    
</dd>
</dl>

<dl>
<dd>

**filter_status:** `Internal::Types::Array[Bridge_api::Services::Types::ServicesListV1FilterStatusElement]` — should be a JSON-encoded array, for example filter.status=["PENDING", "COMPLETE"]
    
</dd>
</dl>

<dl>
<dd>

**filter_provider_id:** `Internal::Types::Array[String]` — should be JSON-encoded array, for example filter.providerId=["prv_xxx", "prv_yyy"]
    
</dd>
</dl>

<dl>
<dd>

**order_created_at:** `Bridge_api::Services::Types::ServicesListV1OrderCreatedAt` 
    
</dd>
</dl>

<dl>
<dd>

**order_date_of_service:** `Bridge_api::Services::Types::ServicesListV1OrderDateOfService` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">create_service</a>(request) -> Bridge_api::Services::Types::ServiceCreateV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.create_service(
  patient_id: "patientId",
  date_of_service: "2024-01-15T09:30:00Z",
  service_type_id: "serviceTypeId",
  location: {
    state: "AL"
  },
  provider_id: "providerId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Services::Types::ServiceCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">get_service</a>(id:) -> Bridge_api::Services::Types::ServiceGetV1Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetch a Service by `id` or `externalId`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.get_service(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">revalidate_service</a>(id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.revalidate_service(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">bill_service</a>(id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.bill_service(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">get_service_note</a>(id:) -> Bridge_api::Services::Types::ServiceNoteGetV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.get_service_note(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/bridge_api/services/client.rb">delete_service_note</a>(id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.delete_service_note(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Services Payments
<details><summary><code>client.services.payments.<a href="/lib/bridge_api/services/payments/client.rb">list_service_payments</a>(id:) -> Bridge_api::Services::Payments::Types::ServicePaymentsListV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.payments.list_service_payments(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Services V2
<details><summary><code>client.services.v_2.<a href="/lib/bridge_api/services/v_2/client.rb">create_service</a>(request) -> Bridge_api::Services::V2::Types::ServiceCreateV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new `Service`, creates the `ServiceEligibility` in status `PENDING`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.v_2.create_service(
  patient_id: "patientId",
  date_of_service: "2024-01-15T09:30:00Z",
  service_type_id: "serviceTypeId",
  location: {
    state: "AL"
  },
  provider_id: "providerId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Bridge_api::Services::V2::Types::ServiceCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.v_2.<a href="/lib/bridge_api/services/v_2/client.rb">cancel_service</a>(id:, request) -> Bridge_api::Services::V2::Types::ServiceCancelV2Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.v_2.cancel_service(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Bridge_api::Services::V2::Types::ServiceCancelV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.v_2.<a href="/lib/bridge_api/services/v_2/client.rb">update_service</a>(id:, request) -> Bridge_api::Services::V2::Types::ServiceUpdateV2Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing `Service`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.v_2.update_service(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Bridge_api::Services::V2::Types::ServiceUpdateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Bridge_api::Services::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

