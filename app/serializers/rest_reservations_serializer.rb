class RestReservationsSerializer < ActiveModel::Serializer
  attributes :name, :myReservations

  def myReservations
    object.reservations.map do |myRes|
      {
        guest: myRes.user.last_name,
        date: myRes.date,
        time: myRes.time,
        number_of_seats: myRes.number_of_seats,
      }
    end
  end
end
