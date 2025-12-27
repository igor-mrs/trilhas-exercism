func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let monthlyRate = dailyRate * 22.0
  let discountMultiplier = (100.0 - discount) / 100.0
  return (monthlyRate * discountMultiplier).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let discountMultiplier = (100.0 - discount) / 100.0
  let discountedDailyRate = dailyRate * discountMultiplier
  
  return (budget / discountedDailyRate).rounded(.down)
}
