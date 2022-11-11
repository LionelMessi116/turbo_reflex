# frozen_string_literal: true

class DemosReflex < TurboReflex::Base
  prevent_controller_action

  def toggle
    state.now[:active_demo] = element.aria.visible? ? nil : element.aria.controls
    morph "##{demo_id}-demos", render("demos/#{demo_id}/demos")
  end

  private

  def demo_id
    controller.params[:id]
  end
end
