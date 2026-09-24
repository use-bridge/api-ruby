# Reference
## Billing EstimateCharges
<details><summary><code>client.billing.estimate_charges.<a href="/lib/BridgeApi/billing/estimate_charges/client.rb">list_estimate_charges</a>() -> BridgeApi::Billing::EstimateCharges::Types::EstimateChargesListV1Response</code></summary>
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

**filter_status:** `BridgeApi::Billing::EstimateCharges::Types::EstimateChargesListV1FilterStatus` — should be JSON-encoded, for example filter.status="AUTHORIZED"
    
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

**request_options:** `BridgeApi::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/BridgeApi/billing/estimate_charges/client.rb">create_estimate_charge</a>(request) -> BridgeApi::Billing::EstimateCharges::Types::EstimateChargeCreateV1Response</code></summary>
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

**request:** `BridgeApi::Billing::EstimateCharges::Types::EstimateChargeCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/BridgeApi/billing/estimate_charges/client.rb">authorize_stripe_estimate_charge</a>(id:) -> BridgeApi::Billing::EstimateCharges::Types::EstimateChargeAuthorizeStripeV1Response</code></summary>
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

**request_options:** `BridgeApi::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/BridgeApi/billing/estimate_charges/client.rb">capture_stripe_estimate_charge</a>(id:) -> BridgeApi::Billing::EstimateCharges::Types::EstimateChargeCaptureStripeV1Response</code></summary>
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

**request_options:** `BridgeApi::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/BridgeApi/billing/estimate_charges/client.rb">refund_stripe_estimate_charge</a>(id:) -> BridgeApi::Billing::EstimateCharges::Types::EstimateChargeRefundStripeV1Response</code></summary>
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

**request_options:** `BridgeApi::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.estimate_charges.<a href="/lib/BridgeApi/billing/estimate_charges/client.rb">cancel_stripe_estimate_charge</a>(id:) -> BridgeApi::Billing::EstimateCharges::Types::EstimateChargeCancelStripeV1Response</code></summary>
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

**request_options:** `BridgeApi::Billing::EstimateCharges::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing Fees
<details><summary><code>client.billing.fees.<a href="/lib/BridgeApi/billing/fees/client.rb">list_fees</a>() -> BridgeApi::Billing::Fees::Types::FeesListV1Response</code></summary>
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

**filter_status:** `BridgeApi::Billing::Fees::Types::FeesListV1FilterStatus` — should be JSON-encoded, for example filter.status="PENDING"
    
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

**request_options:** `BridgeApi::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.fees.<a href="/lib/BridgeApi/billing/fees/client.rb">create_fee</a>(request) -> BridgeApi::Billing::Fees::Types::FeeCreateV1Response</code></summary>
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

**request:** `BridgeApi::Billing::Fees::Types::FeeCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.fees.<a href="/lib/BridgeApi/billing/fees/client.rb">capture_stripe_fee</a>(id:) -> BridgeApi::Billing::Fees::Types::FeeCaptureStripeV1Response</code></summary>
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

**request_options:** `BridgeApi::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.fees.<a href="/lib/BridgeApi/billing/fees/client.rb">refund_stripe_fee</a>(id:) -> BridgeApi::Billing::Fees::Types::FeeRefundStripeV1Response</code></summary>
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

**request_options:** `BridgeApi::Billing::Fees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing SetupIntent
<details><summary><code>client.billing.setup_intent.<a href="/lib/BridgeApi/billing/setup_intent/client.rb">create_stripe_setup_intent</a>(request) -> BridgeApi::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Response</code></summary>
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

**request:** `BridgeApi::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Billing::SetupIntent::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ConsentVersions
<details><summary><code>client.consent_versions.<a href="/lib/BridgeApi/consent_versions/client.rb">list_consent_versions</a>() -> BridgeApi::ConsentVersions::Types::ConsentVersionsListV1Response</code></summary>
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

**request_options:** `BridgeApi::ConsentVersions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Consent
<details><summary><code>client.consent.<a href="/lib/BridgeApi/consent/client.rb">list_patient_consents</a>(id:) -> BridgeApi::Consent::Types::PatientConsentsListV1Response</code></summary>
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

**request_options:** `BridgeApi::Consent::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consent.<a href="/lib/BridgeApi/consent/client.rb">create_patient_consent</a>(id:, request) -> BridgeApi::Consent::Types::PatientConsentCreateV1Response</code></summary>
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

**request:** `BridgeApi::Consent::Types::PatientConsentCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Consent::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Events
<details><summary><code>client.events.<a href="/lib/BridgeApi/events/client.rb">list_events</a>() -> BridgeApi::Events::Types::EventsListV1Response</code></summary>
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

**order_created_at:** `BridgeApi::Events::Types::EventsListV1OrderCreatedAt` 
    
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

**request_options:** `BridgeApi::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.events.<a href="/lib/BridgeApi/events/client.rb">get_event</a>(id:) -> BridgeApi::Events::Types::EventGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notes
<details><summary><code>client.notes.<a href="/lib/BridgeApi/notes/client.rb">create_note</a>(request) -> BridgeApi::Notes::Types::NoteCreateV1Response</code></summary>
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

**request:** `BridgeApi::Notes::Types::NoteCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notes.<a href="/lib/BridgeApi/notes/client.rb">get_note</a>(id:) -> BridgeApi::Notes::Types::NoteGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notes.<a href="/lib/BridgeApi/notes/client.rb">list_note_addenda</a>(id:) -> BridgeApi::Notes::Types::NoteAddendaListV1Response</code></summary>
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

**order_created_at:** `BridgeApi::Notes::Types::NoteAddendaListV1OrderCreatedAt` 
    
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

**request_options:** `BridgeApi::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notes.<a href="/lib/BridgeApi/notes/client.rb">create_note_addendum</a>(id:, request) -> BridgeApi::Notes::Types::NoteAddendumCreateV1Response</code></summary>
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

**request:** `BridgeApi::Notes::Types::NoteAddendumCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Notes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PatientToken
<details><summary><code>client.patient_token.<a href="/lib/BridgeApi/patient_token/client.rb">create_patient_token</a>(request) -> BridgeApi::PatientToken::Types::PatientTokenCreateV1Response</code></summary>
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

**request:** `BridgeApi::PatientToken::Types::PatientTokenCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::PatientToken::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Patients
<details><summary><code>client.patients.<a href="/lib/BridgeApi/patients/client.rb">stream_patient</a>(id:) -> BridgeApi::Patients::Types::PatientStreamV1Response</code></summary>
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

**request_options:** `BridgeApi::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.<a href="/lib/BridgeApi/patients/client.rb">list_patients</a>() -> BridgeApi::Patients::Types::PatientsListV1Response</code></summary>
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

**request_options:** `BridgeApi::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.<a href="/lib/BridgeApi/patients/client.rb">update_patient</a>(id:, request) -> BridgeApi::Patients::Types::PatientUpdateV1Response</code></summary>
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

**request:** `BridgeApi::Patients::Types::PatientUpdateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.<a href="/lib/BridgeApi/patients/client.rb">revalidate_patient</a>(id:) -> </code></summary>
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

**request_options:** `BridgeApi::Patients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Patients V2
<details><summary><code>client.patients.v_2.<a href="/lib/BridgeApi/patients/v_2/client.rb">create_patient</a>(request) -> BridgeApi::Patients::V2::Types::PatientCreateV2Response</code></summary>
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

**request:** `BridgeApi::Patients::V2::Types::PatientCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Patients::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.patients.v_2.<a href="/lib/BridgeApi/patients/v_2/client.rb">get_patient</a>(id:) -> BridgeApi::Patients::V2::Types::PatientGetV2Response</code></summary>
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

**request_options:** `BridgeApi::Patients::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PayerGroups
<details><summary><code>client.payer_groups.<a href="/lib/BridgeApi/payer_groups/client.rb">list_payer_groups</a>() -> BridgeApi::PayerGroups::Types::PayerGroupsListV1Response</code></summary>
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

**request_options:** `BridgeApi::PayerGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payer_groups.<a href="/lib/BridgeApi/payer_groups/client.rb">get_payer_group</a>(id:) -> BridgeApi::PayerGroups::Types::PayerGroupGetV1Response</code></summary>
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

**request_options:** `BridgeApi::PayerGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PayerGroups Health
<details><summary><code>client.payer_groups.health.<a href="/lib/BridgeApi/payer_groups/health/client.rb">list_health_events</a>(id:) -> BridgeApi::PayerGroups::Health::Types::HealthEventsListV1Response</code></summary>
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

**order_event_at:** `BridgeApi::PayerGroups::Health::Types::HealthEventsListV1OrderEventAt` 
    
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

**request_options:** `BridgeApi::PayerGroups::Health::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payers
<details><summary><code>client.payers.<a href="/lib/BridgeApi/payers/client.rb">get_payer</a>(id:) -> BridgeApi::Payers::Types::PayerGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Payers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payments
<details><summary><code>client.payments.<a href="/lib/BridgeApi/payments/client.rb">list_payments</a>() -> BridgeApi::Payments::Types::PaymentsListV1Response</code></summary>
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

**filter_type:** `BridgeApi::Payments::Types::PaymentsListV1FilterType` — Values should be JSON-encoded, for example filter.type="PATIENT"
    
</dd>
</dl>

<dl>
<dd>

**order_paid_at:** `BridgeApi::Payments::Types::PaymentsListV1OrderPaidAt` 
    
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

**request_options:** `BridgeApi::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/BridgeApi/payments/client.rb">create_payment</a>(request) -> BridgeApi::Payments::Types::PaymentCreateV1Response</code></summary>
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

**request:** `BridgeApi::Payments::Types::PaymentCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/BridgeApi/payments/client.rb">get_payment</a>(id:) -> BridgeApi::Payments::Types::PaymentGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Policies
<details><summary><code>client.policies.<a href="/lib/BridgeApi/policies/client.rb">get_policy</a>(id:) -> BridgeApi::Policies::Types::PolicyGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.policies.<a href="/lib/BridgeApi/policies/client.rb">revalidate_policy</a>(id:) -> </code></summary>
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

**request_options:** `BridgeApi::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.policies.<a href="/lib/BridgeApi/policies/client.rb">stream_policy</a>(id:) -> BridgeApi::Policies::Types::PolicyStreamV1Response</code></summary>
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

**request_options:** `BridgeApi::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Policies V2
<details><summary><code>client.policies.v_2.<a href="/lib/BridgeApi/policies/v_2/client.rb">create_policy</a>(request) -> BridgeApi::Policies::V2::Types::PolicyCreateV2Response</code></summary>
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

**request:** `BridgeApi::Policies::V2::Types::PolicyCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Policies::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ProviderEligibility
<details><summary><code>client.provider_eligibility.<a href="/lib/BridgeApi/provider_eligibility/client.rb">create_provider_eligibility</a>(request) -> BridgeApi::ProviderEligibility::Types::ProviderEligibilityCreateV1Response</code></summary>
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

**request:** `BridgeApi::ProviderEligibility::Types::ProviderEligibilityCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::ProviderEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.provider_eligibility.<a href="/lib/BridgeApi/provider_eligibility/client.rb">get_provider_eligibility</a>(id:) -> BridgeApi::ProviderEligibility::Types::ProviderEligibilityGetV1Response</code></summary>
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

**request_options:** `BridgeApi::ProviderEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Providers
<details><summary><code>client.providers.<a href="/lib/BridgeApi/providers/client.rb">submit_providers</a>(request) -> BridgeApi::Providers::Types::ProviderPostV1Response</code></summary>
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

**request:** `BridgeApi::Providers::Types::ProviderPostV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.providers.<a href="/lib/BridgeApi/providers/client.rb">list_providers</a>() -> BridgeApi::Providers::Types::ProvidersListV1Response</code></summary>
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

**request_options:** `BridgeApi::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.providers.<a href="/lib/BridgeApi/providers/client.rb">get_provider</a>(id:) -> BridgeApi::Providers::Types::ProviderGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.providers.<a href="/lib/BridgeApi/providers/client.rb">update_provider</a>(id:, request) -> BridgeApi::Providers::Types::ProviderUpdateV1Response</code></summary>
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

**request:** `BridgeApi::Providers::Types::ProviderUpdateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Providers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Providers Enrollment
<details><summary><code>client.providers.enrollment.<a href="/lib/BridgeApi/providers/enrollment/client.rb">get_provider_enrollment_status</a>(id:) -> BridgeApi::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Providers::Enrollment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Search
<details><summary><code>client.search.<a href="/lib/BridgeApi/search/client.rb">payer_search</a>(request) -> BridgeApi::Search::Types::SearchPayerV1Response</code></summary>
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

**request:** `BridgeApi::Search::Types::SearchPayerV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Search::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ServiceEligibility
<details><summary><code>client.service_eligibility.<a href="/lib/BridgeApi/service_eligibility/client.rb">stream_service_eligibility</a>(id:) -> BridgeApi::ServiceEligibility::Types::ServiceEligibilityStreamV1Response</code></summary>
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

**request_options:** `BridgeApi::ServiceEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.service_eligibility.<a href="/lib/BridgeApi/service_eligibility/client.rb">get_service_eligibility</a>(id:) -> BridgeApi::ServiceEligibility::Types::ServiceEligibilityGetV1Response</code></summary>
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

**request_options:** `BridgeApi::ServiceEligibility::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ServiceEligibility V2
<details><summary><code>client.service_eligibility.v_2.<a href="/lib/BridgeApi/service_eligibility/v_2/client.rb">create_service_eligibility</a>(request) -> BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Response</code></summary>
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

**request:** `BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::ServiceEligibility::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ServiceTypes
<details><summary><code>client.service_types.<a href="/lib/BridgeApi/service_types/client.rb">list_service_types</a>() -> BridgeApi::ServiceTypes::Types::ServiceTypesListV1Response</code></summary>
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

**request_options:** `BridgeApi::ServiceTypes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.service_types.<a href="/lib/BridgeApi/service_types/client.rb">get_service_type</a>(id:) -> BridgeApi::ServiceTypes::Types::ServiceTypeGetV1Response</code></summary>
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

**request_options:** `BridgeApi::ServiceTypes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Services
<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">stream_service</a>(id:) -> BridgeApi::Services::Types::ServiceStreamV1Response</code></summary>
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

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">list_services</a>() -> BridgeApi::Services::Types::ServicesListV1Response</code></summary>
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

**filter_status:** `Internal::Types::Array[BridgeApi::Services::Types::ServicesListV1FilterStatusElement]` — should be a JSON-encoded array, for example filter.status=["PENDING", "COMPLETE"]
    
</dd>
</dl>

<dl>
<dd>

**filter_provider_id:** `Internal::Types::Array[String]` — should be JSON-encoded array, for example filter.providerId=["prv_xxx", "prv_yyy"]
    
</dd>
</dl>

<dl>
<dd>

**order_created_at:** `BridgeApi::Services::Types::ServicesListV1OrderCreatedAt` 
    
</dd>
</dl>

<dl>
<dd>

**order_date_of_service:** `BridgeApi::Services::Types::ServicesListV1OrderDateOfService` 
    
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

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">create_service</a>(request) -> BridgeApi::Services::Types::ServiceCreateV1Response</code></summary>
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

**request:** `BridgeApi::Services::Types::ServiceCreateV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">get_service</a>(id:) -> BridgeApi::Services::Types::ServiceGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">revalidate_service</a>(id:) -> </code></summary>
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

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">bill_service</a>(id:) -> </code></summary>
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

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">set_ready_service</a>(id:, type:, request) -> BridgeApi::Services::Types::ServiceSetReadyV1Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.services.set_ready_service(
  id: "id",
  type: "PATIENT_CONSENT",
  ready: true
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

**type:** `BridgeApi::Services::Types::ServiceSetReadyV1ParametersType` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `BridgeApi::Services::Types::ServiceSetReadyV1Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">get_service_note</a>(id:) -> BridgeApi::Services::Types::ServiceNoteGetV1Response</code></summary>
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

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.<a href="/lib/BridgeApi/services/client.rb">delete_service_note</a>(id:) -> </code></summary>
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

**request_options:** `BridgeApi::Services::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Services Payments
<details><summary><code>client.services.payments.<a href="/lib/BridgeApi/services/payments/client.rb">list_service_payments</a>(id:) -> BridgeApi::Services::Payments::Types::ServicePaymentsListV1Response</code></summary>
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

**request_options:** `BridgeApi::Services::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Services V2
<details><summary><code>client.services.v_2.<a href="/lib/BridgeApi/services/v_2/client.rb">create_service</a>(request) -> BridgeApi::Services::V2::Types::ServiceCreateV2Response</code></summary>
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

**request:** `BridgeApi::Services::V2::Types::ServiceCreateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Services::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.v_2.<a href="/lib/BridgeApi/services/v_2/client.rb">cancel_service</a>(id:, request) -> BridgeApi::Services::V2::Types::ServiceCancelV2Response</code></summary>
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

**request:** `BridgeApi::Services::V2::Types::ServiceCancelV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Services::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.services.v_2.<a href="/lib/BridgeApi/services/v_2/client.rb">update_service</a>(id:, request) -> BridgeApi::Services::V2::Types::ServiceUpdateV2Response</code></summary>
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

**request:** `BridgeApi::Services::V2::Types::ServiceUpdateV2Request` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `BridgeApi::Services::V2::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

