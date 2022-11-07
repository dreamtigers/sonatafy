class DepreciateCarsJob
  include Sidekiq::Job

  def perform(*args)
    Car.update_all("price = price*0.98")
  end
end
