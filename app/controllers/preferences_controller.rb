class PreferencesController < ApplicationController
    
    def update
        preference = current_user.preference
        preference.update(preference_params)
        render json: PreferenceSerializer.new(preference)
    end

    private

    def find_preference
        Preference.find(params[:id])
    end

    def preference_params
        params.permit(:cancellation_deadline, :permit_cancellations, :permit_event_registration, :event_registration_deadline, :permit_make_up_credits, :issue_make_up_credit_before_deadline, :expire_make_up_credits, :max_credit_age, :limit_total_make_up_credits, :max_total_make_up_credits, :cancellation_policy_summary, :default_event_visibility, :default_lesson_price, :default_lesson_duration, :initial_view, :slot_min_time, :slot_max_time, :weekends, :location, :students_can_edit_profile)
    end
end
