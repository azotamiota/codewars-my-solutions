def calculate_optimal_fare(d, t, v1, r, v2):
    time_by_walk = d / (v2 / 60) # time to reach the station by walk
    if time_by_walk <= t: # if you can make it, you go by walk and pay nothing
        return '0.00'
    else:
        time_by_taxi = d / (v1 / 60) # time to reach the station by taxi
        if time_by_taxi > t: # if you can't make it by taxi
            return "Won't make it!"
        elif time_by_taxi == t:
            return (d * r) # you will pay this
        else:
            one_meter_by_taxi_sec = 3600 / (v1 * 1000)
            for meter in range(1, d * 1000):
                time_to_departure_sec = (t * 60) - (one_meter_by_taxi_sec * meter)
                walk_takes_sec_to_station = ((d * 1000 - meter) * 3600) / (v2 * 1000)
                if walk_takes_sec_to_station <= time_to_departure_sec:
                    return "{:0.2f}".format(meter / 1000 * r) 
