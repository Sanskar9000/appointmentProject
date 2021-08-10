# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
-----------------------------------------
terminal devise routes 
Some setup you must do manually if you haven't yet:

  Ensure you have overridden routes for generated controllers in your routes.rb.
  For example:

    Rails.application.routes.draw do
      devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
    end
---------------------------------------

index.html.erb << appointment
        <td><%= link_to 'Show', appointment %></td>
        <td><%= link_to 'Edit', edit_appointment_path(appointment) %></td>
        <td><%= link_to 'Destroy', appointment, method: :delete, data: { confirm: 'Are you sure?' } %></td>

----------------------------------------

update method << appointment
        format.html { redirect_to @appointment, notice: "Appointment was successfully Confirmed." }
        format.json { render :show, status: :ok, location: @appointment }